@interface HWCKBrowserViewController
- (CKBrowserViewControllerSendDelegate)sendDelegate;
- (HWCKBrowserViewController)initWithBalloonPlugin:(id)a3;
- (HWCKBrowserViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIView)dragTargetView;
- (int64_t)browserPresentationStyle;
- (void)dismiss;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)loadView;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setCurrentBrowserConsumer:(int64_t)a3;
- (void)setDragTargetView:(id)a3;
- (void)setSendDelegate:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HWCKBrowserViewController

- (HWCKBrowserViewController)initWithBalloonPlugin:(id)a3 dataSource:(id)a4
{
  v7 = a4;
  v8 = [(HWCKBrowserViewController *)self initWithBalloonPlugin:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_balloonPluginDataSource, a4);
  }

  return v9;
}

- (HWCKBrowserViewController)initWithBalloonPlugin:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HWCKBrowserViewController;
  v6 = [(HWCKBrowserViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_balloonPlugin, a3);
    v7->_isPrimaryViewController = 1;
  }

  return v7;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HWCKBrowserViewController;
  [(HWCKBrowserViewController *)&v8 viewWillDisappear:a3];
  v4 = [(HWCKBrowserViewController *)self balloonPlugin];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:IMBalloonPluginIdentifierDT];

  if (v6)
  {
    v7 = [(HWCKBrowserViewController *)self sendDelegate];
    [v7 setLocalUserIsTyping:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HWCKBrowserViewController;
  [(HWCKBrowserViewController *)&v8 viewDidAppear:a3];
  v4 = [(HWCKBrowserViewController *)self balloonPlugin];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:IMBalloonPluginIdentifierDT];

  if (v6)
  {
    v7 = [(HWCKBrowserViewController *)self sendDelegate];
    [v7 setLocalUserIsTyping:1];
  }
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = HWCKBrowserViewController;
  [(HWCKBrowserViewController *)&v15 loadView];
  v3 = [(HWCKBrowserViewController *)self view];
  [v3 setOpaque:0];

  v4 = [(HWCKBrowserViewController *)self view];
  v5 = [sub_EB58() sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 browserBackgroundColor];
  [v4 setBackgroundColor:v7];

  if ([(HWCKBrowserViewController *)self conformsToProtocol:&OBJC_PROTOCOL___CKBrowserDragControllerDelegate])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dragTargetView);
    if (!WeakRetained)
    {
      v9 = [(HWCKBrowserViewController *)self view];
      objc_storeWeak(&self->_dragTargetView, v9);

      WeakRetained = objc_loadWeakRetained(&self->_dragTargetView);
    }

    v10 = [objc_alloc(sub_EC38()) initWithTargetView:WeakRetained];
    browserDragManager = self->_browserDragManager;
    self->_browserDragManager = v10;

    [(CKBrowserDragManager *)self->_browserDragManager setDelegate:self];
    v12 = self->_browserDragManager;
    v13 = [(HWCKBrowserViewController *)self sendDelegate];
    v14 = [v13 dragControllerTranscriptDelegate];
    [(CKBrowserDragManager *)v12 setTranscriptDelegate:v14];
  }
}

- (void)setDragTargetView:(id)a3
{
  obj = a3;
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
      v8 = [(HWCKBrowserViewController *)self sendDelegate];
      v9 = [v8 dragControllerTranscriptDelegate];
      [(CKBrowserDragManager *)v7 setTranscriptDelegate:v9];
    }
  }
}

- (void)setSendDelegate:(id)a3
{
  objc_storeWeak(&self->_sendDelegate, a3);
  browserDragManager = self->_browserDragManager;
  v6 = [(HWCKBrowserViewController *)self sendDelegate];
  v5 = [v6 dragControllerTranscriptDelegate];
  [(CKBrowserDragManager *)browserDragManager setTranscriptDelegate:v5];
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

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v8 = [(HWCKBrowserViewController *)self balloonPlugin];
  if ([v8 shouldHideAppSwitcher])
  {
    goto LABEL_7;
  }

  v9 = [(HWCKBrowserViewController *)self inCompactPresentation];

  if (v9)
  {
    v10 = [sub_EB58() sharedBehaviors];
    [v10 browserSwitcherExpandThreshold];
    bottom = bottom + v11;

    v12 = [(HWCKBrowserViewController *)self view];
    [v12 safeAreaInsets];
    v14 = v13;

    if (v14 == 0.0)
    {
      v8 = [(HWCKBrowserViewController *)self view];
      v15 = [v8 window];
      [v15 safeAreaInsets];
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

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if ([(HWCKBrowserViewController *)self browserPresentationStyle])
  {
    v12.receiver = self;
    v12.super_class = HWCKBrowserViewController;
    [(HWCKBrowserViewController *)&v12 presentViewController:v8 animated:v6 completion:v9];
  }

  else
  {
    v10 = [(HWCKBrowserViewController *)self presentationViewController];

    if (v10)
    {
      v11 = [(HWCKBrowserViewController *)self presentationViewController];
      [v11 presentViewController:v8 animated:v6 completion:v9];
    }
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(HWCKBrowserViewController *)self browserPresentationStyle])
  {
    v9.receiver = self;
    v9.super_class = HWCKBrowserViewController;
    [(HWCKBrowserViewController *)&v9 dismissViewControllerAnimated:v4 completion:v6];
  }

  else
  {
    v7 = [(HWCKBrowserViewController *)self presentationViewController];

    if (v7)
    {
      v8 = [(HWCKBrowserViewController *)self presentationViewController];
      [v8 dismissViewControllerAnimated:v4 completion:v6];
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

- (void)setCurrentBrowserConsumer:(int64_t)a3
{
  if (self->_currentBrowserConsumer != a3)
  {
    if ((a3 - 1) <= 1)
    {
      self->_previousConsumer = a3;
    }

    self->_currentBrowserConsumer = a3;
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