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

+ (id)animation
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (GroupAnimation)init
{
  v6.receiver = self;
  v6.super_class = GroupAnimation;
  v2 = [(GroupAnimation *)&v6 init];
  if (v2)
  {
    v3 = sub_2DD54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v8 = v2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    [objc_opt_class() defaultAnimationDuration];
    v2->_duration = v4;
    v2->_animated = 1;
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_2DD54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v9 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
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

- (void)addPreparation:(id)a3 animations:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_2DD54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v24 = 134349314;
    v25 = self;
    v26 = 2080;
    v27 = "[GroupAnimation addPreparation:animations:completion:]";
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v24, 0x16u);
  }

  if (v8)
  {
    if (self->_didPrepare)
    {
      sub_3B69C();
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
      sub_3B7CC();
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
      sub_3B8FC();
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

- (void)addChildAnimation:(id)a3
{
  v4 = a3;
  v5 = sub_2DD54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349570;
    v15 = self;
    v16 = 2080;
    v17 = "[GroupAnimation addChildAnimation:]";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%{public}p] %s:%@", buf, 0x20u);
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

- (id)addCompletionWaitBlockWithReason:(id)a3
{
  v4 = a3;
  [(GroupAnimation *)self _enterCompletionWaitDispatchGroupWithReason:v4];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2E418;
  v9[3] = &unk_80160;
  objc_copyWeak(&v11, &location);
  v10 = v4;
  v5 = v4;
  v6 = objc_retainBlock(v9);
  v7 = objc_retainBlock(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (void)_enterCompletionWaitDispatchGroupWithReason:(id)a3
{
  v4 = a3;
  v5 = sub_2DD54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v23 = self;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%{public}p] entering completion wait group for reason: %@", buf, 0x16u);
  }

  childAnimationCompletionGroup = self->_childAnimationCompletionGroup;
  if (childAnimationCompletionGroup)
  {
    dispatch_group_enter(childAnimationCompletionGroup);
    goto LABEL_14;
  }

  v7 = sub_2DD54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v23 = self;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "[%{public}p] creating child completion animation group", buf, 0xCu);
  }

  v8 = dispatch_group_create();
  v9 = self->_childAnimationCompletionGroup;
  self->_childAnimationCompletionGroup = v8;

  dispatch_group_enter(self->_childAnimationCompletionGroup);
  v10 = self->_childAnimationCompletionGroup;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2E71C;
  block[3] = &unk_69228;
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

- (void)_leaveCompletionWaitDispatchGroupWithReason:(id)a3
{
  v4 = a3;
  if (self->_childAnimationCompletionGroup || !sub_3BA2C(self, &self->_childAnimationCompletionGroup))
  {
    v5 = sub_2DD54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134349314;
      v7 = self;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%{public}p] leaving completion wait group for reason: %@", &v6, 0x16u);
    }

    dispatch_group_leave(self->_childAnimationCompletionGroup);
  }
}

- (void)prepare
{
  if (self->_didPrepare || self->_didAnimate || self->_didComplete)
  {
    sub_3BBC4();
  }

  v3 = sub_2DD54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}p] preparing", &buf, 0xCu);
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

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = sub_2EC5C;
  v24 = sub_2EC6C;
  v25 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_2EC74;
  v20[3] = &unk_80188;
  v20[4] = &buf;
  v14 = objc_retainBlock(v20);
  while (1)
  {
    v15 = [(NSMutableArray *)self->_preparations count];
    preparations = self->_preparations;
    if (!v15)
    {
      break;
    }

    v17 = [(NSMutableArray *)preparations copy];
    v18 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v17;

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
  _Block_object_dispose(&buf, 8);
}

- (void)animate
{
  if (![(GroupAnimation *)self _hasPrepared]|| self->_didAnimate)
  {
    sub_3BCF8();
  }

  v3 = sub_2DD54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v17 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}p] animating", buf, 0xCu);
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

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v4;
    v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v11 + 1) + 8 * v9) + 16))();
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = self->_animations;
  self->_animations = 0;

  self->_didAnimate = 1;
}

- (void)_childAnimationsDidComplete
{
  v3 = sub_2DD54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134349314;
    v6 = self;
    v7 = 2080;
    v8 = "[GroupAnimation _childAnimationsDidComplete]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v5, 0x16u);
  }

  if (self->_readyToComplete)
  {
    [(GroupAnimation *)self complete:1];
  }

  else
  {
    v4 = sub_2DD54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 134349056;
      v6 = self;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Not ready to complete yet", &v5, 0xCu);
    }
  }
}

