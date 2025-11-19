@interface LAPSPasscodeViewControllerBase
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)isAccessibilityTextEnabled;
- (BOOL)resignFirstResponder;
- (BOOL)shouldShowPasscodeOptionsButton;
- (LAPSPasscodeViewControllerBase)initWithConfiguration:(id)a3;
- (LAPSPasscodeViewControllerDelegate)delegate;
- (id)navigationItem;
- (id)setup;
- (int64_t)styleWithPasscodeType:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_setPasscodeType:(id)a3;
- (void)_showPasscodeOptionsSourceWithView:(id)a3 sourceItem:(id)a4 presentationStyle:(int64_t)a5 shouldResignFirstResponder:(BOOL)a6;
- (void)_submitPasscode:(id)a3;
- (void)cancel;
- (void)clear;
- (void)focus;
- (void)layoutIfNeeded;
- (void)passcodeField:(id)a3 didChangePasscodeLength:(unint64_t)a4;
- (void)passcodeField:(id)a3 didSubmitPasscode:(id)a4;
- (void)passcodeOptionsViewController:(id)a3 didSelectPasscodeType:(id)a4;
- (void)passcodeOptionsViewControllerWillDisappear:(id)a3;
- (void)setErrorMessage:(id)a3;
- (void)setFooter:(id)a3;
- (void)setHeader:(id)a3;
- (void)setSubHeader:(id)a3;
- (void)shakeWithCompletion:(id)a3;
- (void)showSpinner;
- (void)submit;
- (void)unfocus;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation LAPSPasscodeViewControllerBase

- (LAPSPasscodeViewControllerBase)initWithConfiguration:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = LAPSPasscodeViewControllerBase;
  v6 = [(LAPSPasscodeViewControllerBase *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    v8 = [(LAPSPasscodeViewControllerConfiguration *)v7->_config passcodeType];
    passcodeType = v7->_passcodeType;
    v7->_passcodeType = v8;

    v10 = [(LAPSPasscodeViewControllerConfiguration *)v7->_config optionsConfiguration];
    v7->_isPasscodeRecoveryEnabled = [v10 isPasscodeRecoveryEnabled];
  }

  return v7;
}

- (LAPSPasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)shakeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [v5 shakeWithCompletion:v4];
}

- (void)focus
{
  v3 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [v3 setAcceptInputs:1];

  v4 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [v4 becomeFirstResponder];
}

- (void)clear
{
  v2 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [v2 clear];
}

- (void)unfocus
{
  v2 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [v2 setAcceptInputs:0];
}

- (void)showSpinner
{
  v5 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
  v2 = objc_alloc(MEMORY[0x277D751E0]);
  v3 = objc_alloc_init(MEMORY[0x277D750E8]);
  [v3 startAnimating];
  v4 = [v2 initWithCustomView:v3];
  [v5 setRightBarButtonItem:v4];
}

- (void)setHeader:(id)a3
{
  v7 = a3;
  v4 = [(LAPSPasscodeViewControllerBase *)self _headerLabel];
  if (v7 && [v7 length])
  {
    [v4 setText:v7];
  }

  else
  {
    v5 = [(LAPSPasscodeViewControllerBase *)self config];
    v6 = [v5 prompt];
    [v4 setText:v6];
  }
}

- (void)setSubHeader:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4 && [v4 length])
  {
    v5 = [(LAPSPasscodeViewControllerBase *)self _subHeaderLabel];
    [v5 setText:v8];

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(LAPSPasscodeViewControllerBase *)self _subHeaderLabel];
  [v7 setHidden:v6];
}

- (void)setFooter:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4 && [v4 length])
  {
    v5 = [(LAPSPasscodeViewControllerBase *)self _footerLabel];
    [v5 setText:v8];

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(LAPSPasscodeViewControllerBase *)self _footerLabel];
  [v7 setHidden:v6];
}

