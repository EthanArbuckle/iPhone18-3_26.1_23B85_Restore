@interface AKParentalApprovalRequestViewController
- (AKAuthorizationViewController)authorizationViewController;
- (AKParentalApprovalRequestViewController)initWithPresentationContext:(id)context;
- (id)_localizedButtonTitleString;
- (id)_localizedDescriptionLabelString;
- (id)_localizedTitleString;
- (id)_userResponse;
- (void)_addSendButtonToContext:(id)context;
- (void)_createIconViewWithIcon:(id)icon;
- (void)_handleAuthorizationError:(id)error;
- (void)_paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:(id)authorization error:(id)error;
- (void)_paneDelegate_didRequestAuthorizationWithUserProvidedInformation:(id)information completion:(id)completion;
- (void)_sendButtonSelected:(id)selected;
- (void)_setupIconView;
- (void)_setupMessageLabel;
- (void)_setupTitleLabel;
- (void)viewDidLoad;
@end

@implementation AKParentalApprovalRequestViewController

- (AKParentalApprovalRequestViewController)initWithPresentationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKParentalApprovalRequestViewController;
  selfCopy = [(AKAuthorizationPaneViewController *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_presentationContext, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = AKParentalApprovalRequestViewController;
  [(AKAuthorizationPaneViewController *)&v7 viewDidLoad];
  [(AKParentalApprovalRequestViewController *)selfCopy _setupIconView];
  [(AKParentalApprovalRequestViewController *)selfCopy _setupTitleLabel];
  [(AKParentalApprovalRequestViewController *)selfCopy _setupMessageLabel];
  v3 = selfCopy;
  footerPaneContext = [(AKAuthorizationPaneViewController *)selfCopy footerPaneContext];
  [(AKParentalApprovalRequestViewController *)v3 _addSendButtonToContext:?];
  *&v2 = MEMORY[0x277D82BD8](footerPaneContext).n128_u64[0];
  v5 = MEMORY[0x277CCAAD0];
  mutableConstraints = [(AKAuthorizationPaneViewController *)selfCopy mutableConstraints];
  [v5 activateConstraints:?];
  MEMORY[0x277D82BD8](mutableConstraints);
}

- (void)_setupIconView
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [AKIcon iconWithPresentationContext:self->_presentationContext];
  if ([v8[0] iconType] == 1)
  {
    +[AKAuthorizationPaneMetrics iconSize];
    v5 = [AKIcon iconWithName:@"AppleLogo" size:v3, v4];
    v6 = v8[0];
    v8[0] = v5;
    *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  [(AKParentalApprovalRequestViewController *)selfCopy _createIconViewWithIcon:v8[0], v2, v8];
  objc_storeStrong(location, 0);
}

- (void)_setupTitleLabel
{
  selfCopy = self;
  v6[1] = a2;
  v3 = [AKAuthorizationSubPaneInfoLabel alloc];
  _localizedTitleString = [(AKParentalApprovalRequestViewController *)selfCopy _localizedTitleString];
  v6[0] = [(AKAuthorizationSubPaneInfoLabel *)v3 initWithString:?];
  *&v2 = MEMORY[0x277D82BD8](_localizedTitleString).n128_u64[0];
  [v6[0] setInfoLabelType:{1, v2}];
  headerPaneContext = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
  [(AKAuthorizationPaneContext *)headerPaneContext addSubPane:v6[0]];
  MEMORY[0x277D82BD8](headerPaneContext);
  objc_storeStrong(v6, 0);
}

- (void)_setupMessageLabel
{
  v4 = [AKAuthorizationSubPaneInfoLabel alloc];
  _localizedDescriptionLabelString = [(AKParentalApprovalRequestViewController *)self _localizedDescriptionLabelString];
  v2 = [(AKAuthorizationSubPaneInfoLabel *)v4 initWithString:?];
  messageLabel = self->_messageLabel;
  self->_messageLabel = v2;
  MEMORY[0x277D82BD8](messageLabel);
  [(AKAuthorizationSubPaneInfoLabel *)self->_messageLabel setInfoLabelType:0, MEMORY[0x277D82BD8](_localizedDescriptionLabelString).n128_f64[0]];
  headerPaneContext = [(AKAuthorizationPaneViewController *)self headerPaneContext];
  [(AKAuthorizationPaneContext *)headerPaneContext addSubPane:self->_messageLabel];
  MEMORY[0x277D82BD8](headerPaneContext);
}

- (void)_addSendButtonToContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = [AKAuthorizationContinueButton alloc];
  v20 = [(AKAuthorizationContinueButton *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(AKAuthorizationContinueButton *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  _localizedButtonTitleString = [(AKParentalApprovalRequestViewController *)selfCopy _localizedButtonTitleString];
  [(AKAuthorizationButton *)v20 setButtonText:?];
  *&v4 = MEMORY[0x277D82BD8](_localizedButtonTitleString).n128_u64[0];
  [(AKAuthorizationButton *)v20 addTarget:selfCopy action:sel__sendButtonSelected_, v4];
  stackView = [location[0] stackView];
  +[AKAuthorizationPaneMetrics continueButtonTopSpacing];
  v10 = v5;
  stackView2 = [location[0] stackView];
  arrangedSubviews = [stackView2 arrangedSubviews];
  lastObject = [arrangedSubviews lastObject];
  [stackView setCustomSpacing:v10 afterView:?];
  MEMORY[0x277D82BD8](lastObject);
  MEMORY[0x277D82BD8](arrangedSubviews);
  MEMORY[0x277D82BD8](stackView2);
  *&v6 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
  stackView3 = [location[0] stackView];
  [stackView3 addArrangedSubview:v20];
  *&v7 = MEMORY[0x277D82BD8](stackView3).n128_u64[0];
  stackView4 = [location[0] stackView];
  +[AKAuthorizationPaneMetrics continueButtonBottomSpacing];
  [stackView4 setCustomSpacing:v20 afterView:?];
  *&v8 = MEMORY[0x277D82BD8](stackView4).n128_u64[0];
  mutableConstraints = [location[0] mutableConstraints];
  heightAnchor = [(AKAuthorizationContinueButton *)v20 heightAnchor];
  +[AKAuthorizationPaneMetrics continueButtonHeight];
  v17 = [heightAnchor constraintEqualToConstant:?];
  [mutableConstraints addObject:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](mutableConstraints);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_createIconViewWithIcon:(id)icon
{
  v39[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, icon);
  v36 = objc_alloc_init(MEMORY[0x277D75D18]);
  headerPaneContext = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
  stackView = [(AKAuthorizationPaneContext *)headerPaneContext stackView];
  [(UIStackView *)stackView addArrangedSubview:v36];
  MEMORY[0x277D82BD8](stackView);
  *&v3 = MEMORY[0x277D82BD8](headerPaneContext).n128_u64[0];
  headerPaneContext2 = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
  stackView2 = [(AKAuthorizationPaneContext *)headerPaneContext2 stackView];
  +[AKAuthorizationPaneMetrics iconTopSpacing];
  [(UIStackView *)stackView2 setCustomSpacing:v36 afterView:?];
  MEMORY[0x277D82BD8](stackView2);
  *&v4 = MEMORY[0x277D82BD8](headerPaneContext2).n128_u64[0];
  automaskedImage = [location[0] automaskedImage];
  v34 = [[AKAuthorizationSubPaneImage alloc] initWithImage:automaskedImage];
  image = [(AKAuthorizationSubPaneImage *)v34 image];
  [(UIImage *)image size];
  v32 = 0;
  v30 = 0;
  if (v5 == 0.0)
  {
    v24 = 1.0;
  }

  else
  {
    image2 = [(AKAuthorizationSubPaneImage *)v34 image];
    v32 = 1;
    [(UIImage *)image2 size];
    v23 = v6;
    image3 = [(AKAuthorizationSubPaneImage *)v34 image];
    v30 = 1;
    [(UIImage *)image3 size];
    v24 = v23 / v7;
  }

  if (v30)
  {
    MEMORY[0x277D82BD8](image3);
  }

  if (v32)
  {
    MEMORY[0x277D82BD8](image2);
  }

  MEMORY[0x277D82BD8](image);
  v11 = v34;
  imageView = [(AKAuthorizationSubPaneImage *)v34 imageView];
  heightAnchor = [(UIImageView *)imageView heightAnchor];
  +[AKAuthorizationPaneMetrics iconSize];
  v18 = [heightAnchor constraintEqualToConstant:v8];
  v39[0] = v18;
  imageView2 = [(AKAuthorizationSubPaneImage *)v34 imageView];
  widthAnchor = [(UIImageView *)imageView2 widthAnchor];
  imageView3 = [(AKAuthorizationSubPaneImage *)v34 imageView];
  heightAnchor2 = [(UIImageView *)imageView3 heightAnchor];
  v13 = [widthAnchor constraintEqualToAnchor:v24 multiplier:?];
  v39[1] = v13;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  [(AKAuthorizationSubPaneImage *)v11 setImageViewConstraints:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](imageView3);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](imageView2);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](heightAnchor);
  *&v9 = MEMORY[0x277D82BD8](imageView).n128_u64[0];
  headerPaneContext3 = [(AKAuthorizationPaneViewController *)selfCopy headerPaneContext];
  [(AKAuthorizationPaneContext *)headerPaneContext3 addSubPane:v34];
  *&v10 = MEMORY[0x277D82BD8](headerPaneContext3).n128_u64[0];
  v22 = v34;
  +[AKAuthorizationPaneMetrics iconBottomSpacing];
  [(AKAuthorizationSubPane *)v22 setCustomSpacingAfter:?];
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&automaskedImage, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_localizedTitleString
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APPROVAL_REQUEST_TITLE_MESSAGE" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_localizedDescriptionLabelString
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationPresentationContext *)self->_presentationContext localizedAppName];
  if ([location[0] length])
  {
    if (selfCopy->_requestStatusPending)
    {
      v9 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v11 localizedStringForKey:@"APPROVAL_REQUEST_PENDING_MESSAGE_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
      v14 = [v9 stringWithFormat:location[0]];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
    }

    else
    {
      v6 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v8 localizedStringForKey:@"APPROVAL_REQUEST_MESSAGE_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
      v14 = [v6 stringWithFormat:location[0]];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
    }
  }

  else if (selfCopy->_requestStatusPending)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v5 localizedStringForKey:@"APPROVAL_REQUEST_PENDING_MESSAGE" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v4 localizedStringForKey:@"APPROVAL_REQUEST_MESSAGE" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
  v2 = v14;

  return v2;
}

