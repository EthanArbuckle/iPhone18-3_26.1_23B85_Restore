@interface HWCKBrowserViewController
- (CKBrowserViewControllerSendDelegate)sendDelegate;
- (HWCKBrowserViewController)initWithBalloonPlugin:(id)plugin;
- (HWCKBrowserViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIView)dragTargetView;
- (int64_t)browserPresentationStyle;
- (void)dismiss;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setCurrentBrowserConsumer:(int64_t)consumer;
- (void)setDragTargetView:(id)view;
- (void)setSendDelegate:(id)delegate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HWCKBrowserViewController

- (HWCKBrowserViewController)initWithBalloonPlugin:(id)plugin dataSource:(id)source
{
  sourceCopy = source;
  v8 = [(HWCKBrowserViewController *)self initWithBalloonPlugin:plugin];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_balloonPluginDataSource, source);
  }

  return v9;
}

- (HWCKBrowserViewController)initWithBalloonPlugin:(id)plugin
{
  pluginCopy = plugin;
  v9.receiver = self;
  v9.super_class = HWCKBrowserViewController;
  v6 = [(HWCKBrowserViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_balloonPlugin, plugin);
    v7->_isPrimaryViewController = 1;
  }

  return v7;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = HWCKBrowserViewController;
  [(HWCKBrowserViewController *)&v8 viewWillDisappear:disappear];
  balloonPlugin = [(HWCKBrowserViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  v6 = [identifier isEqualToString:IMBalloonPluginIdentifierDT];

  if (v6)
  {
    sendDelegate = [(HWCKBrowserViewController *)self sendDelegate];
    [sendDelegate setLocalUserIsTyping:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = HWCKBrowserViewController;
  [(HWCKBrowserViewController *)&v8 viewDidAppear:appear];
  balloonPlugin = [(HWCKBrowserViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  v6 = [identifier isEqualToString:IMBalloonPluginIdentifierDT];

  if (v6)
  {
    sendDelegate = [(HWCKBrowserViewController *)self sendDelegate];
    [sendDelegate setLocalUserIsTyping:1];
  }
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = HWCKBrowserViewController;
  [(HWCKBrowserViewController *)&v15 loadView];
  view = [(HWCKBrowserViewController *)self view];
  [view setOpaque:0];

  view2 = [(HWCKBrowserViewController *)self view];
  sharedBehaviors = [sub_EB58() sharedBehaviors];
  theme = [sharedBehaviors theme];
  browserBackgroundColor = [theme browserBackgroundColor];
  [view2 setBackgroundColor:browserBackgroundColor];

  if ([(HWCKBrowserViewController *)self conformsToProtocol:&OBJC_PROTOCOL___CKBrowserDragControllerDelegate])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dragTargetView);
    if (!WeakRetained)
    {
      view3 = [(HWCKBrowserViewController *)self view];
      objc_storeWeak(&self->_dragTargetView, view3);

      WeakRetained = objc_loadWeakRetained(&self->_dragTargetView);
    }

    v10 = [objc_alloc(sub_EC38()) initWithTargetView:WeakRetained];
    browserDragManager = self->_browserDragManager;
    self->_browserDragManager = v10;

    [(CKBrowserDragManager *)self->_browserDragManager setDelegate:self];
    v12 = self->_browserDragManager;
    sendDelegate = [(HWCKBrowserViewController *)self sendDelegate];
    dragControllerTranscriptDelegate = [sendDelegate dragControllerTranscriptDelegate];
    [(CKBrowserDragManager *)v12 setTranscriptDelegate:dragControllerTranscriptDelegate];
  }
}

- (void)setDragTargetView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_dragTargetView);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dragTargetView, obj);
    if ([(HWCKBrowserViewController *)self conformsToProtocol:&OBJC_PROTOCOL___CKBrowserDragControllerDelegate])
    {
      v5 = [objc_alloc(sub_EC38()) initWithTargetView:obj];
      browserDragManager = self->_browserDragManager;
      self->_browserDragManager = v5;

      [(CKBrowserDragManager *)self->_browserDragManager setDelegate:self];
      v7 = self->_browserDragManager;
      sendDelegate = [(HWCKBrowserViewController *)self sendDelegate];
      dragControllerTranscriptDelegate = [sendDelegate dragControllerTranscriptDelegate];
      [(CKBrowserDragManager *)v7 setTranscriptDelegate:dragControllerTranscriptDelegate];
    }
  }
}