- (void)complete:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if (![(GroupAnimation *)self _hasPrepared]|| !v4->_didAnimate || v4->_didComplete)
  {
    sub_3BE28();
  }

  v5 = sub_2DD54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349570;
    v32 = v4;
    v33 = 2080;
    v34 = "[GroupAnimation complete:]";
    v35 = 1024;
    v36 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%{public}p] %s:%d", buf, 0x1Cu);
  }

  v4->_readyToComplete = 1;
  if (v4->_waitBlock)
  {
    v6 = sub_2DD54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v32 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[%{public}p] waiting for _waitBlock", buf, 0xCu);
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
  v7 = sub_2DD54();
  v10 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (childAnimationCompletionGroup)
  {
    if (v10)
    {
      *buf = 134349056;
      v32 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "[%{public}p] ready to complete, but waiting on child animations", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (v10)
  {
    *buf = 134349312;
    v32 = v4;
    v33 = 1024;
    LODWORD(v34) = v3;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "[%{public}p] complete:%d", buf, 0x12u);
  }

  if ([(NSMutableArray *)v4->_completions count])
  {
    do
    {
      v11 = sub_2DD54();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(NSMutableArray *)v4->_completions count];
        *buf = 134349312;
        v32 = v4;
        v33 = 2048;
        v34 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "[%{public}p] will execute %lu completions", buf, 0x16u);
      }

      v13 = [(NSMutableArray *)v4->_completions copy];
      completions = v4->_completions;
      v15 = v4;
      v4->_completions = 0;

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = v13;
      v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v26 + 1) + 8 * i);
            v22 = sub_2DD54();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v23 = objc_retainBlock(v21);
              *buf = 134349314;
              v32 = v15;
              v33 = 2112;
              v34 = v23;
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "[%{public}p] executing completion block: %@", buf, 0x16u);
            }

            v21[2](v21, v3);
          }

          v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v18);
      }

      v4 = v15;
    }

    while ([(NSMutableArray *)v15->_completions count]);
  }

  v24 = sub_2DD54();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v32 = v4;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "[%{public}p] executed all completion blocks", buf, 0xCu);
  }

  v25 = v4->_completions;
  v4->_completions = 0;

  v4->_didComplete = 1;
}

- (void)runWithDefaultOptions
{
  [objc_opt_class() defaultAnimationDuration];

  [GroupAnimation runWithDuration:"runWithDuration:delay:options:" delay:0 options:?];
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

- (void)runWithDuration:(double)a3 delay:(double)a4 options:(unint64_t)a5
{
  if ([(GroupAnimation *)self isAnimated])
  {
    v9 = sub_2DD54();
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
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "[%{public}p] runWithDuration:%#.1lf delay:%#.1lfs options:%lu", buf, 0x2Au);
    }

    [(GroupAnimation *)self prepare];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2F80C;
    v11[3] = &unk_69228;
    v11[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_2F814;
    v10[3] = &unk_7FC30;
    v10[4] = self;
    [UIView animateWithDuration:a5 delay:v11 options:v10 animations:a3 completion:a4];
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
    v9 = sub_2DD54();
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
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "[%{public}p] runWithDelay:%#.1lf initialVelocity:%lf options:%lu", buf, 0x2Au);
    }

    [(GroupAnimation *)self prepare];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2F9F8;
    v11[3] = &unk_69228;
    v11[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_2FA00;
    v10[3] = &unk_7FC30;
    v10[4] = self;
    [UIView _animateUsingDefaultDampedSpringWithDelay:a5 initialSpringVelocity:v11 options:v10 animations:a3 completion:a4];
  }

  else
  {

    [(GroupAnimation *)self runWithoutAnimation];
  }
}

- (void)runWithDuration:(double)a3 delay:(double)a4 springDamping:(double)a5 initialVelocity:(double)a6 options:(unint64_t)a7
{
  if ([(GroupAnimation *)self isAnimated])
  {
    v13 = sub_2DD54();
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
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "[%{public}p] runWithDuration:%#.1lfs delay:%#.1lfs springDamping:%lf initialVelocity:%lf options:%lu", buf, 0x3Eu);
    }

    [(GroupAnimation *)self prepare];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_2FC10;
    v15[3] = &unk_69228;
    v15[4] = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2FC18;
    v14[3] = &unk_7FC30;
    v14[4] = self;
    [UIView animateWithDuration:a7 delay:v15 usingSpringWithDamping:v14 initialSpringVelocity:a3 options:a4 animations:a5 completion:a6];
  }

  else
  {

    [(GroupAnimation *)self runWithoutAnimation];
  }
}

- (void)runWithoutAnimation
{
  v3 = sub_2DD54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v6 = self;
    v7 = 2080;
    v8 = "[GroupAnimation runWithoutAnimation]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}p] %s", buf, 0x16u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2FD34;
  v4[3] = &unk_69228;
  v4[4] = self;
  [UIView performWithoutAnimation:v4];
}

- (void)runInCurrentContext
{
  v3 = sub_2DD54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134349314;
    v5 = self;
    v6 = 2080;
    v7 = "[GroupAnimation runInCurrentContext]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v4, 0x16u);
  }

  [(GroupAnimation *)self prepare];
  [(GroupAnimation *)self animate];
  [(GroupAnimation *)self complete:1];
}

+ (id)animationForAnimatedFlag:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(a1);
  [v4 setAnimated:v3];

  return v4;
}

+ (id)animationForImplicitAnimationState
{
  v2 = [a1 animationForAnimatedFlag:{+[UIView _maps_shouldAdoptImplicitAnimationParameters](UIView, "_maps_shouldAdoptImplicitAnimationParameters")}];
  [v2 setPreventsAnimationDuringPreparation:1];

  return v2;
}

@end