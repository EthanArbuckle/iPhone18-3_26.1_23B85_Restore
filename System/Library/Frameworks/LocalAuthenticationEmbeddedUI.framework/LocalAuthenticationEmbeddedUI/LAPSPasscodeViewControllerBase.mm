@interface LAPSPasscodeViewControllerBase
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)isAccessibilityTextEnabled;
- (BOOL)resignFirstResponder;
- (BOOL)shouldShowPasscodeOptionsButton;
- (LAPSPasscodeViewControllerBase)initWithConfiguration:(id)configuration;
- (LAPSPasscodeViewControllerDelegate)delegate;
- (id)navigationItem;
- (id)setup;
- (int64_t)styleWithPasscodeType:(id)type;
- (void)_finishWithError:(id)error;
- (void)_setPasscodeType:(id)type;
- (void)_showPasscodeOptionsSourceWithView:(id)view sourceItem:(id)item presentationStyle:(int64_t)style shouldResignFirstResponder:(BOOL)responder;
- (void)_submitPasscode:(id)passcode;
- (void)cancel;
- (void)clear;
- (void)focus;
- (void)layoutIfNeeded;
- (void)passcodeField:(id)field didChangePasscodeLength:(unint64_t)length;
- (void)passcodeField:(id)field didSubmitPasscode:(id)passcode;
- (void)passcodeOptionsViewController:(id)controller didSelectPasscodeType:(id)type;
- (void)passcodeOptionsViewControllerWillDisappear:(id)disappear;
- (void)setErrorMessage:(id)message;
- (void)setFooter:(id)footer;
- (void)setHeader:(id)header;
- (void)setSubHeader:(id)header;
- (void)shakeWithCompletion:(id)completion;
- (void)showSpinner;
- (void)submit;
- (void)unfocus;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation LAPSPasscodeViewControllerBase

- (LAPSPasscodeViewControllerBase)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = LAPSPasscodeViewControllerBase;
  v6 = [(LAPSPasscodeViewControllerBase *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, configuration);
    passcodeType = [(LAPSPasscodeViewControllerConfiguration *)v7->_config passcodeType];
    passcodeType = v7->_passcodeType;
    v7->_passcodeType = passcodeType;

    optionsConfiguration = [(LAPSPasscodeViewControllerConfiguration *)v7->_config optionsConfiguration];
    v7->_isPasscodeRecoveryEnabled = [optionsConfiguration isPasscodeRecoveryEnabled];
  }

  return v7;
}

- (LAPSPasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)shakeWithCompletion:(id)completion
{
  completionCopy = completion;
  _passcodeFieldVC = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [_passcodeFieldVC shakeWithCompletion:completionCopy];
}

- (void)focus
{
  _passcodeFieldVC = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [_passcodeFieldVC setAcceptInputs:1];

  _passcodeFieldVC2 = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [_passcodeFieldVC2 becomeFirstResponder];
}

- (void)clear
{
  _passcodeFieldVC = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [_passcodeFieldVC clear];
}

- (void)unfocus
{
  _passcodeFieldVC = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [_passcodeFieldVC setAcceptInputs:0];
}

- (void)showSpinner
{
  navigationItem = [(LAPSPasscodeViewControllerBase *)self navigationItem];
  v2 = objc_alloc(MEMORY[0x277D751E0]);
  v3 = objc_alloc_init(MEMORY[0x277D750E8]);
  [v3 startAnimating];
  v4 = [v2 initWithCustomView:v3];
  [navigationItem setRightBarButtonItem:v4];
}

- (void)setHeader:(id)header
{
  headerCopy = header;
  _headerLabel = [(LAPSPasscodeViewControllerBase *)self _headerLabel];
  if (headerCopy && [headerCopy length])
  {
    [_headerLabel setText:headerCopy];
  }

  else
  {
    config = [(LAPSPasscodeViewControllerBase *)self config];
    prompt = [config prompt];
    [_headerLabel setText:prompt];
  }
}

