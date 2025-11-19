@interface GroupAnimation
+ (id)animation;
+ (id)animationForAnimatedFlag:(BOOL)a3;
+ (id)animationForImplicitAnimationState;
- (BOOL)isEmpty;
- (GroupAnimation)init;
- (id)addCompletionWaitBlockWithReason:(id)a3;
- (void)_childAnimationsDidComplete;
- (void)_enterCompletionWaitDispatchGroupWithReason:(id)a3;
- (void)_leaveCompletionWaitDispatchGroupWithReason:(id)a3;
- (void)addChildAnimation:(id)a3;
- (void)addPreparation:(id)a3 animations:(id)a4 completion:(id)a5;
- (void)animate;
- (void)complete:(BOOL)a3;
- (void)dealloc;
- (void)prepare;
- (void)runInCurrentContext;
- (void)runWithCurrentOptions;
- (void)runWithDefaultOptions;
- (void)runWithDelay:(double)a3 initialVelocity:(double)a4 options:(unint64_t)a5;
- (void)runWithDuration:(double)a3 delay:(double)a4 options:(unint64_t)a5;
- (void)runWithDuration:(double)a3 delay:(double)a4 springDamping:(double)a5 initialVelocity:(double)a6 options:(unint64_t)a7;
- (void)runWithoutAnimation;
@end

@implementation GroupAnimation

- (GroupAnimation)init
{
  v6.receiver = self;
  v6.super_class = GroupAnimation;
  v2 = [(GroupAnimation *)&v6 init];
  if (v2)
  {
    v3 = sub_100019CDC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    [objc_opt_class() defaultAnimationDuration];
    v2->_duration = v4;
    v2->_animated = 1;
  }

  return v2;
}

- (void)animate
{
  if (![(GroupAnimation *)self _hasPrepared]|| self->_didAnimate)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [NSString stringWithFormat:@"cannot call -animate if -prepare or -animate was already called"];
      *buf = 136316162;
      v21 = "[GroupAnimation animate]";
      v22 = 2080;
      v23 = "GroupAnimation.m";
      v24 = 1024;
      v25 = 227;
      v26 = 2080;
      v27 = "[self _hasPrepared] && !_didAnimate";
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v3 = sub_100019CDC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v21 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] animating", buf, 0xCu);
  }

  while (1)
  {

    if (![(NSMutableArray *)self->_animations count])
    {
      break;
    }

    v4 = [(NSMutableArray *)self->_animations copy];
    animations = self->_animations;
    self->_animations = 0;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v4;
    v6 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v15 + 1) + 8 * v9) + 16))();
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v10 = self->_animations;
  self->_animations = 0;

  self->_didAnimate = 1;
}

- (void)runWithCurrentOptions
{
  [(GroupAnimation *)self springDamping];
  if (v3 <= 0.0)
  {
    [(GroupAnimation *)self initialVelocity];
    if (v9 <= 0.0)
    {
      [(GroupAnimation *)self duration];
      v16 = v15;
      [(GroupAnimation *)self delay];
      v18 = v17;
      v19 = [(GroupAnimation *)self options];

      [(GroupAnimation *)self runWithDuration:v19 delay:v16 options:v18];
    }

    else
    {
      [(GroupAnimation *)self delay];
      v11 = v10;
      [(GroupAnimation *)self initialVelocity];
      v13 = v12;
      v14 = [(GroupAnimation *)self options];

      [(GroupAnimation *)self runWithDelay:v14 initialVelocity:v11 options:v13];
    }
  }

  else
  {
    [(GroupAnimation *)self duration];
    v5 = v4;
    [(GroupAnimation *)self delay];
    v7 = v6;
    [(GroupAnimation *)self springDamping];
    [(GroupAnimation *)self initialVelocity];
    v8 = [(GroupAnimation *)self options];

    [GroupAnimation runWithDuration:"runWithDuration:delay:springDamping:initialVelocity:options:" delay:v8 springDamping:v5 initialVelocity:v7 options:?];
  }
}

