@interface AXUIPasscodeViewController
- (AXUIPasscodeViewController)initWithCoder:(id)coder;
- (AXUIPasscodeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AXUIPasscodeViewController)initWithPresentationStyle:(int)style forSetup:(BOOL)setup pinLength:(unint64_t)length;
- (AXUIPasscodeViewControllerDelegate)delegate;
- (BOOL)_shouldAllowMultipleEntryAttempts;
- (BOOL)_shouldShowCancelButton;
- (BOOL)pinIsAcceptable:(id)acceptable outError:(id *)error;
- (id)stringsBundle;
- (int64_t)_activeInterfaceOrientation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_didFinishDismissingPasscodeViewWithReason:(int64_t)reason;
- (void)_dismissPasscodeViewAnimated:(BOOL)animated withReason:(int64_t)reason;
- (void)_notifyDelegateOfPasscodeViewDismissalWithReason:(int64_t)reason;
- (void)_notifyDelegateOfPasscodeViewVisibilityChange;
- (void)_presentPasscodeViewWithParentViewController:(id)controller animated:(BOOL)animated;
- (void)_slidePasscodeField;
- (void)_updateErrorTextAndFailureCount:(BOOL)count;
- (void)didAcceptSetPIN;
- (void)loadView;
- (void)pinEntered:(id)entered;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
@end

@implementation AXUIPasscodeViewController

- (AXUIPasscodeViewController)initWithPresentationStyle:(int)style forSetup:(BOOL)setup pinLength:(unint64_t)length
{
  lengthCopy = length;
  setupCopy = setup;
  v7 = *&style;
  v17.receiver = self;
  v17.super_class = AXUIPasscodeViewController;
  v8 = [(AXUIPasscodeViewController *)&v17 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    if (setupCopy)
    {
      v10 = 0;
    }

    else
    {
      v10 = 3;
    }

    v11 = *MEMORY[0x1E69C5778];
    *(&v8->super.super.super.super.super.super.isa + v11) = v10;
    if (setupCopy)
    {
      *(&v8->super.super.super.super.super.super.isa + *MEMORY[0x1E69C5780]) = 1;
    }

    emptyGroupSpecifier = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:v9 forKey:*MEMORY[0x1E69C59B0]];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:*(&v9->super.super.super.super.super.super.isa + v11)];
    [emptyGroupSpecifier setProperty:v13 forKey:@"mode"];

    [(DevicePINController *)v9 setSpecifier:emptyGroupSpecifier];
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
        popoverPresentationController = [(AXUIPasscodePaneContainingNavigationController *)v14 popoverPresentationController];
        [popoverPresentationController setPermittedArrowDirections:0];
        [popoverPresentationController setDelegate:v9];
      }
    }

    else
    {
      [(AXUIPasscodePaneContainingNavigationController *)v14 setModalPresentationStyle:0];
    }

    v9->_pinLength = lengthCopy;
  }

  return v9;
}

- (AXUIPasscodeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = AXUIPasscodeViewController;
  v4 = [(AXUIPasscodeViewController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
  }

  return 0;
}

- (AXUIPasscodeViewController)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AXUIPasscodeViewController;
  v3 = [(AXUIPasscodeViewController *)&v5 initWithCoder:coder];
  if (v3)
  {
  }

  return 0;
}