- (void)setSubHeader:(id)header
{
  headerCopy = header;
  v8 = headerCopy;
  if (headerCopy && [headerCopy length])
  {
    _subHeaderLabel = [(LAPSPasscodeViewControllerBase *)self _subHeaderLabel];
    [_subHeaderLabel setText:v8];

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  _subHeaderLabel2 = [(LAPSPasscodeViewControllerBase *)self _subHeaderLabel];
  [_subHeaderLabel2 setHidden:v6];
}

- (void)setFooter:(id)footer
{
  footerCopy = footer;
  v8 = footerCopy;
  if (footerCopy && [footerCopy length])
  {
    _footerLabel = [(LAPSPasscodeViewControllerBase *)self _footerLabel];
    [_footerLabel setText:v8];

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  _footerLabel2 = [(LAPSPasscodeViewControllerBase *)self _footerLabel];
  [_footerLabel2 setHidden:v6];
}

- (void)setErrorMessage:(id)message
{
  messageCopy = message;
  v8 = messageCopy;
  if (messageCopy && [messageCopy length])
  {
    _errorCapsule = [(LAPSPasscodeViewControllerBase *)self _errorCapsule];
    [_errorCapsule setText:v8];

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  _errorCapsuleContainer = [(LAPSPasscodeViewControllerBase *)self _errorCapsuleContainer];
  [_errorCapsuleContainer setHidden:v6];

  [(LAPSPasscodeViewControllerBase *)self layoutIfNeeded];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = LAPSPasscodeViewControllerBase;
  [(LAPSPasscodeViewControllerBase *)&v15 viewDidLoad];
  setup = [(LAPSPasscodeViewControllerBase *)self setup];
  managedViews = self->_managedViews;
  self->_managedViews = setup;

  config = [(LAPSPasscodeViewControllerBase *)self config];
  title = [config title];
  [(LAPSPasscodeViewControllerBase *)self setTitle:title];

  config2 = [(LAPSPasscodeViewControllerBase *)self config];
  prompt = [config2 prompt];
  [(LAPSPasscodeViewControllerBase *)self setHeader:prompt];

  config3 = [(LAPSPasscodeViewControllerBase *)self config];
  subPrompt = [config3 subPrompt];
  [(LAPSPasscodeViewControllerBase *)self setSubHeader:subPrompt];

  config4 = [(LAPSPasscodeViewControllerBase *)self config];
  footer = [config4 footer];
  [(LAPSPasscodeViewControllerBase *)self setFooter:footer];

  config5 = [(LAPSPasscodeViewControllerBase *)self config];
  errorMessage = [config5 errorMessage];
  [(LAPSPasscodeViewControllerBase *)self setErrorMessage:errorMessage];

  [(LAPSPasscodeViewControllerBase *)self setupNavigationItem];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = LAPSPasscodeViewControllerBase;
  [(LAPSPasscodeViewControllerBase *)&v10 viewDidLayoutSubviews];
  _scrollView = [(LAPSPasscodeViewControllerBase *)self _scrollView];
  [_scrollView contentSize];
  v5 = v4;
  _scrollView2 = [(LAPSPasscodeViewControllerBase *)self _scrollView];
  [_scrollView2 frame];
  v8 = v7;

  if (v5 > v8)
  {
    _scrollView3 = [(LAPSPasscodeViewControllerBase *)self _scrollView];
    [_scrollView3 _flashScrollIndicatorsPersistingPreviousFlashes];
  }
}

- (BOOL)canBecomeFirstResponder
{
  _passcodeFieldVC = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  canBecomeFirstResponder = [_passcodeFieldVC canBecomeFirstResponder];

  return canBecomeFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  _passcodeFieldVC = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  becomeFirstResponder = [_passcodeFieldVC becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  _passcodeFieldVC = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  resignFirstResponder = [_passcodeFieldVC resignFirstResponder];

  return resignFirstResponder;
}

- (id)navigationItem
{
  parentViewController = [(LAPSPasscodeViewControllerBase *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  v5 = navigationItem;
  if (navigationItem)
  {
    navigationItem2 = navigationItem;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = LAPSPasscodeViewControllerBase;
    navigationItem2 = [(LAPSPasscodeViewControllerBase *)&v9 navigationItem];
  }

  v7 = navigationItem2;

  return v7;
}

- (void)willMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = LAPSPasscodeViewControllerBase;
  [(LAPSPasscodeViewControllerBase *)&v6 willMoveToParentViewController:controller];
  presentedViewController = [(LAPSPasscodeViewControllerBase *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(LAPSPasscodeViewControllerBase *)self presentedViewController];
    [presentedViewController2 dismissViewControllerAnimated:0 completion:&__block_literal_global_16];
  }
}

- (void)cancel
{
  v3 = +[LAPSErrorBuilder userCanceledError];
  [(LAPSPasscodeViewControllerBase *)self _finishWithError:v3];
}

- (void)submit
{
  _passcodeFieldVC = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [_passcodeFieldVC submit];
}

- (BOOL)shouldShowPasscodeOptionsButton
{
  config = [(LAPSPasscodeViewControllerBase *)self config];
  optionsConfiguration = [config optionsConfiguration];
  v4 = optionsConfiguration != 0;

  return v4;
}

- (void)layoutIfNeeded
{
  _scrollView = [(LAPSPasscodeViewControllerBase *)self _scrollView];
  [_scrollView layoutIfNeeded];

  view = [(LAPSPasscodeViewControllerBase *)self view];
  [view layoutIfNeeded];
}

- (BOOL)isAccessibilityTextEnabled
{
  view = [(LAPSPasscodeViewControllerBase *)self view];
  traitCollection = [view traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (int64_t)styleWithPasscodeType:(id)type
{
  result = [type identifier];
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

- (void)passcodeField:(id)field didSubmitPasscode:(id)passcode
{
  fieldCopy = field;
  passcodeCopy = passcode;
  _passcodeFieldVC = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  if (_passcodeFieldVC != fieldCopy)
  {
    [LAPSPasscodeViewControllerBase passcodeField:didSubmitPasscode:];
  }

  passcodeType = [(LAPSPasscodeViewControllerBase *)self passcodeType];
  v9 = [passcodeType allowsLength:{objc_msgSend(passcodeCopy, "length")}];

  if (v9)
  {
    [(LAPSPasscodeViewControllerBase *)self _submitPasscode:passcodeCopy];
  }
}

- (void)passcodeField:(id)field didChangePasscodeLength:(unint64_t)length
{
  fieldCopy = field;
  _passcodeFieldVC = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  if (_passcodeFieldVC != fieldCopy)
  {
    [LAPSPasscodeViewControllerBase passcodeField:didChangePasscodeLength:];
  }

  [(LAPSPasscodeViewControllerBase *)self updateLayoutAfterPasscodeLengthChangeIfNeeded:length];
}

- (void)passcodeOptionsViewController:(id)controller didSelectPasscodeType:(id)type
{
  typeCopy = type;
  [(LAPSPasscodeViewControllerBase *)self _setPasscodeType:typeCopy];
  _passcodeFieldVC = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  [_passcodeFieldVC setStyle:{-[LAPSPasscodeViewControllerBase styleWithPasscodeType:](self, "styleWithPasscodeType:", typeCopy)}];

  [(LAPSPasscodeViewControllerBase *)self updateLayoutAfterPasscodeTypeChangeIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 passcodeViewController:self didSelectPasscodeType:typeCopy];
  }
}

- (void)passcodeOptionsViewControllerWillDisappear:(id)disappear
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

- (void)_setPasscodeType:(id)type
{
  objc_storeStrong(&self->_passcodeType, type);

  [(LAPSPasscodeViewControllerBase *)self setupNavigationItem];
}

- (void)_submitPasscode:(id)passcode
{
  passcodeCopy = passcode;
  passcodeType = [(LAPSPasscodeViewControllerBase *)self passcodeType];
  v5 = [(LAPSPasscodeViewControllerBase *)self styleWithPasscodeType:passcodeType];
  _passcodeFieldVC = [(LAPSPasscodeViewControllerBase *)self _passcodeFieldVC];
  if (v5 != [_passcodeFieldVC style])
  {
    [LAPSPasscodeViewControllerBase _submitPasscode:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [LAPSPasscode alloc];
  passcodeType2 = [(LAPSPasscodeViewControllerBase *)self passcodeType];
  v10 = [(LAPSPasscode *)v8 initWithLocalizedPasscode:passcodeCopy type:passcodeType2];
  [WeakRetained passcodeViewController:self verifyPasscode:v10];
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 passcodeViewController:self didCancelWithError:errorCopy];
  }
}

- (void)_showPasscodeOptionsSourceWithView:(id)view sourceItem:(id)item presentationStyle:(int64_t)style shouldResignFirstResponder:(BOOL)responder
{
  viewCopy = view;
  itemCopy = item;
  v12 = objc_alloc_init(LAPSPasscodeOptionsPresentationController);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __125__LAPSPasscodeViewControllerBase__showPasscodeOptionsSourceWithView_sourceItem_presentationStyle_shouldResignFirstResponder___block_invoke;
  v18[3] = &unk_278A65930;
  v18[4] = self;
  v19 = viewCopy;
  v20 = itemCopy;
  styleCopy = style;
  v13 = itemCopy;
  v14 = viewCopy;
  v15 = __125__LAPSPasscodeViewControllerBase__showPasscodeOptionsSourceWithView_sourceItem_presentationStyle_shouldResignFirstResponder___block_invoke(v18);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __125__LAPSPasscodeViewControllerBase__showPasscodeOptionsSourceWithView_sourceItem_presentationStyle_shouldResignFirstResponder___block_invoke_3;
  v16[3] = &unk_278A65958;
  v16[4] = self;
  responderCopy = responder;
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