- (id)_localizedButtonTitleString
{
  if (self->_requestStatusPending)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"APPROVAL_REQUEST_OK_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v3 localizedStringForKey:@"APPROVAL_REQUEST_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v3);
  }

  return v5;
}

- (void)_sendButtonSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  v15 = _AKLogSiwa();
  v14 = 2;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    log = v15;
    type = v14;
    __os_log_helper_16_0_0(v13);
    _os_log_debug_impl(&dword_222379000, log, type, "User requested parental permission", v13, 2u);
  }

  objc_storeStrong(&v15, 0);
  v3 = selfCopy;
  _userResponse = [(AKParentalApprovalRequestViewController *)selfCopy _userResponse];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __63__AKParentalApprovalRequestViewController__sendButtonSelected___block_invoke;
  v11 = &unk_2784A6448;
  v12 = MEMORY[0x277D82BE0](selfCopy);
  [(AKParentalApprovalRequestViewController *)v3 _paneDelegate_didRequestAuthorizationWithUserProvidedInformation:_userResponse completion:&v7];
  MEMORY[0x277D82BD8](_userResponse);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void __63__AKParentalApprovalRequestViewController__sendButtonSelected___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23[1] = a1;
  if (v24)
  {
    v7 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v7;
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __63__AKParentalApprovalRequestViewController__sendButtonSelected___block_invoke_2;
    v21 = &unk_2784A6420;
    v22 = MEMORY[0x277D82BE0](a1[4]);
    v23[0] = MEMORY[0x277D82BE0](v24);
    dispatch_async(queue, &v17);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v23, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v5 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    v6 = v5;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __63__AKParentalApprovalRequestViewController__sendButtonSelected___block_invoke_3;
    v15 = &unk_2784A5C90;
    v16 = MEMORY[0x277D82BE0](a1[4]);
    dispatch_async(v6, &v11);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleAuthorizationError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  [location[0] ak_isUserCancelError];
  [(AKParentalApprovalRequestViewController *)selfCopy _paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:0 error:location[0]];
  objc_storeStrong(location, 0);
}

- (id)_userResponse
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(MEMORY[0x277CF01C8]);
  [v4[0] setRequestParentalPermission:1];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (void)_paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:(id)authorization error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v6 = 0;
  objc_storeStrong(&v6, error);
  paneDelegate = [(AKAuthorizationPaneViewController *)selfCopy paneDelegate];
  if (objc_opt_respondsToSelector())
  {
    [paneDelegate authorizationPaneViewController:selfCopy dismissWithAuthorization:location[0] error:v6];
  }

  objc_storeStrong(&paneDelegate, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_paneDelegate_didRequestAuthorizationWithUserProvidedInformation:(id)information completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  paneDelegate = [(AKAuthorizationPaneViewController *)selfCopy paneDelegate];
  if (objc_opt_respondsToSelector())
  {
    [paneDelegate authorizationPaneViewController:selfCopy didRequestAuthorizationWithUserProvidedInformation:location[0] completion:v6];
  }

  objc_storeStrong(&paneDelegate, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (AKAuthorizationViewController)authorizationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_authorizationViewController);

  return WeakRetained;
}

@end