- (void)loadView
{
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  appearance = [MEMORY[0x1E69C5710] appearance];
  [appearance setTextColor:labelColor];

  v19.receiver = self;
  v19.super_class = AXUIPasscodeViewController;
  [(DevicePINController *)&v19 loadView];
  view = [(AXUIPasscodeViewController *)self view];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  [view setFrame:?];

  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [[GuidedAccessDevicePINPane alloc] initWithFrame:v7, v9, v11, v13];
  backgroundColor = [view backgroundColor];
  [(GuidedAccessDevicePINPane *)v15 setBackgroundColor:backgroundColor];

  [(PSEditingPane *)v15 setDelegate:self];
  [(DevicePINController *)self setPane:v15];
  pinViewTitle = [(AXUIPasscodeViewController *)self pinViewTitle];

  if (pinViewTitle)
  {
    pinViewTitle2 = [(AXUIPasscodeViewController *)self pinViewTitle];
    [(DevicePINPane *)v15 setTitle:pinViewTitle2];
  }

  [(GuidedAccessDevicePINPane *)v15 setFrame:v8, v10, v12, v14];
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_presentPasscodeViewWithParentViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  [(AXUIPasscodeViewController *)self setPresentorViewController:controllerCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__AXUIPasscodeViewController__presentPasscodeViewWithParentViewController_animated___block_invoke;
  aBlock[3] = &unk_1E812DCA8;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  navigationItem = [(AXUIPasscodeViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  if (![(AXUIPasscodeViewController *)self _shouldShowCancelButton])
  {
    [navigationItem setRightBarButtonItem:0];
    [navigationItem setLeftBarButtonItem:0];
  }

  if ([(AXUIPasscodeViewController *)self presentationStyle]== 1)
  {
    view = [controllerCopy view];
    hostingNavigationController = [(AXUIPasscodeViewController *)self hostingNavigationController];
    popoverPresentationController = [hostingNavigationController popoverPresentationController];

    [popoverPresentationController setSourceView:view];
    [view bounds];
    [popoverPresentationController setSourceRect:?];
  }

  hostingNavigationController2 = [(AXUIPasscodeViewController *)self hostingNavigationController];
  [controllerCopy presentViewController:hostingNavigationController2 animated:1 completion:v6];
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

- (void)_dismissPasscodeViewAnimated:(BOOL)animated withReason:(int64_t)reason
{
  animatedCopy = animated;
  presentorViewController = [(AXUIPasscodeViewController *)self presentorViewController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__AXUIPasscodeViewController__dismissPasscodeViewAnimated_withReason___block_invoke;
  v8[3] = &unk_1E812E0A8;
  v8[4] = self;
  v8[5] = reason;
  [presentorViewController dismissViewControllerAnimated:animatedCopy completion:v8];
}

- (void)_didFinishDismissingPasscodeViewWithReason:(int64_t)reason
{
  if ([(AXUIPasscodeViewController *)self presentationStyle]== 1)
  {
    hostingNavigationController = [(AXUIPasscodeViewController *)self hostingNavigationController];
    popoverPresentationController = [hostingNavigationController popoverPresentationController];
    [popoverPresentationController setDelegate:0];
  }

  hostingNavigationController2 = [(AXUIPasscodeViewController *)self hostingNavigationController];
  [hostingNavigationController2 setDelegate:0];

  [(AXUIPasscodeViewController *)self setHostingNavigationController:0];
  [(AXUIPasscodeViewController *)self _notifyDelegateOfPasscodeViewDismissalWithReason:reason];
  [(AXUIPasscodeViewController *)self setPresentorViewController:0];
  [(AXUIPasscodeViewController *)self setPasscodeViewVisible:0];

  [(AXUIPasscodeViewController *)self _notifyDelegateOfPasscodeViewVisibilityChange];
}

- (void)_notifyDelegateOfPasscodeViewVisibilityChange
{
  delegate = [(AXUIPasscodeViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passcodeViewController:self passcodeViewIsVisible:{-[AXUIPasscodeViewController isPasscodeViewVisible](self, "isPasscodeViewVisible")}];
  }
}

- (void)_notifyDelegateOfPasscodeViewDismissalWithReason:(int64_t)reason
{
  delegate = [(AXUIPasscodeViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passcodeViewController:self wasDismissedWithReason:reason];
  }
}

- (BOOL)_shouldShowCancelButton
{
  delegate = [(AXUIPasscodeViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate shouldShowCancelButtonForPasscodeViewController:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)_activeInterfaceOrientation
{
  delegate = [(AXUIPasscodeViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    interfaceOrientation = [delegate activeInterfaceOrientationForPasscodeViewController:self];
  }

  else
  {
    view = [(AXUIPasscodeViewController *)self view];
    window = [view window];
    interfaceOrientation = [window interfaceOrientation];
  }

  return interfaceOrientation;
}

- (BOOL)_shouldAllowMultipleEntryAttempts
{
  delegate = [(AXUIPasscodeViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate shouldAllowMultipleEntryAttemptsForPasscodeViewController:self];
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

- (void)pinEntered:(id)entered
{
  enteredCopy = entered;
  [(AXUIPasscodeViewController *)self setAsynchronouslyCheckedPinWasValid:0];
  if ([(DevicePINController *)self mode]== 3)
  {
    delegate = [(AXUIPasscodeViewController *)self delegate];
    isRunningInStoreDemoMode = [MEMORY[0x1E69DC668] isRunningInStoreDemoMode];
    if ([(DevicePINController *)self mode]== 3 && (isRunningInStoreDemoMode & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __41__AXUIPasscodeViewController_pinEntered___block_invoke;
      v9[3] = &unk_1E812E0D0;
      v9[4] = self;
      v10 = enteredCopy;
      [delegate passcodeViewController:self isPasscode:v10 correctWithCompletionHandler:v9];
    }

    else
    {
      [(AXUIPasscodeViewController *)self setAsynchronouslyCheckedPinWasValid:isRunningInStoreDemoMode];
      v8.receiver = self;
      v8.super_class = AXUIPasscodeViewController;
      [(DevicePINController *)&v8 pinEntered:enteredCopy];
      [(AXUIPasscodeViewController *)self setAsynchronouslyCheckedPinWasValid:0];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AXUIPasscodeViewController;
    [(DevicePINController *)&v7 pinEntered:enteredCopy];
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

- (BOOL)pinIsAcceptable:(id)acceptable outError:(id *)error
{
  acceptableCopy = acceptable;
  v5 = [acceptableCopy length] == 6 || objc_msgSend(acceptableCopy, "length") == 4;

  return v5;
}

- (void)_slidePasscodeField
{
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C57A0]);
  simplePIN = [(AXUIPasscodeViewController *)self simplePIN];
  requiresKeyboard = [(AXUIPasscodeViewController *)self requiresKeyboard];

  [v3 slideToNewPasscodeField:simplePIN requiresKeyboard:requiresKeyboard numericOnly:1];
}

- (void)_updateErrorTextAndFailureCount:(BOOL)count
{
  countCopy = count;
  if (*(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C5778]) == 3 && ![(AXUIPasscodeViewController *)self _shouldAllowMultipleEntryAttempts])
  {

    [(AXUIPasscodeViewController *)self _dismissPasscodeViewAnimated:1 withReason:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AXUIPasscodeViewController;
    [(DevicePINController *)&v5 _updateErrorTextAndFailureCount:countCopy];
  }
}

- (void)didAcceptSetPIN
{
  delegate = [(AXUIPasscodeViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    passcode = [(AXUIPasscodeViewController *)self passcode];
    [delegate passcodeViewController:self didFinishSettingUpPasscode:passcode];
  }

  [(AXUIPasscodeViewController *)self _dismissPasscodeViewAnimated:1 withReason:4];
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  v11 = [(AXUIPasscodeViewController *)self presentorViewController:controller];
  view = [v11 view];
  [view bounds];
  rect->origin.x = v7;
  rect->origin.y = v8;
  rect->size.width = v9;
  rect->size.height = v10;
}

- (AXUIPasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end