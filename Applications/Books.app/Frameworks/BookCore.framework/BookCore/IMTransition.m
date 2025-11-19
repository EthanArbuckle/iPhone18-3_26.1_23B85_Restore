@interface IMTransition
+ (id)transition;
+ (id)transitionWithAnimations:(id)a3 completion:(id)a4;
+ (void)initialize;
- (BOOL)_shouldUseTransactionForTransition;
- (BOOL)animated;
- (BOOL)shouldPerformTransition;
- (CGRect)transitionRect;
- (IMTransition)init;
- (IMTransition)initWithAnimations:(id)a3 completion:(id)a4;
- (IMTransitionDelegate)delegate;
- (NSDictionary)userInfo;
- (UIView)parentView;
- (double)duration;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableUserInfoCreateIfNeeded:(BOOL)a3;
- (int)roleForViewController:(id)a3;
- (void)_delayedBeginAnimation;
- (void)animationEnded:(id)a3 finished:(BOOL)a4;
- (void)animationStarted:(id)a3;
- (void)beginAnimation;
- (void)beginTransition;
- (void)cleanupTransition;
- (void)cleanupViewControllers;
- (void)dealloc;
- (void)notifyTransitionDidEnd;
- (void)notifyTransitionDidStart;
- (void)notifyTransitionWillStart;
- (void)performAnimatedTransition;
- (void)performNonAnimatedTransition;
- (void)prepareTransition;
- (void)prepareViewControllers;
- (void)setUserInfoObject:(id)a3 forKey:(id)a4;
- (void)transitionDidEnd;
- (void)transitionDidStart;
@end

@implementation IMTransition

+ (void)initialize
{
  objc_opt_class();

  objc_opt_class();
}

+ (id)transition
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)transitionWithAnimations:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAnimations:v7 completion:v6];

  return v8;
}

- (IMTransition)initWithAnimations:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMTransition *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_shouldAllowInterfaceRotation = 0;
    if (v6)
    {
      v10 = [v6 copy];
      v11 = objc_retainBlock(v10);
      animationsBlock = v9->_animationsBlock;
      v9->_animationsBlock = v11;
    }

    else
    {
      v10 = v8->_animationsBlock;
      v8->_animationsBlock = 0;
    }

    if (v7)
    {
      v13 = [v7 copy];
      v14 = objc_retainBlock(v13);
      completion = v9->_completion;
      v9->_completion = v14;
    }

    else
    {
      v13 = v9->_completion;
      v9->_completion = 0;
    }
  }

  return v9;
}

- (IMTransition)init
{
  v11.receiver = self;
  v11.super_class = IMTransition;
  v2 = [(IMTransition *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_animated = 1;
    v2->_animationsFinished = 1;
    v4 = objc_alloc_init(NSMutableSet);
    animations = v3->_animations;
    v3->_animations = v4;

    v3->_duration = 0.300000012;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v7 copy];
    identifier = v3->_identifier;
    v3->_identifier = v8;
  }

  return v3;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  setup = self->_setup;
  self->_setup = 0;

  animationsBlock = self->_animationsBlock;
  self->_animationsBlock = 0;

  completion = self->_completion;
  self->_completion = 0;

  v6.receiver = self;
  v6.super_class = IMTransition;
  [(IMTransition *)&v6 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setIdentifier:self->_identifier];
    [v5 setParentViewController:self->_parentViewController];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v5 setDelegate:WeakRetained];

    [v5 setDuration:self->_duration];
    [v5 setDelay:self->_delay];
    [v5 setUseSnapshots:self->_useSnapshots];
    [v5 setAnimated:self->_animated];
    [v5 setSetup:self->_setup];
    [v5 setAnimationsBlock:self->_animationsBlock];
    [v5 setCompletion:self->_completion];
    [v5 setMutableUserInfo:self->_mutableUserInfo];
    [v5 setShouldAllowInterfaceRotation:self->_shouldAllowInterfaceRotation];
  }

  return v5;
}

- (BOOL)_shouldUseTransactionForTransition
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _supportsForceTouch];

  return v3;
}

- (void)_delayedBeginAnimation
{
  [(IMTransition *)self beginAnimation];
  if ([(IMTransition *)self _shouldUseTransactionForTransition])
  {

    +[CATransaction commit];
  }
}

- (void)beginTransition
{
  [stopWatch reset];
  v3 = [(IMTransition *)self parentViewController];
  v4 = [v3 isViewLoaded];

  if (v4)
  {
    v5 = [[NSArray alloc] initWithObjects:{NSRunLoopCommonModes, UITrackingRunLoopMode, 0}];
    if ([(IMTransition *)self _shouldUseTransactionForTransition])
    {
      +[CATransaction begin];
    }

    [(IMTransition *)self delay];
    [(IMTransition *)self performSelector:"_delayedBeginAnimation" withObject:self afterDelay:v5 inModes:?];
  }

  else
  {

    [(IMTransition *)self beginAnimation];
  }
}

- (void)prepareTransition
{
  v3 = [UIView alloc];
  v4 = [(IMTransition *)self parentView];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  view = self->_view;
  self->_view = v5;

  v7 = [(IMTransition *)self view];
  [v7 setClipsToBounds:1];

  v9 = [(IMTransition *)self parentView];
  v8 = [(IMTransition *)self view];
  [v9 addSubview:v8];
}

- (void)cleanupTransition
{
  v2 = [(IMTransition *)self view];
  [v2 removeFromSuperview];
}