- (void)prepare
{
  if (self->_didPrepare || self->_didAnimate || self->_didComplete)
  {
    v20 = sub_10006D178();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [NSString stringWithFormat:@"cannot call -prepare if any phase already ran"];
      *buf = 136316162;
      *&buf[4] = "[GroupAnimation prepare]";
      *&buf[12] = 2080;
      *&buf[14] = "GroupAnimation.m";
      *&buf[22] = 1024;
      LODWORD(v26) = 191;
      WORD2(v26) = 2080;
      *(&v26 + 6) = "!_didPrepare && !_didAnimate && !_didComplete";
      HIWORD(v26) = 2112;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v3 = sub_100019CDC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] preparing", buf, 0xCu);
  }

  if (!self->_waitBlock && !self->_initiatingWaitBlock)
  {
    self->_initiatingWaitBlock = 1;
    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(GroupAnimation *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_13;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_13:

    v10 = [NSString stringWithFormat:@"%@: blocking on our own complete method call", v9];
    v11 = [(GroupAnimation *)v4 addCompletionWaitBlockWithReason:v10];
    v12 = [v11 copy];
    waitBlock = self->_waitBlock;
    self->_waitBlock = v12;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v26 = sub_100E38E6C;
  *(&v26 + 1) = sub_100E38E7C;
  v27 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10002B830;
  v24[3] = &unk_1016608A8;
  v24[4] = buf;
  v14 = objc_retainBlock(v24);
  while (1)
  {
    v15 = [(NSMutableArray *)self->_preparations count];
    preparations = self->_preparations;
    if (!v15)
    {
      break;
    }

    v17 = [(NSMutableArray *)preparations copy];
    v18 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v17;

    v19 = self->_preparations;
    self->_preparations = 0;

    if ([(GroupAnimation *)self preventsAnimationDuringPreparation])
    {
      [UIView performWithoutAnimation:v14];
    }

    else
    {
      (v14[2])(v14);
    }
  }

  self->_preparations = 0;

  self->_didPrepare = 1;
  _Block_object_dispose(buf, 8);
}

- (void)runWithoutAnimation
{
  v3 = sub_100019CDC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v6 = self;
    v7 = 2080;
    v8 = "[GroupAnimation runWithoutAnimation]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] %s", buf, 0x16u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002B7E8;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [UIView performWithoutAnimation:v4];
}

- (void)_childAnimationsDidComplete
{
  v3 = sub_100019CDC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134349314;
    v6 = self;
    v7 = 2080;
    v8 = "[GroupAnimation _childAnimationsDidComplete]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v5, 0x16u);
  }

  if (self->_readyToComplete)
  {
    [(GroupAnimation *)self complete:1];
  }

  else
  {
    v4 = sub_100019CDC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 134349056;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Not ready to complete yet", &v5, 0xCu);
    }
  }
}

- (void)dealloc
{
  v3 = sub_100019CDC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  waitBlock = self->_waitBlock;
  if (waitBlock)
  {
    v5 = objc_retainBlock(waitBlock);
    v6 = self->_waitBlock;
    self->_waitBlock = 0;

    self->_initiatingWaitBlock = 0;
    v5[2](v5, 0);
  }

  v7.receiver = self;
  v7.super_class = GroupAnimation;
  [(GroupAnimation *)&v7 dealloc];
}

- (void)runInCurrentContext
{
  v3 = sub_100019CDC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134349314;
    v5 = self;
    v6 = 2080;
    v7 = "[GroupAnimation runInCurrentContext]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v4, 0x16u);
  }

  [(GroupAnimation *)self prepare];
  [(GroupAnimation *)self animate];
  [(GroupAnimation *)self complete:1];
}

+ (id)animation
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (BOOL)isEmpty
{
  if (self->_preparations)
  {
    return 0;
  }

  if ([(NSMutableArray *)self->_animations count])
  {
    return 0;
  }

  return [(NSMutableArray *)self->_completions count]== 0;
}

