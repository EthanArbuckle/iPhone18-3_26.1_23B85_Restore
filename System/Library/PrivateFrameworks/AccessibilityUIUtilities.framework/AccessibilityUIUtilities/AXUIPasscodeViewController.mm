@interface AXUIPasscodeViewController
- (AXUIPasscodeViewController)initWithCoder:(id)a3;
- (AXUIPasscodeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AXUIPasscodeViewController)initWithPresentationStyle:(int)a3 forSetup:(BOOL)a4 pinLength:(unint64_t)a5;
- (AXUIPasscodeViewControllerDelegate)delegate;
- (BOOL)_shouldAllowMultipleEntryAttempts;
- (BOOL)_shouldShowCancelButton;
- (BOOL)pinIsAcceptable:(id)a3 outError:(id *)a4;
- (id)stringsBundle;
- (int64_t)_activeInterfaceOrientation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_didFinishDismissingPasscodeViewWithReason:(int64_t)a3;
- (void)_dismissPasscodeViewAnimated:(BOOL)a3 withReason:(int64_t)a4;
- (void)_notifyDelegateOfPasscodeViewDismissalWithReason:(int64_t)a3;
- (void)_notifyDelegateOfPasscodeViewVisibilityChange;
- (void)_presentPasscodeViewWithParentViewController:(id)a3 animated:(BOOL)a4;
- (void)_slidePasscodeField;
- (void)_updateErrorTextAndFailureCount:(BOOL)a3;
- (void)didAcceptSetPIN;
- (void)loadView;
- (void)pinEntered:(id)a3;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
@end

@implementation AXUIPasscodeViewController

- (AXUIPasscodeViewController)initWithPresentationStyle:(int)a3 forSetup:(BOOL)a4 pinLength:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  v7 = *&a3;
  v17.receiver = self;
  v17.super_class = AXUIPasscodeViewController;
  v8 = [(AXUIPasscodeViewController *)&v17 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = 3;
    }

    v11 = *MEMORY[0x1E69C5778];
    *(&v8->super.super.super.super.super.super.isa + v11) = v10;
    if (v6)
    {
      *(&v8->super.super.super.super.super.super.isa + *MEMORY[0x1E69C5780]) = 1;
    }

    v12 = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
    [v12 setProperty:v9 forKey:*MEMORY[0x1E69C59B0]];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:*(&v9->super.super.super.super.super.super.isa + v11)];
    [v12 setProperty:v13 forKey:@"mode"];

    [(DevicePINController *)v9 setSpecifier:v12];
    [(AXUIPasscodeViewController *)v9 setPresentationStyle:v7];
    v14 = [[AXUIPasscodePaneContainingNavigationController alloc] initWithRootViewController:v9];
    [(AXUIPasscodePaneContainingNavigationController *)v14 setDelegate:v9];
    [(AXUIPasscodeViewController *)v9 setHostingNavigationController:v14];
    if (v7)
    {
      if (v7 == 1)
      {
        [(AXUIPasscodeViewController *)v9 preferredContentSize];
        [(AXUIPasscodeViewController *)v9 setPreferredContentSize:?];
        [(AXUIPasscodePaneContainingNavigationController *)v14 setModalPresentationStyle:2];
        v15 = [(AXUIPasscodePaneContainingNavigationController *)v14 popoverPresentationController];
        [v15 setPermittedArrowDirections:0];
        [v15 setDelegate:v9];
      }
    }

    else
    {
      [(AXUIPasscodePaneContainingNavigationController *)v14 setModalPresentationStyle:0];
    }

    v9->_pinLength = v5;
  }

  return v9;
}

- (AXUIPasscodeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = AXUIPasscodeViewController;
  v4 = [(AXUIPasscodeViewController *)&v6 initWithNibName:a3 bundle:a4];
  if (v4)
  {
  }

  return 0;
}

- (AXUIPasscodeViewController)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AXUIPasscodeViewController;
  v3 = [(AXUIPasscodeViewController *)&v5 initWithCoder:a3];
  if (v3)
  {
  }

  return 0;
}

