@interface EKEditItemViewController
+ (id)preferredViewControllerForPresentationsFromViewController:(id)a3;
- (CGSize)preferredContentSize;
- (EKEditItemViewController)initWithFrame:(CGRect)a3;
- (EKEditItemViewControllerDelegate)editDelegate;
- (EKViewControllerRemoteUIDelegate)remoteUIDelegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_saveAndDismissWithForce:(BOOL)a3;
- (void)_saveAndDismissWithForce:(BOOL)a3 success:(BOOL)a4;
- (void)cancel;
- (void)didReceiveMemoryWarning;
- (void)popIfNonModal;
- (void)setCell:(id)a3 checked:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EKEditItemViewController

+ (id)preferredViewControllerForPresentationsFromViewController:(id)a3
{
  v3 = [a3 navigationController];
  v4 = [v3 presentingViewController];
  v5 = [v4 presentedViewController];

  if (!v5)
  {
    if ([v3 definesPresentationContext])
    {
      v6 = v3;
    }

    else
    {
      v6 = [v3 parentViewController];
    }

    v5 = v6;
    if (!v6)
    {
      v5 = v3;
    }
  }

  return v5;
}

- (EKEditItemViewController)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = EKEditItemViewController;
  result = [(EKEditItemViewController *)&v8 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_initialFrame.origin.x = x;
    result->_initialFrame.origin.y = y;
    result->_modal = 0;
    result->_initialFrame.size.width = width;
    result->_initialFrame.size.height = height;
    result->_showsDoneButton = 1;
  }

  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = EKEditItemViewController;
  [(EKEditItemViewController *)&v5 viewWillAppear:a3];
  if (![(EKEditItemViewController *)self fitsPopoverWhenKeyboardActive])
  {
    WeakRetained = objc_loadWeakRetained(&self->_editDelegate);
    [WeakRetained editItemViewControllerWantsKeyboardPinned:0];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = EKEditItemViewController;
  [(EKEditItemViewController *)&v7 viewDidLoad];
  if (self->_modal && self->_showsDoneButton)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
    v4 = [(EKEditItemViewController *)self navigationItem];
    [v4 setLeftBarButtonItem:v3];

    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_saveAndDismiss];
    v6 = [(EKEditItemViewController *)self navigationItem];
    [v6 setRightBarButtonItem:v5];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(EKEditItemViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v2);

  if (IsRegularInViewHierarchy)
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = EKEditItemViewController;
  [(EKEditItemViewController *)&v7 viewWillDisappear:a3];
  if (!self->_modal)
  {
    v4 = [(EKEditItemViewController *)self navigationController];
    v5 = [v4 viewControllers];
    v6 = [v5 containsObject:self];

    if ((v6 & 1) == 0)
    {
      [(EKEditItemViewController *)self saveAndDismissWithExtremePrejudice];
    }
  }
}

- (void)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_editDelegate);
  [WeakRetained editItemViewController:self didCompleteWithAction:0];
}

- (void)_saveAndDismissWithForce:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__EKEditItemViewController__saveAndDismissWithForce___block_invoke;
  v3[3] = &unk_1E8440040;
  v3[4] = self;
  [(EKEditItemViewController *)self validateAllowingAlert:!a3 callback:v3];
}

- (void)_saveAndDismissWithForce:(BOOL)a3 success:(BOOL)a4
{
  if (!a4)
  {
    if (!a3)
    {
      return;
    }

    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_editDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_editDelegate);
    v9 = [v8 editItemViewControllerSave:self];

    if (!a3)
    {
      goto LABEL_10;
    }

LABEL_8:
    v10 = objc_loadWeakRetained(&self->_editDelegate);
    v11 = [v10 editItemViewControllerShouldShowDetachAlert];

    if (v11)
    {
      v12 = [(EKEditItemViewController *)self navigationController];
      v13 = [v12 navigationBar];
      v14 = [(EKEditItemViewController *)self navigationController];
      v15 = [v14 navigationBar];
      [v15 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = objc_loadWeakRetained(&self->_editDelegate);
      v25 = [v24 editItemEventToDetach];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __61__EKEditItemViewController__saveAndDismissWithForce_success___block_invoke;
      v31[3] = &unk_1E843FE10;
      v31[4] = self;
      v26 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:self sourceView:v13 sourceRect:v25 forEvent:v31 withCompletionHandler:v17, v19, v21, v23];
      recurrenceAlertController = self->_recurrenceAlertController;
      self->_recurrenceAlertController = v26;

      return;
    }

    v30 = objc_loadWeakRetained(&self->_editDelegate);
    [v30 editItemViewController:self didCompleteWithAction:{2, v30}];
    goto LABEL_14;
  }

  v9 = 1;
  if (a3)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (!v9)
  {
    return;
  }

  v28 = objc_loadWeakRetained(&self->_editDelegate);
  [v28 editItemViewController:self didCompleteWithAction:{1, v28}];
LABEL_14:
}

void __61__EKEditItemViewController__saveAndDismissWithForce_success___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 > 3)
  {
    if ((a2 - 4) < 2)
    {
      return;
    }

    v5 = 0;
  }

  else
  {
    if (a2 == 2)
    {
      v3 = 5;
    }

    else
    {
      v3 = 0;
    }

    if (a2 == 1)
    {
      v4 = 4;
    }

    else
    {
      v4 = v3;
    }

    if (a2)
    {
      v5 = v4;
    }

    else
    {
      v5 = 3;
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1040));
  [WeakRetained editItemViewController:*(a1 + 32) didCompleteWithAction:v5];

  v7 = *(a1 + 32);
  v8 = *(v7 + 1048);
  *(v7 + 1048) = 0;
}

- (void)popIfNonModal
{
  if (!self->_modal)
  {
    v4 = [(EKEditItemViewController *)self navigationController];
    v3 = [v4 popViewControllerAnimated:1];
  }
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = EKEditItemViewController;
  [(EKEditItemViewController *)&v2 didReceiveMemoryWarning];
}

- (CGSize)preferredContentSize
{
  v3 = [(EKEditItemViewController *)self view];
  [v3 sizeThatFits:{2147483650.0, 2147483650.0}];
  v5 = v4;
  v7 = v6;

  v8 = [(EKEditItemViewController *)self navigationController];
  v9 = [v8 isToolbarHidden];

  if ((v9 & 1) == 0)
  {
    v10 = [(EKEditItemViewController *)self navigationController];
    v11 = [v10 toolbar];
    [v11 bounds];
    v7 = v7 + CGRectGetHeight(v17);
  }

  v12 = [(EKEditItemViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v12);

  if (IsRegularInViewHierarchy)
  {
    if (v7 > 600.0)
    {
      v7 = 600.0;
    }

    v5 = EKUIContainedControllerIdealWidth();
  }

  v14 = v5;
  v15 = v7;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setCell:(id)a3 checked:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if ([v8 accessoryType] == 3 || !objc_msgSend(v8, "accessoryType"))
  {
    if (v4)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }

    v6 = [MEMORY[0x1E69DC888] labelColor];
    [v8 setAccessoryType:v5];
    [v8 setAccessoryView:0];
    v7 = [v8 textLabel];
    [v7 setTextColor:v6];
  }
}

- (EKEditItemViewControllerDelegate)editDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editDelegate);

  return WeakRetained;
}

- (EKViewControllerRemoteUIDelegate)remoteUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteUIDelegate);

  return WeakRetained;
}

@end