- (void)runWithDuration:(double)a3 delay:(double)a4 springDamping:(double)a5 initialVelocity:(double)a6 options:(unint64_t)a7
{
  if ([(GroupAnimation *)self isAnimated])
  {
    v13 = sub_100019CDC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134350336;
      v17 = self;
      v18 = 2048;
      v19 = a3;
      v20 = 2048;
      v21 = a4;
      v22 = 2048;
      v23 = a5;
      v24 = 2048;
      v25 = a6;
      v26 = 2048;
      v27 = a7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] runWithDuration:%#.1lfs delay:%#.1lfs springDamping:%lf initialVelocity:%lf options:%lu", buf, 0x3Eu);
    }

    [(GroupAnimation *)self prepare];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100E38494;
    v15[3] = &unk_101661B18;
    v15[4] = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100E3849C;
    v14[3] = &unk_101661738;
    v14[4] = self;
    [UIView animateWithDuration:a7 delay:v15 usingSpringWithDamping:v14 initialSpringVelocity:a3 options:a4 animations:a5 completion:a6];
  }

  else
  {

    [(GroupAnimation *)self runWithoutAnimation];
  }
}

- (void)runWithDelay:(double)a3 initialVelocity:(double)a4 options:(unint64_t)a5
{
  if ([(GroupAnimation *)self isAnimated])
  {
    v9 = sub_100019CDC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134349824;
      v13 = self;
      v14 = 2048;
      v15 = a3;
      v16 = 2048;
      v17 = a4;
      v18 = 2048;
      v19 = a5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] runWithDelay:%#.1lf initialVelocity:%lf options:%lu", buf, 0x2Au);
    }

    [(GroupAnimation *)self prepare];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100E38680;
    v11[3] = &unk_101661B18;
    v11[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100E38688;
    v10[3] = &unk_101661738;
    v10[4] = self;
    [UIView _animateUsingDefaultDampedSpringWithDelay:a5 initialSpringVelocity:v11 options:v10 animations:a3 completion:a4];
  }

  else
  {

    [(GroupAnimation *)self runWithoutAnimation];
  }
}

- (void)runWithDuration:(double)a3 delay:(double)a4 options:(unint64_t)a5
{
  if ([(GroupAnimation *)self isAnimated])
  {
    v9 = sub_100019CDC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134349824;
      v13 = self;
      v14 = 2048;
      v15 = a3;
      v16 = 2048;
      v17 = a4;
      v18 = 2048;
      v19 = a5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] runWithDuration:%#.1lf delay:%#.1lfs options:%lu", buf, 0x2Au);
    }

    [(GroupAnimation *)self prepare];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100E3886C;
    v11[3] = &unk_101661B18;
    v11[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100E38874;
    v10[3] = &unk_101661738;
    v10[4] = self;
    [UIView animateWithDuration:a5 delay:v11 options:v10 animations:a3 completion:a4];
  }

  else
  {

    [(GroupAnimation *)self runWithoutAnimation];
  }
}

- (void)runWithDefaultOptions
{
  [objc_opt_class() defaultAnimationDuration];

  [GroupAnimation runWithDuration:"runWithDuration:delay:options:" delay:0 options:?];
}

- (void)complete:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if (![(GroupAnimation *)self _hasPrepared]|| !v4->_didAnimate || v4->_didComplete)
  {
    v26 = sub_10006D178();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [NSString stringWithFormat:@"cannot call -complete: if no other phase already ran"];
      *buf = 136316162;
      v36 = "[GroupAnimation complete:]";
      v37 = 2080;
      v38 = "GroupAnimation.m";
      v39 = 1024;
      v40 = 254;
      v41 = 2080;
      v42 = "[self _hasPrepared] && _didAnimate && !_didComplete";
      v43 = 2112;
      v44 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v28 = sub_10006D178();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v36 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v5 = sub_100019CDC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349570;
    v36 = v4;
    v37 = 2080;
    v38 = "[GroupAnimation complete:]";
    v39 = 1024;
    v40 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] %s:%d", buf, 0x1Cu);
  }

  v4->_readyToComplete = 1;
  if (v4->_waitBlock)
  {
    v6 = sub_100019CDC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v36 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] waiting for _waitBlock", buf, 0xCu);
    }

    v7 = objc_retainBlock(v4->_waitBlock);
    waitBlock = v4->_waitBlock;
    v4->_waitBlock = 0;

    v4->_initiatingWaitBlock = 0;
    (*(v7 + 16))(v7, v3);
