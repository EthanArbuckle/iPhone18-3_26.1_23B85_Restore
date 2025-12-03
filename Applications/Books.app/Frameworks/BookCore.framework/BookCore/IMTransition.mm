@interface IMTransition
+ (id)transition;
+ (id)transitionWithAnimations:(id)animations completion:(id)completion;
+ (void)initialize;
- (BOOL)_shouldUseTransactionForTransition;
- (BOOL)animated;
- (BOOL)shouldPerformTransition;
- (CGRect)transitionRect;
- (IMTransition)init;
- (IMTransition)initWithAnimations:(id)animations completion:(id)completion;
- (IMTransitionDelegate)delegate;
- (NSDictionary)userInfo;
- (UIView)parentView;
- (double)duration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableUserInfoCreateIfNeeded:(BOOL)needed;
- (int)roleForViewController:(id)controller;
- (void)_delayedBeginAnimation;
- (void)animationEnded:(id)ended finished:(BOOL)finished;
- (void)animationStarted:(id)started;
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
- (void)setUserInfoObject:(id)object forKey:(id)key;
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
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)transitionWithAnimations:(id)animations completion:(id)completion
{
  completionCopy = completion;
  animationsCopy = animations;
  v8 = [[self alloc] initWithAnimations:animationsCopy completion:completionCopy];

  return v8;
}

- (IMTransition)initWithAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  v8 = [(IMTransition *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_shouldAllowInterfaceRotation = 0;
    if (animationsCopy)
    {
      v10 = [animationsCopy copy];
      v11 = objc_retainBlock(v10);
      animationsBlock = v9->_animationsBlock;
      v9->_animationsBlock = v11;
    }

    else
    {
      v10 = v8->_animationsBlock;
      v8->_animationsBlock = 0;
    }

    if (completionCopy)
    {
      v13 = [completionCopy copy];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  _supportsForceTouch = [v2 _supportsForceTouch];

  return _supportsForceTouch;
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
  parentViewController = [(IMTransition *)self parentViewController];
  isViewLoaded = [parentViewController isViewLoaded];

  if (isViewLoaded)
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
  parentView = [(IMTransition *)self parentView];
  [parentView bounds];
  v5 = [v3 initWithFrame:?];
  view = self->_view;
  self->_view = v5;

  view = [(IMTransition *)self view];
  [view setClipsToBounds:1];

  parentView2 = [(IMTransition *)self parentView];
  view2 = [(IMTransition *)self view];
  [parentView2 addSubview:view2];
}

- (void)cleanupTransition
{
  view = [(IMTransition *)self view];
  [view removeFromSuperview];
}

- (int)roleForViewController:(id)controller
{
  if (!controller)
  {
    return 0;
  }

  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];
  parentViewController2 = [(IMTransition *)self parentViewController];

  if (parentViewController2 == controllerCopy)
  {
    v7 = 3;
  }

  else if (parentViewController)
  {
    v7 = [(IMTransition *)self roleForViewController:parentViewController];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setUserInfoObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v8 = [(IMTransition *)self mutableUserInfoCreateIfNeeded:1];
  [v8 setObject:objectCopy forKey:keyCopy];
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
  animationsFinished = [(IMTransition *)self animationsFinished];
  [(IMTransition *)self cleanupViewControllers];
  [(IMTransition *)self notifyTransitionDidEnd];
  completion = [(IMTransition *)self completion];

  if (completion)
  {
    completion2 = [(IMTransition *)self completion];
    completion2[2](completion2, animationsFinished);
  }

  [(IMTransition *)self setView:0];
}

- (CGRect)transitionRect
{
  delegate = [(IMTransition *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    parentView = [(IMTransition *)self parentView];
    [delegate transitionRectInView:parentView transition:self];
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
  setup = [(IMTransition *)self setup];

  if (setup)
  {
    setup2 = [(IMTransition *)self setup];
    (setup2)[2](setup2, self);
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
  parentViewController = [(IMTransition *)self parentViewController];
  [parentViewController prepareForTransition:self];
}

- (void)cleanupViewControllers
{
  parentViewController = [(IMTransition *)self parentViewController];
  [parentViewController cleanupAfterTransition:self];
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
  parentViewController = [(IMTransition *)self parentViewController];
  isViewLoaded = [parentViewController isViewLoaded];

  if (isViewLoaded)
  {
    parentViewController2 = [(IMTransition *)self parentViewController];
    view = [parentViewController2 view];
    window = [view window];
    v8 = window != 0;
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
  environment = [v3 environment];
  v5 = [environment valueForKey:@"TRANSITION_DURATION_MULTIPLIER"];

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
  parentViewController = [(IMTransition *)self parentViewController];
  view = [parentViewController view];

  return view;
}

- (BOOL)shouldPerformTransition
{
  parentViewController = [(IMTransition *)self parentViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  parentViewController2 = [(IMTransition *)self parentViewController];
  v6 = [parentViewController2 shouldPerformChildTransition:self];

  return v6;
}

- (id)mutableUserInfoCreateIfNeeded:(BOOL)needed
{
  if (needed && !self->_mutableUserInfo)
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
  parentViewController = [(IMTransition *)self parentViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    parentViewController2 = [(IMTransition *)self parentViewController];
    [parentViewController2 childTransitionWillStart:self];
  }

  delegate = [(IMTransition *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate transitionWillStart:self];
  }
}

- (void)notifyTransitionDidStart
{
  parentViewController = [(IMTransition *)self parentViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    parentViewController2 = [(IMTransition *)self parentViewController];
    [parentViewController2 childTransitionDidStart:self];
  }

  delegate = [(IMTransition *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate transitionDidStart:self];
  }
}

- (void)notifyTransitionDidEnd
{
  animationsFinished = [(IMTransition *)self animationsFinished];
  parentViewController = [(IMTransition *)self parentViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    parentViewController2 = [(IMTransition *)self parentViewController];
    [parentViewController2 childTransitionDidComplete:self finished:animationsFinished];
  }

  delegate = [(IMTransition *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate transitionDidComplete:self finished:animationsFinished];
  }

  v7 = objc_opt_self();
}

- (void)animationStarted:(id)started
{
  startedCopy = started;
  animations = [(IMTransition *)self animations];
  [animations addObject:startedCopy];

  if (![(IMTransition *)self started])
  {

    [(IMTransition *)self transitionDidStart];
  }
}

- (void)animationEnded:(id)ended finished:(BOOL)finished
{
  finishedCopy = finished;
  endedCopy = ended;
  [(IMTransition *)self setAnimationsFinished:[(IMTransition *)self animationsFinished]& finishedCopy];
  animations = [(IMTransition *)self animations];
  [animations removeObject:endedCopy];

  animations2 = [(IMTransition *)self animations];
  v9 = [animations2 count];

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