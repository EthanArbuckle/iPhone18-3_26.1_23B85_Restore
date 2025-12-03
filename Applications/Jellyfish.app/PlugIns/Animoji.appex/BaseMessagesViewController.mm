@interface BaseMessagesViewController
- (AVTUIControllerPresentation)currentControllerPresentation;
- (BOOL)didOrientationChangeSemantically;
- (BOOL)needsLandscapeOverlayUpdate;
- (BaseMessagesViewController)initWithCoder:(id)coder;
- (BaseMessagesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CGSize)previousSize;
- (NSString)landscapeOverlayMessage;
- (UIImage)emptySnapshotImage;
- (id)defaultMessagesChildViewControllerForPresentationContext:(unint64_t)context;
- (id)overrideTraitCollectionForChildViewController:(id)controller;
- (void)_addStickerToStoreWithRepresentations:(id)representations completionHandler:(id)handler;
- (void)_addStickerToStoreWithRepresentations:(id)representations completionWithStickerIDs:(id)ds;
- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect completion:(id)completion;
- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect effect:(int64_t)effect completion:(id)completion;
- (void)_addStickerToStoreWithUISticker:(id)sticker sourceRect:(CGRect)rect completion:(id)completion;
- (void)_configure;
- (void)beginHidingInterfaceWithMessage:(id)message;
- (void)configureNewTrapOverlayView:(id *)view constraints:(id *)constraints;
- (void)dealloc;
- (void)didBecomeActiveWithConversation:(id)conversation;
- (void)didResignActiveWithConversation:(id)conversation;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)layoutMonitorDidUpdateDisplayLayout:(id)layout withContext:(id)context;
- (void)scheduleSnapshotEnabledUpdateAfter:(double)after currentValue:(id)value futureValue:(id)futureValue;
- (void)setCustomOverlayMessage:(id)message;
- (void)setSnapshottingEnabled:(BOOL)enabled;
- (void)setupDisplayLayoutMonitor;
- (void)updateHiddenSubviewsForAnyOverlays;
- (void)updateLandscapeOverlayIfNecessaryWithCoordinator:(id)coordinator;
- (void)updateLandscapeOverlayImmediately;
- (void)updateSnapshotWithCompletionBlock:(id)block;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willResignActiveWithConversation:(id)conversation;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation BaseMessagesViewController

- (BaseMessagesViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BaseMessagesViewController;
  v3 = [(BaseMessagesViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(BaseMessagesViewController *)v3 _configure];
  }

  return v4;
}

- (BaseMessagesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = BaseMessagesViewController;
  v4 = [(BaseMessagesViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(BaseMessagesViewController *)v4 _configure];
  }

  return v5;
}

- (void)dealloc
{
  displayLayoutMonitor = [(BaseMessagesViewController *)self displayLayoutMonitor];

  if (displayLayoutMonitor)
  {
    displayLayoutMonitor2 = [(BaseMessagesViewController *)self displayLayoutMonitor];
    [displayLayoutMonitor2 invalidate];
  }

  v5.receiver = self;
  v5.super_class = BaseMessagesViewController;
  [(BaseMessagesViewController *)&v5 dealloc];
}

- (void)_configure
{
  self->_overlayShown = 0;
  self->_strongPopoverCurrentlyPresented = 0;
  self->_snapshottingEnabledUpdateIdentifier = 0;
  self->_snapshottingEnabled = 0;
  self->_previousOrientation = 0;
  self->_previousSize = CGSizeZero;
  v3 = +[UIDevice currentDevice];
  self->_automaticallyDisplaysLandscapeRotationOverlay = [v3 userInterfaceIdiom] == 0;
}

- (id)overrideTraitCollectionForChildViewController:(id)controller
{
  traitCollection = [(BaseMessagesViewController *)self traitCollection];
  v4 = [AVTUITraitCollectionHelper overridenTraitFromTrait:traitCollection];

  return v4;
}