LABEL_10:

    return;
  }

  childAnimationCompletionGroup = v4->_childAnimationCompletionGroup;
  v7 = sub_100019CDC();
  v10 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (childAnimationCompletionGroup)
  {
    if (v10)
    {
      *buf = 134349056;
      v36 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] ready to complete, but waiting on child animations", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (v10)
  {
    *buf = 134349312;
    v36 = v4;
    v37 = 1024;
    LODWORD(v38) = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] complete:%d", buf, 0x12u);
  }

  if ([(NSMutableArray *)v4->_completions count])
  {
    do
    {
      v11 = sub_100019CDC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(NSMutableArray *)v4->_completions count];
        *buf = 134349312;
        v36 = v4;
        v37 = 2048;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] will execute %lu completions", buf, 0x16u);
      }

      v13 = [(NSMutableArray *)v4->_completions copy];
      completions = v4->_completions;
      v15 = v4;
      v4->_completions = 0;

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = v13;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v30 + 1) + 8 * i);
            v22 = sub_100019CDC();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v23 = objc_retainBlock(v21);
              *buf = 134349314;
              v36 = v15;
              v37 = 2112;
              v38 = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%{public}p] executing completion block: %@", buf, 0x16u);
            }

            v21[2](v21, v3);
          }

          v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v18);
      }

      v4 = v15;
    }

    while ([(NSMutableArray *)v15->_completions count]);
  }

  v24 = sub_100019CDC();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v36 = v4;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%{public}p] executed all completion blocks", buf, 0xCu);
  }

  v25 = v4->_completions;
  v4->_completions = 0;

  v4->_didComplete = 1;
}

- (void)_leaveCompletionWaitDispatchGroupWithReason:(id)a3
{
  v4 = a3;
  if (self->_childAnimationCompletionGroup)
  {
    goto LABEL_2;
  }

  v6 = sub_10006D178();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [NSString stringWithFormat:@"[%p] cannot leave childAnimationCompletionGroup, never entered", self];
    *buf = 136316162;
    v11 = "[GroupAnimation _leaveCompletionWaitDispatchGroupWithReason:]";
    v12 = 2080;
    v13 = "GroupAnimation.m";
    v14 = 1024;
    v15 = 170;
    v16 = 2080;
    v17 = "_childAnimationCompletionGroup != nil";
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
  }

  if (sub_100E03634())
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  if (self->_childAnimationCompletionGroup)
  {
LABEL_2:
    v5 = sub_100019CDC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v11 = self;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] leaving completion wait group for reason: %@", buf, 0x16u);
    }

    dispatch_group_leave(self->_childAnimationCompletionGroup);
  }
}

- (void)_enterCompletionWaitDispatchGroupWithReason:(id)a3
{
  v4 = a3;
  v5 = sub_100019CDC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v23 = self;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] entering completion wait group for reason: %@", buf, 0x16u);
  }

  childAnimationCompletionGroup = self->_childAnimationCompletionGroup;
  if (childAnimationCompletionGroup)
  {
    dispatch_group_enter(childAnimationCompletionGroup);
    goto LABEL_14;
  }

  v7 = sub_100019CDC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v23 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] creating child completion animation group", buf, 0xCu);
  }

  v8 = dispatch_group_create();
  v9 = self->_childAnimationCompletionGroup;
  self->_childAnimationCompletionGroup = v8;

  dispatch_group_enter(self->_childAnimationCompletionGroup);
  v10 = self->_childAnimationCompletionGroup;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E39344;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_group_notify(v10, &_dispatch_main_q, block);
  if (!self->_initiatingWaitBlock)
  {
    self->_initiatingWaitBlock = 1;
    v11 = self;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(GroupAnimation *)v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_13;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_13:

    v17 = [NSString stringWithFormat:@"%@: blocking on our own complete method call", v16];
    v18 = [(GroupAnimation *)v11 addCompletionWaitBlockWithReason:v17];
    v19 = [v18 copy];
    waitBlock = v11->_waitBlock;
    v11->_waitBlock = v19;
  }

LABEL_14:
}

- (id)addCompletionWaitBlockWithReason:(id)a3
{
  v4 = a3;
  [(GroupAnimation *)self _enterCompletionWaitDispatchGroupWithReason:v4];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100E394F8;
  v9[3] = &unk_10165FC50;
  objc_copyWeak(&v11, &location);
  v10 = v4;
  v5 = v4;
  v6 = objc_retainBlock(v9);
  v7 = objc_retainBlock(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (void)addChildAnimation:(id)a3
{
  v4 = a3;
  v5 = sub_100019CDC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349570;
    v15 = self;
    v16 = 2080;
    v17 = "[GroupAnimation addChildAnimation:]";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] %s:%@", buf, 0x20u);
  }

  if (v4)
  {
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_9;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

    v12 = [NSString stringWithFormat:@"waiting for child animation %@", v11];
    v13 = [(GroupAnimation *)self addCompletionWaitBlockWithReason:v12];
    [v6 addCompletion:v13];
  }
}

