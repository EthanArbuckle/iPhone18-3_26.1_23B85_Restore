@interface AccessibilityPresentedListController
- (AccessibilityPresentedListController)init;
- (AccessibilityPresentedListDelegate)delegate;
- (CGSize)preferredContentSize;
- (UIBarButtonItem)cancelButton;
- (UIBarButtonItem)saveButton;
- (void)cancel:(id)cancel;
- (void)save:(id)save;
- (void)setShowsCancelButton:(BOOL)button;
- (void)setShowsSaveButton:(BOOL)button;
@end

@implementation AccessibilityPresentedListController

- (AccessibilityPresentedListController)init
{
  v5.receiver = self;
  v5.super_class = AccessibilityPresentedListController;
  v2 = [(AccessibilityPresentedListController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AccessibilityPresentedListController *)v2 setShowsCancelButton:1];
    [(AccessibilityPresentedListController *)v3 setShowsSaveButton:1];
  }

  return v3;
}

- (void)setShowsCancelButton:(BOOL)button
{
  if (self->_showsCancelButton != button)
  {
    self->_showsCancelButton = button;
    if (button)
    {
      v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancel:"];
      navigationItem = [(AccessibilityPresentedListController *)self navigationItem];
      [navigationItem setLeftBarButtonItem:v5];
    }
  }
}

- (void)setShowsSaveButton:(BOOL)button
{
  if (self->_showsSaveButton != button)
  {
    self->_showsSaveButton = button;
    if (button)
    {
      v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:3 target:self action:"save:"];
      navigationItem = [(AccessibilityPresentedListController *)self navigationItem];
      [navigationItem setRightBarButtonItem:v5];
    }
  }
}

- (UIBarButtonItem)cancelButton
{
  navigationItem = [(AccessibilityPresentedListController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];

  return leftBarButtonItem;
}

- (UIBarButtonItem)saveButton
{
  navigationItem = [(AccessibilityPresentedListController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  return rightBarButtonItem;
}

- (void)save:(id)save
{
  delegate = [(AccessibilityPresentedListController *)self delegate];
  [delegate presentedListControllerDidSave:self];
}

- (void)cancel:(id)cancel
{
  delegate = [(AccessibilityPresentedListController *)self delegate];
  [delegate presentedListControllerDidCancel:self];
}

- (CGSize)preferredContentSize
{
  v5.receiver = self;
  v5.super_class = AccessibilityPresentedListController;
  [(AccessibilityPresentedListController *)&v5 preferredContentSize];
  [*&self->AXUISettingsListController_opaque[OBJC_IVAR___PSListController__table] sizeThatFits:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (AccessibilityPresentedListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end