- (void)configureNewTrapOverlayView:(id *)view constraints:(id *)constraints
{
  v5 = [[TrapOverlayView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  overlayMessageBackgroundColor = [(BaseMessagesViewController *)self overlayMessageBackgroundColor];
  [(TrapOverlayView *)v5 setBackgroundColor:overlayMessageBackgroundColor];

  overlayMessageTextColor = [(BaseMessagesViewController *)self overlayMessageTextColor];
  label = [(TrapOverlayView *)v5 label];
  [label setTextColor:overlayMessageTextColor];

  [(TrapOverlayView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(BaseMessagesViewController *)self view];
  [view addSubview:v5];

  leadingAnchor = [(TrapOverlayView *)v5 leadingAnchor];
  view2 = [(BaseMessagesViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[0] = v25;
  trailingAnchor = [(TrapOverlayView *)v5 trailingAnchor];
  view3 = [(BaseMessagesViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[1] = v21;
  topAnchor = [(TrapOverlayView *)v5 topAnchor];
  view4 = [(BaseMessagesViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[2] = v13;
  bottomAnchor = [(TrapOverlayView *)v5 bottomAnchor];
  view5 = [(BaseMessagesViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[3] = v17;
  v18 = [NSArray arrayWithObjects:v31 count:4];

  [NSLayoutConstraint activateConstraints:v18];
  v19 = v5;
  *view = v5;
  v20 = v18;
  *constraints = v18;
}

- (void)setCustomOverlayMessage:(id)message
{
  messageCopy = message;
  objc_storeStrong(&self->_customOverlayMessage, message);
  if (messageCopy)
  {
    if (self->_customMessageTrapOverlay)
    {
      view = [(BaseMessagesViewController *)self view];
      [(TrapOverlayView *)view bringSubviewToFront:self->_landscapeTrapOverlay];
    }

    else
    {
      v15 = 0;
      v16 = 0;
      [(BaseMessagesViewController *)self configureNewTrapOverlayView:&v16 constraints:&v15];
      v10 = v16;
      v11 = v15;
      customMessageTrapOverlay = self->_customMessageTrapOverlay;
      self->_customMessageTrapOverlay = v10;
      view = v10;

      customMessageOverlayConstraints = self->_customMessageOverlayConstraints;
      self->_customMessageOverlayConstraints = v11;
    }

    label = [(TrapOverlayView *)self->_customMessageTrapOverlay label];
    [label setText:messageCopy];

    [(TrapOverlayView *)self->_customMessageTrapOverlay layoutIfNeeded];
  }

  else
  {
    if (self->_customMessageOverlayConstraints)
    {
      [NSLayoutConstraint deactivateConstraints:?];
      v7 = self->_customMessageOverlayConstraints;
      self->_customMessageOverlayConstraints = 0;
    }

    v8 = self->_customMessageTrapOverlay;
    if (v8)
    {
      [(TrapOverlayView *)v8 removeFromSuperview];
      v9 = self->_customMessageTrapOverlay;
      self->_customMessageTrapOverlay = 0;
    }
  }

  [(BaseMessagesViewController *)self updateHiddenSubviewsForAnyOverlays];
}

- (BOOL)didOrientationChangeSemantically
{
  previousOrientation = self->_previousOrientation;
  currentOrientation = [(BaseMessagesViewController *)self currentOrientation];
  self->_previousOrientation = currentOrientation;
  if (currentOrientation == previousOrientation)
  {
    return 0;
  }

  if (previousOrientation)
  {
    return ((previousOrientation - 3) < 2) ^ ((currentOrientation - 3) < 2);
  }

  return 1;
}

- (BOOL)needsLandscapeOverlayUpdate
{
  automaticallyDisplaysLandscapeRotationOverlay = [(BaseMessagesViewController *)self automaticallyDisplaysLandscapeRotationOverlay];
  if (automaticallyDisplaysLandscapeRotationOverlay)
  {

    LOBYTE(automaticallyDisplaysLandscapeRotationOverlay) = [(BaseMessagesViewController *)self didOrientationChangeSemantically];
  }

  return automaticallyDisplaysLandscapeRotationOverlay;
}

- (void)updateLandscapeOverlayImmediately
{
  if ([(BaseMessagesViewController *)self automaticallyDisplaysLandscapeRotationOverlay])
  {
    if ([(BaseMessagesViewController *)self isLandscapeMode])
    {
      currentControllerPresentation = [(BaseMessagesViewController *)self currentControllerPresentation];

      if (currentControllerPresentation)
      {
        currentControllerPresentation2 = [(BaseMessagesViewController *)self currentControllerPresentation];
        [currentControllerPresentation2 viewWillBeObstructed];
      }

      if (self->_landscapeTrapOverlay)
      {
        view = [(BaseMessagesViewController *)self view];
        [(TrapOverlayView *)view bringSubviewToFront:self->_landscapeTrapOverlay];
      }

      else
      {
        v15 = 0;
        v16 = 0;
        [(BaseMessagesViewController *)self configureNewTrapOverlayView:&v16 constraints:&v15];
        v9 = v16;
        v10 = v15;
        landscapeTrapOverlay = self->_landscapeTrapOverlay;
        self->_landscapeTrapOverlay = v9;
        view = v9;

        landscapeOverlayConstraints = self->_landscapeOverlayConstraints;
        self->_landscapeOverlayConstraints = v10;
      }

      landscapeOverlayMessage = [(BaseMessagesViewController *)self landscapeOverlayMessage];
      label = [(TrapOverlayView *)self->_landscapeTrapOverlay label];
      [label setText:landscapeOverlayMessage];

      [(TrapOverlayView *)self->_landscapeTrapOverlay layoutIfNeeded];
    }

    else
    {
      if (self->_landscapeOverlayConstraints)
      {
        [NSLayoutConstraint deactivateConstraints:?];
        v6 = self->_landscapeOverlayConstraints;
        self->_landscapeOverlayConstraints = 0;
      }

      v7 = self->_landscapeTrapOverlay;
      if (v7)
      {
        [(TrapOverlayView *)v7 removeFromSuperview];
        v8 = self->_landscapeTrapOverlay;
        self->_landscapeTrapOverlay = 0;
      }
    }

    [(BaseMessagesViewController *)self updateHiddenSubviewsForAnyOverlays];
  }
}

- (void)updateLandscapeOverlayIfNecessaryWithCoordinator:(id)coordinator
{
  if (coordinator)
  {
    v4[4] = self;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000199C0;
    v5[3] = &unk_100034940;
    v5[4] = self;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100019B40;
    v4[3] = &unk_100034940;
    [coordinator animateAlongsideTransition:v5 completion:v4];
  }

  else
  {

    [(BaseMessagesViewController *)self updateLandscapeOverlayImmediately];
  }
}

- (void)updateHiddenSubviewsForAnyOverlays
{
  landscapeTrapOverlay = self->_landscapeTrapOverlay;
  if (!landscapeTrapOverlay)
  {
    landscapeTrapOverlay = self->_customMessageTrapOverlay;
  }

  v4 = landscapeTrapOverlay;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  view = [(BaseMessagesViewController *)self view];
  subviews = [view subviews];

  v7 = [subviews countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if (v4)
        {
          v12 = v11 == v4;
        }

        else
        {
          v12 = 1;
        }

        v13 = !v12;
        [(TrapOverlayView *)v11 setHidden:v13];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  if (self->_landscapeTrapOverlay)
  {
    if (![(BaseMessagesViewController *)self isOverlayShown])
    {
      v14 = 1;
LABEL_20:
      [(BaseMessagesViewController *)self setOverlayShown:v14];
      v22 = @"BaseMessagesViewControllerOverlayPresentedKey";
      v15 = [NSNumber numberWithBool:v14];
      v23 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      v17 = +[NSNotificationCenter defaultCenter];
      [v17 postNotificationName:@"BaseMessagesViewControllerOverlayPresentationNotification" object:self userInfo:v16];
    }
  }

  else
  {
    v14 = self->_customMessageTrapOverlay != 0;
    if (v14 != [(BaseMessagesViewController *)self isOverlayShown])
    {
      goto LABEL_20;
    }
  }
}

- (NSString)landscapeOverlayMessage
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"StickersLandscapeTrapMessage" value:&stru_100035080 table:@"Localizable"];

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BaseMessagesViewController;
  [(BaseMessagesViewController *)&v5 viewDidLoad];
  v3 = +[AVTUIColorRepository appBackgroundColor];
  view = [(BaseMessagesViewController *)self view];
  [view setBackgroundColor:v3];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = BaseMessagesViewController;
  [(BaseMessagesViewController *)&v5 viewDidAppear:appear];
  [(BaseMessagesViewController *)self scheduleSnapshotEnabledUpdateAfter:0 currentValue:&__kCFBooleanTrue futureValue:1.0];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"BaseMessagesViewControllerDidAppearNotification" object:self];
}

- (void)scheduleSnapshotEnabledUpdateAfter:(double)after currentValue:(id)value futureValue:(id)futureValue
{
  valueCopy = value;
  futureValueCopy = futureValue;
  if (valueCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = valueCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BaseAnimoji] updating snapshottingEnabled applying currentValue: %@", buf, 0xCu);
    }

    -[BaseMessagesViewController setSnapshottingEnabled:](self, "setSnapshottingEnabled:", [valueCopy BOOLValue]);
  }

  if (futureValueCopy)
  {
    v10 = (self->_snapshottingEnabledUpdateIdentifier + 1);
    self->_snapshottingEnabledUpdateIdentifier = v10;
    objc_initWeak(buf, self);
    v11 = dispatch_time(0, (after * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A098;
    block[3] = &unk_100034EB0;
    objc_copyWeak(v14, buf);
    v14[1] = v10;
    v13 = futureValueCopy;
    dispatch_after(v11, &_dispatch_main_q, block);

    objc_destroyWeak(v14);
    objc_destroyWeak(buf);
  }
}

- (void)setSnapshottingEnabled:(BOOL)enabled
{
  if (self->_snapshottingEnabled != enabled)
  {
    [(BaseMessagesViewController *)self willChangeValueForKey:@"snapshottingEnabled"];
    self->_snapshottingEnabled = enabled;
    [(BaseMessagesViewController *)self didChangeValueForKey:@"snapshottingEnabled"];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"BaseMessagesViewControllerSnapshottingEnabledChangedNotification" object:self userInfo:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = BaseMessagesViewController;
  coordinatorCopy = coordinator;
  [(BaseMessagesViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  self->_previousSize.width = width;
  self->_previousSize.height = height;
  [(BaseMessagesViewController *)self updateLandscapeOverlayIfNecessaryWithCoordinator:coordinatorCopy, v8.receiver, v8.super_class];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = BaseMessagesViewController;
  [(BaseMessagesViewController *)&v9 viewDidLayoutSubviews];
  view = [(BaseMessagesViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;

  if (self->_previousSize.width != v5 || self->_previousSize.height != v7)
  {
    self->_previousSize.width = v5;
    self->_previousSize.height = v7;
    [(BaseMessagesViewController *)self updateLandscapeOverlayIfNecessaryWithCoordinator:0];
  }
}

- (id)defaultMessagesChildViewControllerForPresentationContext:(unint64_t)context
{
  if ([MSMessagesAppViewController instancesRespondToSelector:"initWithShouldBeSheetPresentationControllerDelegate:"])
  {
    v3 = [[MSMessagesAppViewController alloc] initWithShouldBeSheetPresentationControllerDelegate:0];
  }

  else
  {
    v3 = objc_alloc_init(MSMessagesAppViewController);
  }

  return v3;
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  v42.receiver = self;
  v42.super_class = BaseMessagesViewController;
  conversationCopy = conversation;
  [(BaseMessagesViewController *)&v42 willBecomeActiveWithConversation:conversationCopy];
  if (![(BaseMessagesViewController *)self isLoaded])
  {
    [(BaseMessagesViewController *)self setIsLoaded:1];
    v5 = +[AVTUIControllerPresentation pendingGlobalPresentation];
    [(BaseMessagesViewController *)self setCurrentControllerPresentation:v5];
    v6 = +[BaseMessagesViewController pendingChildViewController];
    v7 = v6;
    if (v5)
    {
      controller = [v5 controller];
      [v5 setModalMessagesController:self];
      v9 = +[AVTUIColorRepository modalBackgroundColor];
      view = [(BaseMessagesViewController *)self view];
      [view setBackgroundColor:v9];

      if (!controller)
      {
LABEL_12:
        [(BaseMessagesViewController *)self updateLandscapeOverlayImmediately];

        goto LABEL_13;
      }
    }

    else if (v6)
    {
      controller = v6;
      [BaseMessagesViewController setPendingChildViewController:0];
    }

    else
    {
      baseMessagesViewController = [(BaseMessagesViewController *)self baseMessagesViewController];

      if (!baseMessagesViewController)
      {
        v12 = [(BaseMessagesViewController *)self defaultMessagesChildViewControllerForPresentationContext:[(BaseMessagesViewController *)self presentationContext]];
        [(BaseMessagesViewController *)self setBaseMessagesViewController:v12];
      }

      controller = [(BaseMessagesViewController *)self baseMessagesViewController];
      if (!controller)
      {
        goto LABEL_12;
      }
    }

    parentViewController = [controller parentViewController];

    if (!parentViewController)
    {
      view2 = [(BaseMessagesViewController *)self view];
      view3 = [controller view];
      [view2 addSubview:view3];

      view4 = [controller view];
      [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

      view5 = [(BaseMessagesViewController *)self view];
      leftAnchor = [view5 leftAnchor];
      view6 = [controller view];
      leftAnchor2 = [view6 leftAnchor];
      v36 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v43[0] = v36;
      view7 = [(BaseMessagesViewController *)self view];
      rightAnchor = [view7 rightAnchor];
      view8 = [controller view];
      rightAnchor2 = [view8 rightAnchor];
      v31 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v43[1] = v31;
      view9 = [(BaseMessagesViewController *)self view];
      topAnchor = [view9 topAnchor];
      view10 = [controller view];
      topAnchor2 = [view10 topAnchor];
      v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v43[2] = v26;
      view11 = [(BaseMessagesViewController *)self view];
      bottomAnchor = [view11 bottomAnchor];
      [controller view];
      v19 = v41 = v7;
      bottomAnchor2 = [v19 bottomAnchor];
      v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v43[3] = v21;
      v22 = [NSArray arrayWithObjects:v43 count:4];
      [(BaseMessagesViewController *)self setChildConstraints:v22];

      v7 = v41;
      view12 = [(BaseMessagesViewController *)self view];
      childConstraints = [(BaseMessagesViewController *)self childConstraints];
      [view12 addConstraints:childConstraints];

      [(BaseMessagesViewController *)self addChildViewController:controller];
      [controller didMoveToParentViewController:self];
    }

    goto LABEL_12;
  }

LABEL_13:
  baseMessagesViewController2 = [(BaseMessagesViewController *)self baseMessagesViewController];
  [baseMessagesViewController2 willBecomeActiveWithConversation:conversationCopy];
}

- (void)didBecomeActiveWithConversation:(id)conversation
{
  v6.receiver = self;
  v6.super_class = BaseMessagesViewController;
  conversationCopy = conversation;
  [(BaseMessagesViewController *)&v6 didBecomeActiveWithConversation:conversationCopy];
  v5 = [(BaseMessagesViewController *)self baseMessagesViewController:v6.receiver];
  [v5 didBecomeActiveWithConversation:conversationCopy];

  [(BaseMessagesViewController *)self setupDisplayLayoutMonitor];
}

- (void)willResignActiveWithConversation:(id)conversation
{
  v7.receiver = self;
  v7.super_class = BaseMessagesViewController;
  conversationCopy = conversation;
  [(BaseMessagesViewController *)&v7 willResignActiveWithConversation:conversationCopy];
  v5 = [(BaseMessagesViewController *)self baseMessagesViewController:v7.receiver];
  [v5 willResignActiveWithConversation:conversationCopy];

  displayLayoutMonitor = [(BaseMessagesViewController *)self displayLayoutMonitor];
  [displayLayoutMonitor invalidate];

  [(BaseMessagesViewController *)self setDisplayLayoutMonitor:0];
}

- (void)didResignActiveWithConversation:(id)conversation
{
  v6.receiver = self;
  v6.super_class = BaseMessagesViewController;
  conversationCopy = conversation;
  [(BaseMessagesViewController *)&v6 didResignActiveWithConversation:conversationCopy];
  v5 = [(BaseMessagesViewController *)self baseMessagesViewController:v6.receiver];
  [v5 didResignActiveWithConversation:conversationCopy];
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  v6.receiver = self;
  v6.super_class = BaseMessagesViewController;
  [(BaseMessagesViewController *)&v6 willTransitionToPresentationStyle:?];
  if (!style)
  {
    [(BaseMessagesViewController *)self scheduleSnapshotEnabledUpdateAfter:&__kCFBooleanFalse currentValue:0 futureValue:0.0];
  }

  baseMessagesViewController = [(BaseMessagesViewController *)self baseMessagesViewController];
  [baseMessagesViewController willTransitionToPresentationStyle:style];
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  v6.receiver = self;
  v6.super_class = BaseMessagesViewController;
  [(BaseMessagesViewController *)&v6 didTransitionToPresentationStyle:?];
  if (!style)
  {
    [(BaseMessagesViewController *)self scheduleSnapshotEnabledUpdateAfter:&__kCFBooleanFalse currentValue:&__kCFBooleanTrue futureValue:0.1];
  }

  baseMessagesViewController = [(BaseMessagesViewController *)self baseMessagesViewController];
  [baseMessagesViewController didTransitionToPresentationStyle:style];
}

- (UIImage)emptySnapshotImage
{
  v12.width = 1.0;
  v12.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v12, 1, 0.0);
  childViewControllers = [(BaseMessagesViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  view = [(BaseMessagesViewController *)self view];
  backgroundColor = [view backgroundColor];
  traitCollection = [lastObject traitCollection];
  v8 = [backgroundColor resolvedColorWithTraitCollection:traitCollection];
  [v8 setFill];

  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = 1.0;
  v13.size.height = 1.0;
  UIRectFill(v13);
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

- (void)updateSnapshotWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    baseMessagesViewController = [(BaseMessagesViewController *)self baseMessagesViewController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      snapshottingEnabled = [(BaseMessagesViewController *)self snapshottingEnabled];
      v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (snapshottingEnabled)
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BaseAnimoji] updateSnapshotWithCompletionBlock snapshots enabled", buf, 2u);
        }

        baseMessagesViewController2 = [(BaseMessagesViewController *)self baseMessagesViewController];
        [baseMessagesViewController2 updateSnapshotWithCompletionBlock:blockCopy];
      }

      else
      {
        if (v8)
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BaseAnimoji] updateSnapshotWithCompletionBlock snapshots disabled, returning 1x1 empty snapshot", v11, 2u);
        }

        baseMessagesViewController2 = [(BaseMessagesViewController *)self emptySnapshotImage];
        blockCopy[2](blockCopy, baseMessagesViewController2);
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10[0] = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BaseAnimoji] updateSnapshotWithCompletionBlock snapshots disabled", v10, 2u);
      }

      blockCopy[2](blockCopy, 0);
    }
  }
}

- (void)_addStickerToStoreWithRepresentations:(id)representations completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  (*(handler + 2))(handlerCopy, v6, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
}

- (void)_addStickerToStoreWithRepresentations:(id)representations completionWithStickerIDs:(id)ds
{
  dsCopy = ds;
  v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  (*(ds + 2))(dsCopy, 0, v6, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
}

- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect completion:(id)completion
{
  completionCopy = completion;
  v7 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)_addStickerToStoreWithRepresentations:(id)representations sourceRect:(CGRect)rect effect:(int64_t)effect completion:(id)completion
{
  completionCopy = completion;
  v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v8);
}

- (void)_addStickerToStoreWithUISticker:(id)sticker sourceRect:(CGRect)rect completion:(id)completion
{
  completionCopy = completion;
  v7 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v7);
}

- (void)setupDisplayLayoutMonitor
{
  v3 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10001B1DC;
  v8 = &unk_100034ED8;
  objc_copyWeak(&v9, &location);
  [v3 setTransitionHandler:&v5];
  v4 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v3, v5, v6, v7, v8];
  [(BaseMessagesViewController *)self setDisplayLayoutMonitor:v4];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)layoutMonitorDidUpdateDisplayLayout:(id)layout withContext:(id)context
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [layout elements];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v22 = *v26;
    v7 = FBSDisplayLayoutElementControlCenterIdentifier;
    v8 = FBSDisplayLayoutElementLockScreenIdentifier;
    v9 = FBSDisplayLayoutElementSiriIdentifier;
    v21 = FBSDisplayLayoutElementNotificationCenterIdentifier;
    selfCopy = self;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        identifier = [v11 identifier];
        if ([identifier isEqualToString:v7])
        {
          goto LABEL_16;
        }

        identifier2 = [v11 identifier];
        if ([identifier2 isEqualToString:v8])
        {
          goto LABEL_15;
        }

        identifier3 = [v11 identifier];
        if ([identifier3 isEqualToString:v9])
        {

LABEL_15:
LABEL_16:

LABEL_17:
          v17 = 1;
          self = selfCopy;
          goto LABEL_18;
        }

        identifier4 = [v11 identifier];
        v16 = [identifier4 isEqualToString:v21];

        if (v16)
        {
          goto LABEL_17;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v17 = 0;
      self = selfCopy;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_18:

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10001B4D4;
  v23[3] = &unk_100034968;
  v24 = v17;
  v23[4] = self;
  v18 = objc_retainBlock(v23);
  if (+[NSThread isMainThread])
  {
    (v18[2])(v18);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v18);
  }
}

- (void)beginHidingInterfaceWithMessage:(id)message
{
  if (!message)
  {
    message = &stru_100035080;
  }

  [(BaseMessagesViewController *)self setCustomOverlayMessage:message];
}

- (CGSize)previousSize
{
  width = self->_previousSize.width;
  height = self->_previousSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (AVTUIControllerPresentation)currentControllerPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_currentControllerPresentation);

  return WeakRetained;
}

@end