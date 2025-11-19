@interface BaseMessagesViewController
- (AVTUIControllerPresentation)currentControllerPresentation;
- (BOOL)didOrientationChangeSemantically;
- (BOOL)needsLandscapeOverlayUpdate;
- (BaseMessagesViewController)initWithCoder:(id)a3;
- (BaseMessagesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CGSize)previousSize;
- (NSString)landscapeOverlayMessage;
- (UIImage)emptySnapshotImage;
- (id)defaultMessagesChildViewControllerForPresentationContext:(unint64_t)a3;
- (id)overrideTraitCollectionForChildViewController:(id)a3;
- (void)_addStickerToStoreWithRepresentations:(id)a3 completionHandler:(id)a4;
- (void)_addStickerToStoreWithRepresentations:(id)a3 completionWithStickerIDs:(id)a4;
- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5;
- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 effect:(int64_t)a5 completion:(id)a6;
- (void)_addStickerToStoreWithUISticker:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5;
- (void)_configure;
- (void)beginHidingInterfaceWithMessage:(id)a3;
- (void)configureNewTrapOverlayView:(id *)a3 constraints:(id *)a4;
- (void)dealloc;
- (void)didBecomeActiveWithConversation:(id)a3;
- (void)didResignActiveWithConversation:(id)a3;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)layoutMonitorDidUpdateDisplayLayout:(id)a3 withContext:(id)a4;
- (void)scheduleSnapshotEnabledUpdateAfter:(double)a3 currentValue:(id)a4 futureValue:(id)a5;
- (void)setCustomOverlayMessage:(id)a3;
- (void)setSnapshottingEnabled:(BOOL)a3;
- (void)setupDisplayLayoutMonitor;
- (void)updateHiddenSubviewsForAnyOverlays;
- (void)updateLandscapeOverlayIfNecessaryWithCoordinator:(id)a3;
- (void)updateLandscapeOverlayImmediately;
- (void)updateSnapshotWithCompletionBlock:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willResignActiveWithConversation:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation BaseMessagesViewController

- (BaseMessagesViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BaseMessagesViewController;
  v3 = [(BaseMessagesViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(BaseMessagesViewController *)v3 _configure];
  }

  return v4;
}

