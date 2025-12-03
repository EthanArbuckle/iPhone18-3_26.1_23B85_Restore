@interface RPBroadcastActivityHostViewController
- (CGRect)popoverControllerSourceRect;
- (RPBroadcastActivityViewController)broadcastActivityViewController;
- (int64_t)modalPresentationStyle;
- (unint64_t)popoverArrowDirection;
- (void)presentationInfoWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation RPBroadcastActivityHostViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = RPBroadcastActivityHostViewController;
  [(RPBroadcastActivityHostViewController *)&v5 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(RPBroadcastActivityHostViewController *)self view];
  [view setBackgroundColor:clearColor];
}

- (CGRect)popoverControllerSourceRect
{
  WeakRetained = objc_loadWeakRetained(&self->_broadcastActivityViewController);
  popoverPresentationController = [WeakRetained popoverPresentationController];

  if (popoverPresentationController)
  {
    v5 = objc_loadWeakRetained(&self->_broadcastActivityViewController);
    popoverPresentationController2 = [v5 popoverPresentationController];
    sourceView = [popoverPresentationController2 sourceView];

    v8 = objc_loadWeakRetained(&self->_broadcastActivityViewController);
    popoverPresentationController3 = [v8 popoverPresentationController];
    [popoverPresentationController3 sourceRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    superview = [sourceView superview];
    window = [sourceView window];
    [superview convertRect:window toView:{v11, v13, v15, v17}];
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
  popoverPresentationController = [WeakRetained popoverPresentationController];
  arrowDirection = [popoverPresentationController arrowDirection];

  return arrowDirection;
}

- (int64_t)modalPresentationStyle
{
  [(RPBroadcastActivityHostViewController *)self popoverControllerSourceRect];
  if (!CGRectEqualToRect(v6, *MEMORY[0x277CBF3A0]))
  {
    return 7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_broadcastActivityViewController);
  modalPresentationStyle = [WeakRetained modalPresentationStyle];

  return modalPresentationStyle;
}

- (void)presentationInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  modalPresentationStyle = [(RPBroadcastActivityHostViewController *)self modalPresentationStyle];
  [(RPBroadcastActivityHostViewController *)self popoverControllerSourceRect];
  (*(completion + 2))(completionCopy, modalPresentationStyle, [(RPBroadcastActivityHostViewController *)self popoverArrowDirection], v6, v7, v8, v9);
}

- (RPBroadcastActivityViewController)broadcastActivityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_broadcastActivityViewController);

  return WeakRetained;
}

@end