@interface RPBroadcastActivityHostViewController
- (CGRect)popoverControllerSourceRect;
- (RPBroadcastActivityViewController)broadcastActivityViewController;
- (int64_t)modalPresentationStyle;
- (unint64_t)popoverArrowDirection;
- (void)presentationInfoWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation RPBroadcastActivityHostViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = RPBroadcastActivityHostViewController;
  [(RPBroadcastActivityHostViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(RPBroadcastActivityHostViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (CGRect)popoverControllerSourceRect
{
  WeakRetained = objc_loadWeakRetained(&self->_broadcastActivityViewController);
  v4 = [WeakRetained popoverPresentationController];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_broadcastActivityViewController);
    v6 = [v5 popoverPresentationController];
    v7 = [v6 sourceView];

    v8 = objc_loadWeakRetained(&self->_broadcastActivityViewController);
    v9 = [v8 popoverPresentationController];
    [v9 sourceRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [v7 superview];
    v19 = [v7 window];
    [v18 convertRect:v19 toView:{v11, v13, v15, v17}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
  }

  else
  {
    v21 = *MEMORY[0x277CBF3A0];
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    v25 = *(MEMORY[0x277CBF3A0] + 16);
    v27 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (unint64_t)popoverArrowDirection
{
  WeakRetained = objc_loadWeakRetained(&self->_broadcastActivityViewController);
  v3 = [WeakRetained popoverPresentationController];
  v4 = [v3 arrowDirection];

  return v4;
}

- (int64_t)modalPresentationStyle
{
  [(RPBroadcastActivityHostViewController *)self popoverControllerSourceRect];
  if (!CGRectEqualToRect(v6, *MEMORY[0x277CBF3A0]))
  {
    return 7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_broadcastActivityViewController);
  v4 = [WeakRetained modalPresentationStyle];

  return v4;
}

- (void)presentationInfoWithCompletion:(id)a3
{
  v10 = a3;
  v5 = [(RPBroadcastActivityHostViewController *)self modalPresentationStyle];
  [(RPBroadcastActivityHostViewController *)self popoverControllerSourceRect];
  (*(a3 + 2))(v10, v5, [(RPBroadcastActivityHostViewController *)self popoverArrowDirection], v6, v7, v8, v9);
}

- (RPBroadcastActivityViewController)broadcastActivityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_broadcastActivityViewController);

  return WeakRetained;
}

@end