- (void)setErrorMessage:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4 && [v4 length])
  {
    v5 = [(LAPSPasscodeViewControllerBase *)self _errorCapsule];
    [v5 setText:v8];

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(LAPSPasscodeViewControllerBase *)self _errorCapsuleContainer];
  [v7 setHidden:v6];

  [(LAPSPasscodeViewControllerBase *)self layoutIfNeeded];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = LAPSPasscodeViewControllerBase;
  [(LAPSPasscodeViewControllerBase *)&v15 viewDidLoad];
  v3 = [(LAPSPasscodeViewControllerBase *)self setup];
  managedViews = self->_managedViews;
  self->_managedViews = v3;

  v5 = [(LAPSPasscodeViewControllerBase *)self config];
  v6 = [v5 title];
  [(LAPSPasscodeViewControllerBase *)self setTitle:v6];

  v7 = [(LAPSPasscodeViewControllerBase *)self config];
  v8 = [v7 prompt];
  [(LAPSPasscodeViewControllerBase *)self setHeader:v8];

  v9 = [(LAPSPasscodeViewControllerBase *)self config];
  v10 = [v9 subPrompt];
  [(LAPSPasscodeViewControllerBase *)self setSubHeader:v10];

  v11 = [(LAPSPasscodeViewControllerBase *)self config];
  v12 = [v11 footer];
  [(LAPSPasscodeViewControllerBase *)self setFooter:v12];

  v13 = [(LAPSPasscodeViewControllerBase *)self config];
  v14 = [v13 errorMessage];
  [(LAPSPasscodeViewControllerBase *)self setErrorMessage:v14];

  [(LAPSPasscodeViewControllerBase *)self setupNavigationItem];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = LAPSPasscodeViewControllerBase;
  [(LAPSPasscodeViewControllerBase *)&v10 viewDidLayoutSubviews];
  v3 = [(LAPSPasscodeViewControllerBase *)self _scrollView];
  [v3 contentSize];
  v5 = v4;
  v6 = [(LAPSPasscodeViewControllerBase *)self _scrollView];
  [v6 frame];
  v8 = v7;

  if (v5 > v8)
  {
    v9 = [(LAPSPasscodeViewControllerBase *)self _scrollView];
    [v9 _flashScrollIndicatorsPersistingPreviousFlashes];
  }
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
}

- (BOOL)becomeFirstResponder
{
  v2 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (id)navigationItem
{
  v3 = [(LAPSPasscodeViewControllerBase *)self parentViewController];
  v4 = [v3 navigationItem];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = LAPSPasscodeViewControllerBase;
    v6 = [(LAPSPasscodeViewControllerBase *)&v9 navigationItem];
  }

  v7 = v6;

  return v7;
}

- (void)willMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = LAPSPasscodeViewControllerBase;
  [(LAPSPasscodeViewControllerBase *)&v6 willMoveToParentViewController:a3];
  v4 = [(LAPSPasscodeViewControllerBase *)self presentedViewController];

  if (v4)
  {
    v5 = [(LAPSPasscodeViewControllerBase *)self presentedViewController];
    [v5 dismissViewControllerAnimated:0 completion:&__block_literal_global_16];
  }
}

- (void)cancel
{
  v3 = +[LAPSErrorBuilder userCanceledError];
  [(LAPSPasscodeViewControllerBase *)self _finishWithError:v3];
}

- (void)submit
{
  v2 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [v2 submit];
}

- (BOOL)shouldShowPasscodeOptionsButton
{
  v2 = [(LAPSPasscodeViewControllerBase *)self config];
  v3 = [v2 optionsConfiguration];
  v4 = v3 != 0;

  return v4;
}

- (void)layoutIfNeeded
{
  v3 = [(LAPSPasscodeViewControllerBase *)self _scrollView];
  [v3 layoutIfNeeded];

  v4 = [(LAPSPasscodeViewControllerBase *)self view];
  [v4 layoutIfNeeded];
}