- (void)loadView
{
  v3 = [MEMORY[0x1E69DC888] labelColor];
  v4 = [MEMORY[0x1E69C5710] appearance];
  [v4 setTextColor:v3];

  v19.receiver = self;
  v19.super_class = AXUIPasscodeViewController;
  [(DevicePINController *)&v19 loadView];
  v5 = [(AXUIPasscodeViewController *)self view];
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 bounds];
  [v5 setFrame:?];

  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [[GuidedAccessDevicePINPane alloc] initWithFrame:v7, v9, v11, v13];
  v16 = [v5 backgroundColor];
  [(GuidedAccessDevicePINPane *)v15 setBackgroundColor:v16];

  [(PSEditingPane *)v15 setDelegate:self];
  [(DevicePINController *)self setPane:v15];
  v17 = [(AXUIPasscodeViewController *)self pinViewTitle];

  if (v17)
  {
    v18 = [(AXUIPasscodeViewController *)self pinViewTitle];
    [(DevicePINPane *)v15 setTitle:v18];
  }

  [(GuidedAccessDevicePINPane *)v15 setFrame:v8, v10, v12, v14];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_presentPasscodeViewWithParentViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  [(AXUIPasscodeViewController *)self setPresentorViewController:v5];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__AXUIPasscodeViewController__presentPasscodeViewWithParentViewController_animated___block_invoke;
  aBlock[3] = &unk_1E812DCA8;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [(AXUIPasscodeViewController *)self navigationItem];
  [v7 setHidesBackButton:1];
  if (![(AXUIPasscodeViewController *)self _shouldShowCancelButton])
  {
    [v7 setRightBarButtonItem:0];
    [v7 setLeftBarButtonItem:0];
  }

  if ([(AXUIPasscodeViewController *)self presentationStyle]== 1)
  {
    v8 = [v5 view];
    v9 = [(AXUIPasscodeViewController *)self hostingNavigationController];
    v10 = [v9 popoverPresentationController];

    [v10 setSourceView:v8];
    [v8 bounds];
    [v10 setSourceRect:?];
  }

  v11 = [(AXUIPasscodeViewController *)self hostingNavigationController];
  [v5 presentViewController:v11 animated:1 completion:v6];
}

uint64_t __84__AXUIPasscodeViewController__presentPasscodeViewWithParentViewController_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPasscodeViewVisible:1];
  v2 = *MEMORY[0x1E69DD930];
  v3 = [*(a1 + 32) pane];
  UIAccessibilityPostNotification(v2, v3);

  v4 = *(a1 + 32);

  return [v4 _notifyDelegateOfPasscodeViewVisibilityChange];
}