- (BaseMessagesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = BaseMessagesViewController;
  v4 = [(BaseMessagesViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(BaseMessagesViewController *)v4 _configure];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(BaseMessagesViewController *)self displayLayoutMonitor];

  if (v3)
  {
    v4 = [(BaseMessagesViewController *)self displayLayoutMonitor];
    [v4 invalidate];
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

- (id)overrideTraitCollectionForChildViewController:(id)a3
{
  v3 = [(BaseMessagesViewController *)self traitCollection];
  v4 = [AVTUITraitCollectionHelper overridenTraitFromTrait:v3];

  return v4;
}

- (void)configureNewTrapOverlayView:(id *)a3 constraints:(id *)a4
{
  v5 = [[TrapOverlayView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = [(BaseMessagesViewController *)self overlayMessageBackgroundColor];
  [(TrapOverlayView *)v5 setBackgroundColor:v6];

  v7 = [(BaseMessagesViewController *)self overlayMessageTextColor];
  v8 = [(TrapOverlayView *)v5 label];
  [v8 setTextColor:v7];

  [(TrapOverlayView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(BaseMessagesViewController *)self view];
  [v9 addSubview:v5];

  v27 = [(TrapOverlayView *)v5 leadingAnchor];
  v28 = [(BaseMessagesViewController *)self view];
  v26 = [v28 leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v31[0] = v25;
  v23 = [(TrapOverlayView *)v5 trailingAnchor];
  v24 = [(BaseMessagesViewController *)self view];
  v22 = [v24 trailingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v31[1] = v21;
  v10 = [(TrapOverlayView *)v5 topAnchor];
  v11 = [(BaseMessagesViewController *)self view];
  v12 = [v11 topAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v31[2] = v13;
  v14 = [(TrapOverlayView *)v5 bottomAnchor];
  v15 = [(BaseMessagesViewController *)self view];
  v16 = [v15 bottomAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v31[3] = v17;
  v18 = [NSArray arrayWithObjects:v31 count:4];

  [NSLayoutConstraint activateConstraints:v18];
  v19 = v5;
  *a3 = v5;
  v20 = v18;
  *a4 = v18;
}

- (void)setCustomOverlayMessage:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_customOverlayMessage, a3);
  if (v5)
  {
    if (self->_customMessageTrapOverlay)
    {
      v6 = [(BaseMessagesViewController *)self view];
      [(TrapOverlayView *)v6 bringSubviewToFront:self->_landscapeTrapOverlay];
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
      v6 = v10;

      customMessageOverlayConstraints = self->_customMessageOverlayConstraints;
      self->_customMessageOverlayConstraints = v11;
    }

    v14 = [(TrapOverlayView *)self->_customMessageTrapOverlay label];
    [v14 setText:v5];

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
  v4 = [(BaseMessagesViewController *)self currentOrientation];
  self->_previousOrientation = v4;
  if (v4 == previousOrientation)
  {
    return 0;
  }

  if (previousOrientation)
  {
    return ((previousOrientation - 3) < 2) ^ ((v4 - 3) < 2);
  }

  return 1;
}

- (BOOL)needsLandscapeOverlayUpdate
{
  v3 = [(BaseMessagesViewController *)self automaticallyDisplaysLandscapeRotationOverlay];
  if (v3)
  {

    LOBYTE(v3) = [(BaseMessagesViewController *)self didOrientationChangeSemantically];
  }

  return v3;
}

- (void)updateLandscapeOverlayImmediately
{
  if ([(BaseMessagesViewController *)self automaticallyDisplaysLandscapeRotationOverlay])
  {
    if ([(BaseMessagesViewController *)self isLandscapeMode])
    {
      v3 = [(BaseMessagesViewController *)self currentControllerPresentation];

      if (v3)
      {
        v4 = [(BaseMessagesViewController *)self currentControllerPresentation];
        [v4 viewWillBeObstructed];
      }

      if (self->_landscapeTrapOverlay)
      {
        v5 = [(BaseMessagesViewController *)self view];
        [(TrapOverlayView *)v5 bringSubviewToFront:self->_landscapeTrapOverlay];
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
        v5 = v9;

        landscapeOverlayConstraints = self->_landscapeOverlayConstraints;
        self->_landscapeOverlayConstraints = v10;
      }

      v13 = [(BaseMessagesViewController *)self landscapeOverlayMessage];
      v14 = [(TrapOverlayView *)self->_landscapeTrapOverlay label];
      [v14 setText:v13];

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

- (void)updateLandscapeOverlayIfNecessaryWithCoordinator:(id)a3
{
  if (a3)
  {
    v4[4] = self;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100003904;
    v5[3] = &unk_1000A2730;
    v5[4] = self;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100003A84;
    v4[3] = &unk_1000A2730;
    [a3 animateAlongsideTransition:v5 completion:v4];
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
  v5 = [(BaseMessagesViewController *)self view];
  v6 = [v5 subviews];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
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
          objc_enumerationMutation(v6);
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
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
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
  v3 = [v2 localizedStringForKey:@"StickersLandscapeTrapMessage" value:&stru_1000A66E8 table:@"Localizable"];

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BaseMessagesViewController;
  [(BaseMessagesViewController *)&v5 viewDidLoad];
  v3 = +[AVTUIColorRepository appBackgroundColor];
  v4 = [(BaseMessagesViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BaseMessagesViewController;
  [(BaseMessagesViewController *)&v5 viewDidAppear:a3];
  [(BaseMessagesViewController *)self scheduleSnapshotEnabledUpdateAfter:0 currentValue:&__kCFBooleanTrue futureValue:1.0];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"BaseMessagesViewControllerDidAppearNotification" object:self];
}

- (void)scheduleSnapshotEnabledUpdateAfter:(double)a3 currentValue:(id)a4 futureValue:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BaseAnimoji] updating snapshottingEnabled applying currentValue: %@", buf, 0xCu);
    }

    -[BaseMessagesViewController setSnapshottingEnabled:](self, "setSnapshottingEnabled:", [v8 BOOLValue]);
  }

  if (v9)
  {
    v10 = (self->_snapshottingEnabledUpdateIdentifier + 1);
    self->_snapshottingEnabledUpdateIdentifier = v10;
    objc_initWeak(buf, self);
    v11 = dispatch_time(0, (a3 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003FDC;
    block[3] = &unk_1000A2758;
    objc_copyWeak(v14, buf);
    v14[1] = v10;
    v13 = v9;
    dispatch_after(v11, &_dispatch_main_q, block);

    objc_destroyWeak(v14);
    objc_destroyWeak(buf);
  }
}

- (void)setSnapshottingEnabled:(BOOL)a3
{
  if (self->_snapshottingEnabled != a3)
  {
    [(BaseMessagesViewController *)self willChangeValueForKey:@"snapshottingEnabled"];
    self->_snapshottingEnabled = a3;
    [(BaseMessagesViewController *)self didChangeValueForKey:@"snapshottingEnabled"];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"BaseMessagesViewControllerSnapshottingEnabledChangedNotification" object:self userInfo:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = BaseMessagesViewController;
  v7 = a4;
  [(BaseMessagesViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  self->_previousSize.width = width;
  self->_previousSize.height = height;
  [(BaseMessagesViewController *)self updateLandscapeOverlayIfNecessaryWithCoordinator:v7, v8.receiver, v8.super_class];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = BaseMessagesViewController;
  [(BaseMessagesViewController *)&v9 viewDidLayoutSubviews];
  v3 = [(BaseMessagesViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  if (self->_previousSize.width != v5 || self->_previousSize.height != v7)
  {
    self->_previousSize.width = v5;
    self->_previousSize.height = v7;
    [(BaseMessagesViewController *)self updateLandscapeOverlayIfNecessaryWithCoordinator:0];
  }
}

- (id)defaultMessagesChildViewControllerForPresentationContext:(unint64_t)a3
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

- (void)willBecomeActiveWithConversation:(id)a3
{
  v42.receiver = self;
  v42.super_class = BaseMessagesViewController;
  v4 = a3;
  [(BaseMessagesViewController *)&v42 willBecomeActiveWithConversation:v4];
  if (![(BaseMessagesViewController *)self isLoaded])
  {
    [(BaseMessagesViewController *)self setIsLoaded:1];
    v5 = +[AVTUIControllerPresentation pendingGlobalPresentation];
    [(BaseMessagesViewController *)self setCurrentControllerPresentation:v5];
    v6 = +[BaseMessagesViewController pendingChildViewController];
    v7 = v6;
    if (v5)
    {
      v8 = [v5 controller];
      [v5 setModalMessagesController:self];
      v9 = +[AVTUIColorRepository modalBackgroundColor];
      v10 = [(BaseMessagesViewController *)self view];
      [v10 setBackgroundColor:v9];

      if (!v8)
      {
LABEL_12:
        [(BaseMessagesViewController *)self updateLandscapeOverlayImmediately];

        goto LABEL_13;
      }
    }

    else if (v6)
    {
      v8 = v6;
      [BaseMessagesViewController setPendingChildViewController:0];
    }

    else
    {
      v11 = [(BaseMessagesViewController *)self baseMessagesViewController];

      if (!v11)
      {
        v12 = [(BaseMessagesViewController *)self defaultMessagesChildViewControllerForPresentationContext:[(BaseMessagesViewController *)self presentationContext]];
        [(BaseMessagesViewController *)self setBaseMessagesViewController:v12];
      }

      v8 = [(BaseMessagesViewController *)self baseMessagesViewController];
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v13 = [v8 parentViewController];

    if (!v13)
    {
      v14 = [(BaseMessagesViewController *)self view];
      v15 = [v8 view];
      [v14 addSubview:v15];

      v16 = [v8 view];
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

      v40 = [(BaseMessagesViewController *)self view];
      v38 = [v40 leftAnchor];
      v39 = [v8 view];
      v37 = [v39 leftAnchor];
      v36 = [v38 constraintEqualToAnchor:v37];
      v43[0] = v36;
      v35 = [(BaseMessagesViewController *)self view];
      v33 = [v35 rightAnchor];
      v34 = [v8 view];
      v32 = [v34 rightAnchor];
      v31 = [v33 constraintEqualToAnchor:v32];
      v43[1] = v31;
      v30 = [(BaseMessagesViewController *)self view];
      v28 = [v30 topAnchor];
      v29 = [v8 view];
      v27 = [v29 topAnchor];
      v26 = [v28 constraintEqualToAnchor:v27];
      v43[2] = v26;
      v17 = [(BaseMessagesViewController *)self view];
      v18 = [v17 bottomAnchor];
      [v8 view];
      v19 = v41 = v7;
      v20 = [v19 bottomAnchor];
      v21 = [v18 constraintEqualToAnchor:v20];
      v43[3] = v21;
      v22 = [NSArray arrayWithObjects:v43 count:4];
      [(BaseMessagesViewController *)self setChildConstraints:v22];

      v7 = v41;
      v23 = [(BaseMessagesViewController *)self view];
      v24 = [(BaseMessagesViewController *)self childConstraints];
      [v23 addConstraints:v24];

      [(BaseMessagesViewController *)self addChildViewController:v8];
      [v8 didMoveToParentViewController:self];
    }

    goto LABEL_12;
  }

LABEL_13:
  v25 = [(BaseMessagesViewController *)self baseMessagesViewController];
  [v25 willBecomeActiveWithConversation:v4];
}

- (void)didBecomeActiveWithConversation:(id)a3
{
  v6.receiver = self;
  v6.super_class = BaseMessagesViewController;
  v4 = a3;
  [(BaseMessagesViewController *)&v6 didBecomeActiveWithConversation:v4];
  v5 = [(BaseMessagesViewController *)self baseMessagesViewController:v6.receiver];
  [v5 didBecomeActiveWithConversation:v4];

  [(BaseMessagesViewController *)self setupDisplayLayoutMonitor];
}

- (void)willResignActiveWithConversation:(id)a3
{
  v7.receiver = self;
  v7.super_class = BaseMessagesViewController;
  v4 = a3;
  [(BaseMessagesViewController *)&v7 willResignActiveWithConversation:v4];
  v5 = [(BaseMessagesViewController *)self baseMessagesViewController:v7.receiver];
  [v5 willResignActiveWithConversation:v4];

  v6 = [(BaseMessagesViewController *)self displayLayoutMonitor];
  [v6 invalidate];

  [(BaseMessagesViewController *)self setDisplayLayoutMonitor:0];
}

- (void)didResignActiveWithConversation:(id)a3
{
  v6.receiver = self;
  v6.super_class = BaseMessagesViewController;
  v4 = a3;
  [(BaseMessagesViewController *)&v6 didResignActiveWithConversation:v4];
  v5 = [(BaseMessagesViewController *)self baseMessagesViewController:v6.receiver];
  [v5 didResignActiveWithConversation:v4];
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = BaseMessagesViewController;
  [(BaseMessagesViewController *)&v6 willTransitionToPresentationStyle:?];
  if (!a3)
  {
    [(BaseMessagesViewController *)self scheduleSnapshotEnabledUpdateAfter:&__kCFBooleanFalse currentValue:0 futureValue:0.0];
  }

  v5 = [(BaseMessagesViewController *)self baseMessagesViewController];
  [v5 willTransitionToPresentationStyle:a3];
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = BaseMessagesViewController;
  [(BaseMessagesViewController *)&v6 didTransitionToPresentationStyle:?];
  if (!a3)
  {
    [(BaseMessagesViewController *)self scheduleSnapshotEnabledUpdateAfter:&__kCFBooleanFalse currentValue:&__kCFBooleanTrue futureValue:0.1];
  }

  v5 = [(BaseMessagesViewController *)self baseMessagesViewController];
  [v5 didTransitionToPresentationStyle:a3];
}

- (UIImage)emptySnapshotImage
{
  v12.width = 1.0;
  v12.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v12, 1, 0.0);
  v3 = [(BaseMessagesViewController *)self childViewControllers];
  v4 = [v3 lastObject];

  v5 = [(BaseMessagesViewController *)self view];
  v6 = [v5 backgroundColor];
  v7 = [v4 traitCollection];
  v8 = [v6 resolvedColorWithTraitCollection:v7];
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

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BaseMessagesViewController *)self baseMessagesViewController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(BaseMessagesViewController *)self snapshottingEnabled];
      v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BaseAnimoji] updateSnapshotWithCompletionBlock snapshots enabled", buf, 2u);
        }

        v9 = [(BaseMessagesViewController *)self baseMessagesViewController];
        [v9 updateSnapshotWithCompletionBlock:v4];
      }

      else
      {
        if (v8)
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BaseAnimoji] updateSnapshotWithCompletionBlock snapshots disabled, returning 1x1 empty snapshot", v11, 2u);
        }

        v9 = [(BaseMessagesViewController *)self emptySnapshotImage];
        v4[2](v4, v9);
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10[0] = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BaseAnimoji] updateSnapshotWithCompletionBlock snapshots disabled", v10, 2u);
      }

      v4[2](v4, 0);
    }
  }
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  (*(a4 + 2))(v5, v6, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 completionWithStickerIDs:(id)a4
{
  v5 = a4;
  v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  (*(a4 + 2))(v5, 0, v6, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  (*(a5 + 2))(v6, 0, v7);
}

- (void)_addStickerToStoreWithRepresentations:(id)a3 sourceRect:(CGRect)a4 effect:(int64_t)a5 completion:(id)a6
{
  v7 = a6;
  v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  (*(a6 + 2))(v7, 0, v8);
}

- (void)_addStickerToStoreWithUISticker:(id)a3 sourceRect:(CGRect)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  (*(a5 + 2))(v6, 0, v7);
}

- (void)setupDisplayLayoutMonitor
{
  v3 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100005120;
  v8 = &unk_1000A2780;
  objc_copyWeak(&v9, &location);
  [v3 setTransitionHandler:&v5];
  v4 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v3, v5, v6, v7, v8];
  [(BaseMessagesViewController *)self setDisplayLayoutMonitor:v4];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)layoutMonitorDidUpdateDisplayLayout:(id)a3 withContext:(id)a4
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [a3 elements];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v22 = *v26;
    v7 = FBSDisplayLayoutElementControlCenterIdentifier;
    v8 = FBSDisplayLayoutElementLockScreenIdentifier;
    v9 = FBSDisplayLayoutElementSiriIdentifier;
    v21 = FBSDisplayLayoutElementNotificationCenterIdentifier;
    v19 = self;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 identifier];
        if ([v12 isEqualToString:v7])
        {
          goto LABEL_16;
        }

        v13 = [v11 identifier];
        if ([v13 isEqualToString:v8])
        {
          goto LABEL_15;
        }

        v14 = [v11 identifier];
        if ([v14 isEqualToString:v9])
        {

LABEL_15:
LABEL_16:

LABEL_17:
          v17 = 1;
          self = v19;
          goto LABEL_18;
        }

        v15 = [v11 identifier];
        v16 = [v15 isEqualToString:v21];

        if (v16)
        {
          goto LABEL_17;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v17 = 0;
      self = v19;
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
  v23[2] = sub_100005418;
  v23[3] = &unk_1000A27A8;
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

- (void)beginHidingInterfaceWithMessage:(id)a3
{
  if (!a3)
  {
    a3 = &stru_1000A66E8;
  }

  [(BaseMessagesViewController *)self setCustomOverlayMessage:a3];
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