- (BOOL)isAccessibilityTextEnabled
{
  v2 = [(LAPSPasscodeViewControllerBase *)self view];
  v3 = [v2 traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  return IsAccessibilityCategory;
}

- (int64_t)styleWithPasscodeType:(id)a3
{
  result = [a3 identifier];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

- (id)setup
{
  v2 = objc_alloc_init(LAPSPasscodeViewControllerManagedViews);

  return v2;
}

- (void)passcodeField:(id)a3 didSubmitPasscode:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  if (v7 != v10)
  {
    [LAPSPasscodeViewControllerBase passcodeField:didSubmitPasscode:];
  }

  v8 = [(LAPSPasscodeViewControllerBase *)self passcodeType];
  v9 = [v8 allowsLength:{objc_msgSend(v6, "length")}];

  if (v9)
  {
    [(LAPSPasscodeViewControllerBase *)self _submitPasscode:v6];
  }
}

- (void)passcodeField:(id)a3 didChangePasscodeLength:(unint64_t)a4
{
  v7 = a3;
  v6 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  if (v6 != v7)
  {
    [LAPSPasscodeViewControllerBase passcodeField:didChangePasscodeLength:];
  }

  [(LAPSPasscodeViewControllerBase *)self updateLayoutAfterPasscodeLengthChangeIfNeeded:a4];
}

- (void)passcodeOptionsViewController:(id)a3 didSelectPasscodeType:(id)a4
{
  v9 = a4;
  [(LAPSPasscodeViewControllerBase *)self _setPasscodeType:v9];
  v5 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [v5 setStyle:{-[LAPSPasscodeViewControllerBase styleWithPasscodeType:](self, "styleWithPasscodeType:", v9)}];

  [(LAPSPasscodeViewControllerBase *)self updateLayoutAfterPasscodeTypeChangeIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 passcodeViewController:self didSelectPasscodeType:v9];
  }
}

- (void)passcodeOptionsViewControllerWillDisappear:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__LAPSPasscodeViewControllerBase_passcodeOptionsViewControllerWillDisappear___block_invoke;
  v3[3] = &unk_278A65908;
  v3[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

void __77__LAPSPasscodeViewControllerBase_passcodeOptionsViewControllerWillDisappear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _passcodeFieldVC];
  [v2 setAcceptInputs:1];

  v3 = [*(a1 + 32) _passcodeFieldVC];
  [v3 becomeFirstResponder];
}

- (void)_setPasscodeType:(id)a3
{
  objc_storeStrong(&self->_passcodeType, a3);

  [(LAPSPasscodeViewControllerBase *)self setupNavigationItem];
}

- (void)_submitPasscode:(id)a3
{
  v11 = a3;
  v4 = [(LAPSPasscodeViewControllerBase *)self passcodeType];
  v5 = [(LAPSPasscodeViewControllerBase *)self styleWithPasscodeType:v4];
  v6 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  if (v5 != [v6 style])
  {
    [LAPSPasscodeViewControllerBase _submitPasscode:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [LAPSPasscode alloc];
  v9 = [(LAPSPasscodeViewControllerBase *)self passcodeType];
  v10 = [(LAPSPasscode *)v8 initWithLocalizedPasscode:v11 type:v9];
  [WeakRetained passcodeViewController:self verifyPasscode:v10];
}

- (void)_finishWithError:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 passcodeViewController:self didCancelWithError:v7];
  }
}

- (void)_showPasscodeOptionsSourceWithView:(id)a3 sourceItem:(id)a4 presentationStyle:(int64_t)a5 shouldResignFirstResponder:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = objc_alloc_init(LAPSPasscodeOptionsPresentationController);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __125__LAPSPasscodeViewControllerBase__showPasscodeOptionsSourceWithView_sourceItem_presentationStyle_shouldResignFirstResponder___block_invoke;
  v18[3] = &unk_278A65930;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = a5;
  v13 = v11;
  v14 = v10;
  v15 = __125__LAPSPasscodeViewControllerBase__showPasscodeOptionsSourceWithView_sourceItem_presentationStyle_shouldResignFirstResponder___block_invoke(v18);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __125__LAPSPasscodeViewControllerBase__showPasscodeOptionsSourceWithView_sourceItem_presentationStyle_shouldResignFirstResponder___block_invoke_3;
  v16[3] = &unk_278A65958;
  v16[4] = self;
  v17 = a6;
  [(LAPSPasscodeOptionsPresentationController *)v12 presentPasscodeOptions:v15 completion:v16];
}