- (void)_dismissPasscodeViewAnimated:(BOOL)a3 withReason:(int64_t)a4
{
  v5 = a3;
  v7 = [(AXUIPasscodeViewController *)self presentorViewController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__AXUIPasscodeViewController__dismissPasscodeViewAnimated_withReason___block_invoke;
  v8[3] = &unk_1E812E0A8;
  v8[4] = self;
  v8[5] = a4;
  [v7 dismissViewControllerAnimated:v5 completion:v8];
}

- (void)_didFinishDismissingPasscodeViewWithReason:(int64_t)a3
{
  if ([(AXUIPasscodeViewController *)self presentationStyle]== 1)
  {
    v5 = [(AXUIPasscodeViewController *)self hostingNavigationController];
    v6 = [v5 popoverPresentationController];
    [v6 setDelegate:0];
  }

  v7 = [(AXUIPasscodeViewController *)self hostingNavigationController];
  [v7 setDelegate:0];

  [(AXUIPasscodeViewController *)self setHostingNavigationController:0];
  [(AXUIPasscodeViewController *)self _notifyDelegateOfPasscodeViewDismissalWithReason:a3];
  [(AXUIPasscodeViewController *)self setPresentorViewController:0];
  [(AXUIPasscodeViewController *)self setPasscodeViewVisible:0];

  [(AXUIPasscodeViewController *)self _notifyDelegateOfPasscodeViewVisibilityChange];
}

- (void)_notifyDelegateOfPasscodeViewVisibilityChange
{
  v3 = [(AXUIPasscodeViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 passcodeViewController:self passcodeViewIsVisible:{-[AXUIPasscodeViewController isPasscodeViewVisible](self, "isPasscodeViewVisible")}];
  }
}

- (void)_notifyDelegateOfPasscodeViewDismissalWithReason:(int64_t)a3
{
  v5 = [(AXUIPasscodeViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 passcodeViewController:self wasDismissedWithReason:a3];
  }
}

- (BOOL)_shouldShowCancelButton
{
  v3 = [(AXUIPasscodeViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shouldShowCancelButtonForPasscodeViewController:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)_activeInterfaceOrientation
{
  v3 = [(AXUIPasscodeViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 activeInterfaceOrientationForPasscodeViewController:self];
  }

  else
  {
    v5 = [(AXUIPasscodeViewController *)self view];
    v6 = [v5 window];
    v4 = [v6 interfaceOrientation];
  }

  return v4;
}

- (BOOL)_shouldAllowMultipleEntryAttempts
{
  v3 = [(AXUIPasscodeViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shouldAllowMultipleEntryAttemptsForPasscodeViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stringsBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (void)pinEntered:(id)a3
{
  v4 = a3;
  [(AXUIPasscodeViewController *)self setAsynchronouslyCheckedPinWasValid:0];
  if ([(DevicePINController *)self mode]== 3)
  {
    v5 = [(AXUIPasscodeViewController *)self delegate];
    v6 = [MEMORY[0x1E69DC668] isRunningInStoreDemoMode];
    if ([(DevicePINController *)self mode]== 3 && (v6 & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __41__AXUIPasscodeViewController_pinEntered___block_invoke;
      v9[3] = &unk_1E812E0D0;
      v9[4] = self;
      v10 = v4;
      [v5 passcodeViewController:self isPasscode:v10 correctWithCompletionHandler:v9];
    }

    else
    {
      [(AXUIPasscodeViewController *)self setAsynchronouslyCheckedPinWasValid:v6];
      v8.receiver = self;
      v8.super_class = AXUIPasscodeViewController;
      [(DevicePINController *)&v8 pinEntered:v4];
      [(AXUIPasscodeViewController *)self setAsynchronouslyCheckedPinWasValid:0];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AXUIPasscodeViewController;
    [(DevicePINController *)&v7 pinEntered:v4];
  }
}

uint64_t __41__AXUIPasscodeViewController_pinEntered___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAsynchronouslyCheckedPinWasValid:a2];
  v3 = *(a1 + 40);
  v5.receiver = *(a1 + 32);
  v5.super_class = AXUIPasscodeViewController;
  objc_msgSendSuper2(&v5, sel_pinEntered_, v3);
  return [*(a1 + 32) setAsynchronouslyCheckedPinWasValid:0];
}

- (BOOL)pinIsAcceptable:(id)a3 outError:(id *)a4
{
  v4 = a3;
  v5 = [v4 length] == 6 || objc_msgSend(v4, "length") == 4;

  return v5;
}

- (void)_slidePasscodeField
{
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C57A0]);
  v4 = [(AXUIPasscodeViewController *)self simplePIN];
  v5 = [(AXUIPasscodeViewController *)self requiresKeyboard];

  [v3 slideToNewPasscodeField:v4 requiresKeyboard:v5 numericOnly:1];
}

- (void)_updateErrorTextAndFailureCount:(BOOL)a3
{
  v3 = a3;
  if (*(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C5778]) == 3 && ![(AXUIPasscodeViewController *)self _shouldAllowMultipleEntryAttempts])
  {

    [(AXUIPasscodeViewController *)self _dismissPasscodeViewAnimated:1 withReason:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AXUIPasscodeViewController;
    [(DevicePINController *)&v5 _updateErrorTextAndFailureCount:v3];
  }
}

- (void)didAcceptSetPIN
{
  v4 = [(AXUIPasscodeViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(AXUIPasscodeViewController *)self passcode];
    [v4 passcodeViewController:self didFinishSettingUpPasscode:v3];
  }

  [(AXUIPasscodeViewController *)self _dismissPasscodeViewAnimated:1 withReason:4];
}

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  v11 = [(AXUIPasscodeViewController *)self presentorViewController:a3];
  v6 = [v11 view];
  [v6 bounds];
  a4->origin.x = v7;
  a4->origin.y = v8;
  a4->size.width = v9;
  a4->size.height = v10;
}

- (AXUIPasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end