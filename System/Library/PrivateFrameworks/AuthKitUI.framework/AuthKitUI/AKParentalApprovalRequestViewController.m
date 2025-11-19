@interface AKParentalApprovalRequestViewController
- (AKAuthorizationViewController)authorizationViewController;
- (AKParentalApprovalRequestViewController)initWithPresentationContext:(id)a3;
- (id)_localizedButtonTitleString;
- (id)_localizedDescriptionLabelString;
- (id)_localizedTitleString;
- (id)_userResponse;
- (void)_addSendButtonToContext:(id)a3;
- (void)_createIconViewWithIcon:(id)a3;
- (void)_handleAuthorizationError:(id)a3;
- (void)_paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:(id)a3 error:(id)a4;
- (void)_paneDelegate_didRequestAuthorizationWithUserProvidedInformation:(id)a3 completion:(id)a4;
- (void)_sendButtonSelected:(id)a3;
- (void)_setupIconView;
- (void)_setupMessageLabel;
- (void)_setupTitleLabel;
- (void)viewDidLoad;
@end

@implementation AKParentalApprovalRequestViewController

- (AKParentalApprovalRequestViewController)initWithPresentationContext:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKParentalApprovalRequestViewController;
  v8 = [(AKAuthorizationPaneViewController *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_presentationContext, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)viewDidLoad
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = AKParentalApprovalRequestViewController;
  [(AKAuthorizationPaneViewController *)&v7 viewDidLoad];
  [(AKParentalApprovalRequestViewController *)v9 _setupIconView];
  [(AKParentalApprovalRequestViewController *)v9 _setupTitleLabel];
  [(AKParentalApprovalRequestViewController *)v9 _setupMessageLabel];
  v3 = v9;
  v4 = [(AKAuthorizationPaneViewController *)v9 footerPaneContext];
  [(AKParentalApprovalRequestViewController *)v3 _addSendButtonToContext:?];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v5 = MEMORY[0x277CCAAD0];
  v6 = [(AKAuthorizationPaneViewController *)v9 mutableConstraints];
  [v5 activateConstraints:?];
  MEMORY[0x277D82BD8](v6);
}

- (void)_setupIconView
{
  v9 = self;
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

  [(AKParentalApprovalRequestViewController *)v9 _createIconViewWithIcon:v8[0], v2, v8];
  objc_storeStrong(location, 0);
}

- (void)_setupTitleLabel
{
  v7 = self;
  v6[1] = a2;
  v3 = [AKAuthorizationSubPaneInfoLabel alloc];
  v4 = [(AKParentalApprovalRequestViewController *)v7 _localizedTitleString];
  v6[0] = [(AKAuthorizationSubPaneInfoLabel *)v3 initWithString:?];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  [v6[0] setInfoLabelType:{1, v2}];
  v5 = [(AKAuthorizationPaneViewController *)v7 headerPaneContext];
  [(AKAuthorizationPaneContext *)v5 addSubPane:v6[0]];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(v6, 0);
}

- (void)_setupMessageLabel
{
  v4 = [AKAuthorizationSubPaneInfoLabel alloc];
  v5 = [(AKParentalApprovalRequestViewController *)self _localizedDescriptionLabelString];
  v2 = [(AKAuthorizationSubPaneInfoLabel *)v4 initWithString:?];
  messageLabel = self->_messageLabel;
  self->_messageLabel = v2;
  MEMORY[0x277D82BD8](messageLabel);
  [(AKAuthorizationSubPaneInfoLabel *)self->_messageLabel setInfoLabelType:0, MEMORY[0x277D82BD8](v5).n128_f64[0]];
  v6 = [(AKAuthorizationPaneViewController *)self headerPaneContext];
  [(AKAuthorizationPaneContext *)v6 addSubPane:self->_messageLabel];
  MEMORY[0x277D82BD8](v6);
}