- (void)setSendDelegate:(id)delegate
{
  objc_storeWeak(&self->_sendDelegate, delegate);
  browserDragManager = self->_browserDragManager;
  sendDelegate = [(HWCKBrowserViewController *)self sendDelegate];
  dragControllerTranscriptDelegate = [sendDelegate dragControllerTranscriptDelegate];
  [(CKBrowserDragManager *)browserDragManager setTranscriptDelegate:dragControllerTranscriptDelegate];
}

- (int64_t)browserPresentationStyle
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  if ([(HWCKBrowserViewController *)self shouldPresentModally])
  {
    return 2;
  }

  return 0;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  if (absolute)
  {
    *absolute = 0;
  }

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  balloonPlugin = [(HWCKBrowserViewController *)self balloonPlugin];
  if ([balloonPlugin shouldHideAppSwitcher])
  {
    goto LABEL_7;
  }

  inCompactPresentation = [(HWCKBrowserViewController *)self inCompactPresentation];

  if (inCompactPresentation)
  {
    sharedBehaviors = [sub_EB58() sharedBehaviors];
    [sharedBehaviors browserSwitcherExpandThreshold];
    bottom = bottom + v11;

    view = [(HWCKBrowserViewController *)self view];
    [view safeAreaInsets];
    v14 = v13;

    if (v14 == 0.0)
    {
      balloonPlugin = [(HWCKBrowserViewController *)self view];
      window = [balloonPlugin window];
      [window safeAreaInsets];
      bottom = bottom + v16;

LABEL_7:
    }
  }

  top = UIEdgeInsetsZero.top;
  v18 = left;
  v19 = bottom;
  v20 = right;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = top;
  return result;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  if ([(HWCKBrowserViewController *)self browserPresentationStyle])
  {
    v12.receiver = self;
    v12.super_class = HWCKBrowserViewController;
    [(HWCKBrowserViewController *)&v12 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    presentationViewController = [(HWCKBrowserViewController *)self presentationViewController];

    if (presentationViewController)
    {
      presentationViewController2 = [(HWCKBrowserViewController *)self presentationViewController];
      [presentationViewController2 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
    }
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(HWCKBrowserViewController *)self browserPresentationStyle])
  {
    v9.receiver = self;
    v9.super_class = HWCKBrowserViewController;
    [(HWCKBrowserViewController *)&v9 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  else
  {
    presentationViewController = [(HWCKBrowserViewController *)self presentationViewController];

    if (presentationViewController)
    {
      presentationViewController2 = [(HWCKBrowserViewController *)self presentationViewController];
      [presentationViewController2 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
    }
  }
}

- (void)dismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_sendDelegate);
  if ([WeakRetained handwritingIsDisplayed])
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v3 = off_322A8;
    v9 = off_322A8;
    if (!off_322A8)
    {
      v4 = sub_F694();
      v7[3] = dlsym(v4, "CKSetHandwritingShouldBeAutoDisplayed");
      off_322A8 = v7[3];
      v3 = v7[3];
    }

    _Block_object_dispose(&v6, 8);
    if (!v3)
    {
      v5 = sub_1397C();
      _Block_object_dispose(&v6, 8);
      _Unwind_Resume(v5);
    }

    v3(0);
  }

  [WeakRetained startEditingPayload:0];
}

- (void)setCurrentBrowserConsumer:(int64_t)consumer
{
  if (self->_currentBrowserConsumer != consumer)
  {
    if ((consumer - 1) <= 1)
    {
      self->_previousConsumer = consumer;
    }

    self->_currentBrowserConsumer = consumer;
  }
}

- (CKBrowserViewControllerSendDelegate)sendDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sendDelegate);

  return WeakRetained;
}

- (UIView)dragTargetView
{
  WeakRetained = objc_loadWeakRetained(&self->_dragTargetView);

  return WeakRetained;
}

@end