LAPSPasscodeOptionsPresentationRequest *__125__LAPSPasscodeViewControllerBase__showPasscodeOptionsSourceWithView_sourceItem_presentationStyle_shouldResignFirstResponder___block_invoke(void *a1)
{
  v2 = [[LAPSPasscodeOptionsPresentationRequest alloc] initWithSourceViewController:a1[4]];
  [(LAPSPasscodeOptionsPresentationRequest *)v2 setSourceView:a1[5]];
  [(LAPSPasscodeOptionsPresentationRequest *)v2 setSourceItem:a1[6]];
  [(LAPSPasscodeOptionsPresentationRequest *)v2 setPresentationStyle:a1[7]];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __125__LAPSPasscodeViewControllerBase__showPasscodeOptionsSourceWithView_sourceItem_presentationStyle_shouldResignFirstResponder___block_invoke_2;
  v5[3] = &unk_278A65480;
  v5[4] = a1[4];
  v3 = __125__LAPSPasscodeViewControllerBase__showPasscodeOptionsSourceWithView_sourceItem_presentationStyle_shouldResignFirstResponder___block_invoke_2(v5);
  [(LAPSPasscodeOptionsPresentationRequest *)v2 setConfig:v3];

  [(LAPSPasscodeOptionsPresentationRequest *)v2 setAnimated:1];
  [(LAPSPasscodeOptionsPresentationRequest *)v2 setDelegate:a1[4]];

  return v2;
}

LAPSPasscodeOptionsViewControllerConfiguration *__125__LAPSPasscodeViewControllerBase__showPasscodeOptionsSourceWithView_sourceItem_presentationStyle_shouldResignFirstResponder___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(LAPSPasscodeOptionsViewControllerConfiguration);
  v3 = [*(a1 + 32) config];
  v4 = [v3 optionsConfiguration];
  v5 = [v4 title];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setTitle:v5];

  v6 = [*(a1 + 32) config];
  v7 = [v6 optionsConfiguration];
  v8 = [v7 cancelTitle];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setCancelTitle:v8];

  v9 = [*(a1 + 32) config];
  v10 = [v9 optionsConfiguration];
  v11 = [v10 passcodeRecoveryEnabledTitle];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setPasscodeRecoveryEnabledTitle:v11];

  v12 = [*(a1 + 32) config];
  v13 = [v12 optionsConfiguration];
  v14 = [v13 passcodeRecoveryDisabledTitle];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setPasscodeRecoveryDisabledTitle:v14];

  v15 = [*(a1 + 32) config];
  v16 = [v15 optionsConfiguration];
  v17 = [v16 allowedPasscodeTypes];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setAllowedPasscodeTypes:v17];

  v18 = [*(a1 + 32) config];
  v19 = [v18 optionsConfiguration];
  -[LAPSPasscodeOptionsViewControllerConfiguration setIsPasscodeRecoverySupported:](v2, "setIsPasscodeRecoverySupported:", [v19 isPasscodeRecoverySupported]);

  v20 = [*(a1 + 32) config];
  v21 = [v20 optionsConfiguration];
  -[LAPSPasscodeOptionsViewControllerConfiguration setIsPasscodeRecoveryRestricted:](v2, "setIsPasscodeRecoveryRestricted:", [v21 isPasscodeRecoveryRestricted]);

  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setIsPasscodeRecoveryEnabled:*(*(a1 + 32) + 992)];
  v22 = [*(a1 + 32) config];
  v23 = [v22 optionsConfiguration];
  -[LAPSPasscodeOptionsViewControllerConfiguration setIsPasscodeRecoveryOptionVisible:](v2, "setIsPasscodeRecoveryOptionVisible:", [v23 isPasscodeRecoveryOptionVisible]);

  v24 = [*(a1 + 32) passcodeType];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setSelectedPasscodeType:v24];

  v25 = [*(a1 + 32) config];
  v26 = [v25 optionsConfiguration];
  v27 = [v26 passcodeRecoveryTitle];
  [(LAPSPasscodeOptionsViewControllerConfiguration *)v2 setPasscodeRecoveryTitle:v27];

  return v2;
}

void __125__LAPSPasscodeViewControllerBase__showPasscodeOptionsSourceWithView_sourceItem_presentationStyle_shouldResignFirstResponder___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _passcodeFieldVC];
  [v2 setAcceptInputs:0];

  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) _passcodeFieldVC];
    [v3 resignFirstResponder];
  }
}

@end