- (void)addPreparation:(id)a3 animations:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100019CDC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v36 = 134349314;
    v37 = self;
    v38 = 2080;
    v39 = "[GroupAnimation addPreparation:animations:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v36, 0x16u);
  }

  if (v8)
  {
    if (self->_didPrepare)
    {
      v24 = sub_10006D178();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [NSString stringWithFormat:@"cannot add preparations, already prepared"];
        v36 = 136316162;
        v37 = "[GroupAnimation addPreparation:animations:completion:]";
        v38 = 2080;
        v39 = "GroupAnimation.m";
        v40 = 1024;
        v41 = 101;
        v42 = 2080;
        v43 = "!preparations || !_didPrepare";
        v44 = 2112;
        v45 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v36, 0x30u);
      }

      if (sub_100E03634())
      {
        v26 = sub_10006D178();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = +[NSThread callStackSymbols];
          v36 = 138412290;
          v37 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
        }
      }
    }

    if (!self->_didPrepare)
    {
      preparations = self->_preparations;
      if (!preparations)
      {
        v13 = objc_alloc_init(NSMutableArray);
        v14 = self->_preparations;
        self->_preparations = v13;

        preparations = self->_preparations;
      }

      v15 = [v8 copy];
      [(NSMutableArray *)preparations addObject:v15];
    }
  }

  if (v9)
  {
    if (self->_didAnimate)
    {
      v28 = sub_10006D178();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = [NSString stringWithFormat:@"cannot add animations, already animated"];
        v36 = 136316162;
        v37 = "[GroupAnimation addPreparation:animations:completion:]";
        v38 = 2080;
        v39 = "GroupAnimation.m";
        v40 = 1024;
        v41 = 108;
        v42 = 2080;
        v43 = "!animations || !_didAnimate";
        v44 = 2112;
        v45 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v36, 0x30u);
      }

      if (sub_100E03634())
      {
        v30 = sub_10006D178();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = +[NSThread callStackSymbols];
          v36 = 138412290;
          v37 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
        }
      }
    }

    animations = self->_animations;
    if (!animations)
    {
      v17 = objc_alloc_init(NSMutableArray);
      v18 = self->_animations;
      self->_animations = v17;

      animations = self->_animations;
    }

    v19 = [v9 copy];
    [(NSMutableArray *)animations addObject:v19];
  }

  if (v10)
  {
    if (self->_didComplete)
    {
      v32 = sub_10006D178();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [NSString stringWithFormat:@"cannot add completions, already completed"];
        v36 = 136316162;
        v37 = "[GroupAnimation addPreparation:animations:completion:]";
        v38 = 2080;
        v39 = "GroupAnimation.m";
        v40 = 1024;
        v41 = 115;
        v42 = 2080;
        v43 = "!completion || !_didComplete";
        v44 = 2112;
        v45 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v36, 0x30u);
      }

      if (sub_100E03634())
      {
        v34 = sub_10006D178();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = +[NSThread callStackSymbols];
          v36 = 138412290;
          v37 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
        }
      }
    }

    completions = self->_completions;
    if (!completions)
    {
      v21 = objc_alloc_init(NSMutableArray);
      v22 = self->_completions;
      self->_completions = v21;

      completions = self->_completions;
    }

    v23 = [v10 copy];
    [(NSMutableArray *)completions addObject:v23];
  }
}

+ (id)animationForImplicitAnimationState
{
  v2 = [a1 animationForAnimatedFlag:{+[UIView _maps_shouldAdoptImplicitAnimationParameters](UIView, "_maps_shouldAdoptImplicitAnimationParameters")}];
  [v2 setPreventsAnimationDuringPreparation:1];

  return v2;
}

+ (id)animationForAnimatedFlag:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(a1);
  [v4 setAnimated:v3];

  return v4;
}

@end