@interface EKEditItemViewController
+ (id)preferredViewControllerForPresentationsFromViewController:(id)controller;
- (CGSize)preferredContentSize;
- (EKEditItemViewController)initWithFrame:(CGRect)frame;
- (EKEditItemViewControllerDelegate)editDelegate;
- (EKViewControllerRemoteUIDelegate)remoteUIDelegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_saveAndDismissWithForce:(BOOL)force;
- (void)_saveAndDismissWithForce:(BOOL)force success:(BOOL)success;
- (void)cancel;
- (void)didReceiveMemoryWarning;
- (void)popIfNonModal;
- (void)setCell:(id)cell checked:(BOOL)checked;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EKEditItemViewController

+ (id)preferredViewControllerForPresentationsFromViewController:(id)controller
{
  navigationController = [controller navigationController];
  presentingViewController = [navigationController presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];

  if (!presentedViewController)
  {
    if ([navigationController definesPresentationContext])
    {
      parentViewController = navigationController;
    }

    else
    {
      parentViewController = [navigationController parentViewController];
    }

    presentedViewController = parentViewController;
    if (!parentViewController)
    {
      presentedViewController = navigationController;
    }
  }

  return presentedViewController;
}

- (EKEditItemViewController)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = EKEditItemViewController;
  [(EKEditItemViewController *)&v5 viewWillAppear:appear];
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
    navigationItem = [(EKEditItemViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v3];

    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_saveAndDismiss];
    navigationItem2 = [(EKEditItemViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v5];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(EKEditItemViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view);

  if (IsRegularInViewHierarchy)
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = EKEditItemViewController;
  [(EKEditItemViewController *)&v7 viewWillDisappear:disappear];
  if (!self->_modal)
  {
    navigationController = [(EKEditItemViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v6 = [viewControllers containsObject:self];

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

- (void)_saveAndDismissWithForce:(BOOL)force
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__EKEditItemViewController__saveAndDismissWithForce___block_invoke;
  v3[3] = &unk_1E8440040;
  v3[4] = self;
  [(EKEditItemViewController *)self validateAllowingAlert:!force callback:v3];
}

- (void)_saveAndDismissWithForce:(BOOL)force success:(BOOL)success
{
  if (!success)
  {
    if (!force)
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

    if (!force)
    {
      goto LABEL_10;
    }

LABEL_8:
    v10 = objc_loadWeakRetained(&self->_editDelegate);
    editItemViewControllerShouldShowDetachAlert = [v10 editItemViewControllerShouldShowDetachAlert];

    if (editItemViewControllerShouldShowDetachAlert)
    {
      navigationController = [(EKEditItemViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      navigationController2 = [(EKEditItemViewController *)self navigationController];
      navigationBar2 = [navigationController2 navigationBar];
      [navigationBar2 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = objc_loadWeakRetained(&self->_editDelegate);
      editItemEventToDetach = [v24 editItemEventToDetach];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __61__EKEditItemViewController__saveAndDismissWithForce_success___block_invoke;
      v31[3] = &unk_1E843FE10;
      v31[4] = self;
      v26 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:self sourceView:navigationBar sourceRect:editItemEventToDetach forEvent:v31 withCompletionHandler:v17, v19, v21, v23];
      recurrenceAlertController = self->_recurrenceAlertController;
      self->_recurrenceAlertController = v26;

      return;
    }

    v30 = objc_loadWeakRetained(&self->_editDelegate);
    [v30 editItemViewController:self didCompleteWithAction:{2, v30}];
    goto LABEL_14;
  }

  v9 = 1;
  if (force)
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
    navigationController = [(EKEditItemViewController *)self navigationController];
    v3 = [navigationController popViewControllerAnimated:1];
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
  view = [(EKEditItemViewController *)self view];
  [view sizeThatFits:{2147483650.0, 2147483650.0}];
  v5 = v4;
  v7 = v6;

  navigationController = [(EKEditItemViewController *)self navigationController];
  isToolbarHidden = [navigationController isToolbarHidden];

  if ((isToolbarHidden & 1) == 0)
  {
    navigationController2 = [(EKEditItemViewController *)self navigationController];
    toolbar = [navigationController2 toolbar];
    [toolbar bounds];
    v7 = v7 + CGRectGetHeight(v17);
  }

  view2 = [(EKEditItemViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view2);

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

- (void)setCell:(id)cell checked:(BOOL)checked
{
  checkedCopy = checked;
  cellCopy = cell;
  if ([cellCopy accessoryType] == 3 || !objc_msgSend(cellCopy, "accessoryType"))
  {
    if (checkedCopy)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [cellCopy setAccessoryType:v5];
    [cellCopy setAccessoryView:0];
    textLabel = [cellCopy textLabel];
    [textLabel setTextColor:labelColor];
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