- (int)roleForViewController:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [v4 parentViewController];
  v6 = [(IMTransition *)self parentViewController];

  if (v6 == v4)
  {
    v7 = 3;
  }

  else if (v5)
  {
    v7 = [(IMTransition *)self roleForViewController:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setUserInfoObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMTransition *)self mutableUserInfoCreateIfNeeded:1];
  [v8 setObject:v7 forKey:v6];
}

- (void)transitionDidStart
{
  [stopWatch reportWithMarker:@"transitionDidStart"];
  [(IMTransition *)self setStarted:1];

  [(IMTransition *)self notifyTransitionDidStart];
}

- (void)transitionDidEnd
{
  [(IMTransition *)self setStarted:0];
  v3 = [(IMTransition *)self animationsFinished];
  [(IMTransition *)self cleanupViewControllers];
  [(IMTransition *)self notifyTransitionDidEnd];
  v4 = [(IMTransition *)self completion];

  if (v4)
  {
    v5 = [(IMTransition *)self completion];
    v5[2](v5, v3);
  }

  [(IMTransition *)self setView:0];
}

- (CGRect)transitionRect
{
  v3 = [(IMTransition *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(IMTransition *)self parentView];
    [v3 transitionRectInView:v4 transition:self];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)performAnimatedTransition
{
  [(IMTransition *)self notifyTransitionWillStart];
  v3 = [(IMTransition *)self setup];

  if (v3)
  {
    v4 = [(IMTransition *)self setup];
    (v4)[2](v4, self);
  }

  [(IMTransition *)self prepareTransition];
  [(IMTransition *)self prepareViewControllers];
  [(IMTransition *)self duration];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_A8D50;
  v6[3] = &unk_2C7D40;
  v6[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A8DE8;
  v5[3] = &unk_2C99D8;
  v5[4] = self;
  [UIView animateWithDuration:v6 animations:v5 completion:?];
}

- (void)performNonAnimatedTransition
{
  [(IMTransition *)self setAnimationsFinished:0];

  [(IMTransition *)self transitionDidEnd];
}

- (void)prepareViewControllers
{
  v3 = [(IMTransition *)self parentViewController];
  [v3 prepareForTransition:self];
}

- (void)cleanupViewControllers
{
  v3 = [(IMTransition *)self parentViewController];
  [v3 cleanupAfterTransition:self];
}

- (void)beginAnimation
{
  if ([(IMTransition *)self shouldPerformTransition])
  {
    if ([(IMTransition *)self animated])
    {

      [(IMTransition *)self performAnimatedTransition];
    }

    else
    {

      [(IMTransition *)self performNonAnimatedTransition];
    }
  }
}

- (BOOL)animated
{
  v3 = [(IMTransition *)self parentViewController];
  v4 = [v3 isViewLoaded];

  if (v4)
  {
    v5 = [(IMTransition *)self parentViewController];
    v6 = [v5 view];
    v7 = [v6 window];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  if (!self->_animated)
  {
    return 0;
  }

  [(IMTransition *)self duration];
  return v9 > 0.0 && v8;
}

- (double)duration
{
  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 environment];
  v5 = [v4 valueForKey:@"TRANSITION_DURATION_MULTIPLIER"];

  [v5 floatValue];
  if (v6 == 0.0)
  {
    duration = self->_duration;
  }

  else
  {
    duration = self->_duration * v6;
  }

  return duration;
}

- (UIView)parentView
{
  v2 = [(IMTransition *)self parentViewController];
  v3 = [v2 view];

  return v3;
}

- (BOOL)shouldPerformTransition
{
  v3 = [(IMTransition *)self parentViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(IMTransition *)self parentViewController];
  v6 = [v5 shouldPerformChildTransition:self];

  return v6;
}

- (id)mutableUserInfoCreateIfNeeded:(BOOL)a3
{
  if (a3 && !self->_mutableUserInfo)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    mutableUserInfo = self->_mutableUserInfo;
    self->_mutableUserInfo = v4;
  }

  v6 = self->_mutableUserInfo;

  return v6;
}

- (NSDictionary)userInfo
{
  v2 = [(IMTransition *)self mutableUserInfoCreateIfNeeded:0];
  v3 = [v2 copy];

  return v3;
}

- (void)notifyTransitionWillStart
{
  v3 = [(IMTransition *)self parentViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(IMTransition *)self parentViewController];
    [v5 childTransitionWillStart:self];
  }

  v6 = [(IMTransition *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 transitionWillStart:self];
  }
}

- (void)notifyTransitionDidStart
{
  v3 = [(IMTransition *)self parentViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(IMTransition *)self parentViewController];
    [v5 childTransitionDidStart:self];
  }

  v6 = [(IMTransition *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 transitionDidStart:self];
  }
}

- (void)notifyTransitionDidEnd
{
  v3 = [(IMTransition *)self animationsFinished];
  v4 = [(IMTransition *)self parentViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(IMTransition *)self parentViewController];
    [v6 childTransitionDidComplete:self finished:v3];
  }

  v8 = [(IMTransition *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 transitionDidComplete:self finished:v3];
  }

  v7 = objc_opt_self();
}

- (void)animationStarted:(id)a3
{
  v4 = a3;
  v5 = [(IMTransition *)self animations];
  [v5 addObject:v4];

  if (![(IMTransition *)self started])
  {

    [(IMTransition *)self transitionDidStart];
  }
}

- (void)animationEnded:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(IMTransition *)self setAnimationsFinished:[(IMTransition *)self animationsFinished]& v4];
  v7 = [(IMTransition *)self animations];
  [v7 removeObject:v6];

  v8 = [(IMTransition *)self animations];
  v9 = [v8 count];

  if (!v9)
  {
    [(IMTransition *)self cleanupTransition];

    [(IMTransition *)self transitionDidEnd];
  }
}

- (IMTransitionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end