- (void)_addSendButtonToContext:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [AKAuthorizationContinueButton alloc];
  v20 = [(AKAuthorizationContinueButton *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(AKAuthorizationContinueButton *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(AKParentalApprovalRequestViewController *)v22 _localizedButtonTitleString];
  [(AKAuthorizationButton *)v20 setButtonText:?];
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  [(AKAuthorizationButton *)v20 addTarget:v22 action:sel__sendButtonSelected_, v4];
  v14 = [location[0] stackView];
  +[AKAuthorizationPaneMetrics continueButtonTopSpacing];
  v10 = v5;
  v13 = [location[0] stackView];
  v12 = [v13 arrangedSubviews];
  v11 = [v12 lastObject];
  [v14 setCustomSpacing:v10 afterView:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  *&v6 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v15 = [location[0] stackView];
  [v15 addArrangedSubview:v20];
  *&v7 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  v16 = [location[0] stackView];
  +[AKAuthorizationPaneMetrics continueButtonBottomSpacing];
  [v16 setCustomSpacing:v20 afterView:?];
  *&v8 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v19 = [location[0] mutableConstraints];
  v18 = [(AKAuthorizationContinueButton *)v20 heightAnchor];
  +[AKAuthorizationPaneMetrics continueButtonHeight];
  v17 = [v18 constraintEqualToConstant:?];
  [v19 addObject:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_createIconViewWithIcon:(id)a3
{
  v39[2] = *MEMORY[0x277D85DE8];
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = objc_alloc_init(MEMORY[0x277D75D18]);
  v26 = [(AKAuthorizationPaneViewController *)v38 headerPaneContext];
  v25 = [(AKAuthorizationPaneContext *)v26 stackView];
  [(UIStackView *)v25 addArrangedSubview:v36];
  MEMORY[0x277D82BD8](v25);
  *&v3 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  v28 = [(AKAuthorizationPaneViewController *)v38 headerPaneContext];
  v27 = [(AKAuthorizationPaneContext *)v28 stackView];
  +[AKAuthorizationPaneMetrics iconTopSpacing];
  [(UIStackView *)v27 setCustomSpacing:v36 afterView:?];
  MEMORY[0x277D82BD8](v27);
  *&v4 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  v35 = [location[0] automaskedImage];
  v34 = [[AKAuthorizationSubPaneImage alloc] initWithImage:v35];
  v29 = [(AKAuthorizationSubPaneImage *)v34 image];
  [(UIImage *)v29 size];
  v32 = 0;
  v30 = 0;
  if (v5 == 0.0)
  {
    v24 = 1.0;
  }

  else
  {
    v33 = [(AKAuthorizationSubPaneImage *)v34 image];
    v32 = 1;
    [(UIImage *)v33 size];
    v23 = v6;
    v31 = [(AKAuthorizationSubPaneImage *)v34 image];
    v30 = 1;
    [(UIImage *)v31 size];
    v24 = v23 / v7;
  }

  if (v30)
  {
    MEMORY[0x277D82BD8](v31);
  }

  if (v32)
  {
    MEMORY[0x277D82BD8](v33);
  }

  MEMORY[0x277D82BD8](v29);
  v11 = v34;
  v20 = [(AKAuthorizationSubPaneImage *)v34 imageView];
  v19 = [(UIImageView *)v20 heightAnchor];
  +[AKAuthorizationPaneMetrics iconSize];
  v18 = [v19 constraintEqualToConstant:v8];
  v39[0] = v18;
  v17 = [(AKAuthorizationSubPaneImage *)v34 imageView];
  v16 = [(UIImageView *)v17 widthAnchor];
  v15 = [(AKAuthorizationSubPaneImage *)v34 imageView];
  v14 = [(UIImageView *)v15 heightAnchor];
  v13 = [v16 constraintEqualToAnchor:v24 multiplier:?];
  v39[1] = v13;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  [(AKAuthorizationSubPaneImage *)v11 setImageViewConstraints:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  *&v9 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v21 = [(AKAuthorizationPaneViewController *)v38 headerPaneContext];
  [(AKAuthorizationPaneContext *)v21 addSubPane:v34];
  *&v10 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  v22 = v34;
  +[AKAuthorizationPaneMetrics iconBottomSpacing];
  [(AKAuthorizationSubPane *)v22 setCustomSpacingAfter:?];
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
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
  v13 = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationPresentationContext *)self->_presentationContext localizedAppName];
  if ([location[0] length])
  {
    if (v13->_requestStatusPending)
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

  else if (v13->_requestStatusPending)
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

- (void)_sendButtonSelected:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v3 = v17;
  v4 = [(AKParentalApprovalRequestViewController *)v17 _userResponse];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __63__AKParentalApprovalRequestViewController__sendButtonSelected___block_invoke;
  v11 = &unk_2784A6448;
  v12 = MEMORY[0x277D82BE0](v17);
  [(AKParentalApprovalRequestViewController *)v3 _paneDelegate_didRequestAuthorizationWithUserProvidedInformation:v4 completion:&v7];
  MEMORY[0x277D82BD8](v4);
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

- (void)_handleAuthorizationError:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] ak_isUserCancelError];
  [(AKParentalApprovalRequestViewController *)v4 _paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:0 error:location[0]];
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

- (void)_paneDelegate_authorizationPaneViewControllerDismissWithAuthorization:(id)a3 error:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKAuthorizationPaneViewController *)v8 paneDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 authorizationPaneViewController:v8 dismissWithAuthorization:location[0] error:v6];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_paneDelegate_didRequestAuthorizationWithUserProvidedInformation:(id)a3 completion:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKAuthorizationPaneViewController *)v8 paneDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 authorizationPaneViewController:v8 didRequestAuthorizationWithUserProvidedInformation:location[0] completion:v6];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (AKAuthorizationViewController)authorizationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_authorizationViewController);

  return WeakRetained;
}

@end