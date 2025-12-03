@interface WFRemoteFileStatusView
- (WFRemoteFileStatusView)initWithFrame:(CGRect)frame;
- (WFRemoteFileStatusViewDelegate)delegate;
- (void)recoveryButtonTapped;
- (void)setEmptyWithLabel:(BOOL)label;
- (void)setError:(id)error;
- (void)setLoading;
@end

@implementation WFRemoteFileStatusView

- (WFRemoteFileStatusViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setError:(id)error
{
  errorCopy = error;
  localizedFailureReason = [errorCopy localizedFailureReason];
  localizedDescription = localizedFailureReason;
  if (!localizedFailureReason)
  {
    localizedDescription = [errorCopy localizedDescription];
  }

  statusLabel = [(WFRemoteFileStatusView *)self statusLabel];
  [statusLabel setText:localizedDescription];

  if (!localizedFailureReason)
  {
  }

  recoveryButton = [(WFRemoteFileStatusView *)self recoveryButton];
  [recoveryButton setHidden:0];

  indicatorView = [(WFRemoteFileStatusView *)self indicatorView];
  [indicatorView setHidden:1];

  v9 = MEMORY[0x277CCAAD0];
  emptyConstraints = [(WFRemoteFileStatusView *)self emptyConstraints];
  [v9 deactivateConstraints:emptyConstraints];

  v11 = MEMORY[0x277CCAAD0];
  loadingContraints = [(WFRemoteFileStatusView *)self loadingContraints];
  [v11 deactivateConstraints:loadingContraints];

  v13 = MEMORY[0x277CCAAD0];
  errorConstraints = [(WFRemoteFileStatusView *)self errorConstraints];
  [v13 activateConstraints:errorConstraints];
}

- (void)setLoading
{
  v3 = WFLocalizedString(@"Loading…");
  statusLabel = [(WFRemoteFileStatusView *)self statusLabel];
  [statusLabel setText:v3];

  recoveryButton = [(WFRemoteFileStatusView *)self recoveryButton];
  [recoveryButton setHidden:1];

  indicatorView = [(WFRemoteFileStatusView *)self indicatorView];
  [indicatorView setHidden:0];

  v7 = MEMORY[0x277CCAAD0];
  emptyConstraints = [(WFRemoteFileStatusView *)self emptyConstraints];
  [v7 deactivateConstraints:emptyConstraints];

  v9 = MEMORY[0x277CCAAD0];
  errorConstraints = [(WFRemoteFileStatusView *)self errorConstraints];
  [v9 deactivateConstraints:errorConstraints];

  v11 = MEMORY[0x277CCAAD0];
  loadingContraints = [(WFRemoteFileStatusView *)self loadingContraints];
  [v11 activateConstraints:loadingContraints];
}

- (void)setEmptyWithLabel:(BOOL)label
{
  if (label)
  {
    statusLabel2 = WFLocalizedString(@"This folder is empty");
    statusLabel = [(WFRemoteFileStatusView *)self statusLabel];
    [statusLabel setText:statusLabel2];
  }

  else
  {
    statusLabel2 = [(WFRemoteFileStatusView *)self statusLabel];
    [statusLabel2 setText:0];
  }

  recoveryButton = [(WFRemoteFileStatusView *)self recoveryButton];
  [recoveryButton setHidden:1];

  indicatorView = [(WFRemoteFileStatusView *)self indicatorView];
  [indicatorView setHidden:1];

  v8 = MEMORY[0x277CCAAD0];
  errorConstraints = [(WFRemoteFileStatusView *)self errorConstraints];
  [v8 deactivateConstraints:errorConstraints];

  v10 = MEMORY[0x277CCAAD0];
  loadingContraints = [(WFRemoteFileStatusView *)self loadingContraints];
  [v10 deactivateConstraints:loadingContraints];

  v12 = MEMORY[0x277CCAAD0];
  emptyConstraints = [(WFRemoteFileStatusView *)self emptyConstraints];
  [v12 activateConstraints:emptyConstraints];
}

- (void)recoveryButtonTapped
{
  delegate = [(WFRemoteFileStatusView *)self delegate];
  [delegate statusViewDidPressRecoveryButton:self];
}

- (WFRemoteFileStatusView)initWithFrame:(CGRect)frame
{
  v43[3] = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = WFRemoteFileStatusView;
  v3 = [(WFRemoteFileStatusView *)&v42 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WFRemoteFileStatusView *)v3 setBackgroundColor:systemBackgroundColor];

    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFRemoteFileStatusView *)v3 addSubview:v5];
    containerView = v3->_containerView;
    v3->_containerView = v5;
    v7 = v5;

    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UILabel *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    grayColor = [MEMORY[0x277D75348] grayColor];
    [(UILabel *)v8 setTextColor:grayColor];

    [(UILabel *)v8 setNumberOfLines:0];
    [(UILabel *)v8 setTextAlignment:1];
    [(UIView *)v7 addSubview:v8];
    statusLabel = v3->_statusLabel;
    v3->_statusLabel = v8;
    v40 = v8;

    v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(UIActivityIndicatorView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v11 setHidden:1];
    [(UIView *)v7 addSubview:v11];
    [(UIActivityIndicatorView *)v11 startAnimating];
    indicatorView = v3->_indicatorView;
    v3->_indicatorView = v11;
    v41 = v11;

    v13 = [MEMORY[0x277D75220] buttonWithType:1];
    [(UIButton *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v13 setHidden:1];
    v14 = WFLocalizedString(@"Retry");
    [(UIButton *)v13 setTitle:v14 forState:0];

    [(UIButton *)v13 addTarget:v3 action:sel_recoveryButtonTapped forControlEvents:64];
    [(UIView *)v7 addSubview:v13];
    recoveryButton = v3->_recoveryButton;
    v3->_recoveryButton = v13;
    v39 = v13;

    v16 = MEMORY[0x277CCAAD0];
    v17 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    v43[0] = v17;
    v18 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:7 relatedBy:-1 toItem:v3 attribute:7 multiplier:1.0 constant:-40.0];
    v43[1] = v18;
    v19 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    v43[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
    [v16 activateConstraints:v20];

    v21 = _NSDictionaryOfVariableBindings(&cfstr_StatuslabelInd.isa, v40, v41, v39, 0);
    v22 = objc_opt_new();
    v23 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[statusLabel]|" options:0 metrics:0 views:v21];
    [(NSArray *)v22 addObjectsFromArray:v23];

    v24 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[statusLabel]|" options:0 metrics:0 views:v21];
    [(NSArray *)v22 addObjectsFromArray:v24];

    emptyConstraints = v3->_emptyConstraints;
    v3->_emptyConstraints = v22;
    v26 = v22;

    v27 = objc_opt_new();
    v28 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[statusLabel]-[indicatorView]|" options:1024 metrics:0 views:v21];
    [(NSArray *)v27 addObjectsFromArray:v28];

    v29 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[statusLabel]|" options:0 metrics:0 views:v21];
    [(NSArray *)v27 addObjectsFromArray:v29];

    loadingContraints = v3->_loadingContraints;
    v3->_loadingContraints = v27;
    v31 = v27;

    v32 = objc_opt_new();
    v33 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[statusLabel]-[recoveryButton]|" options:512 metrics:0 views:v21];
    [(NSArray *)v32 addObjectsFromArray:v33];

    v34 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[statusLabel]|" options:0 metrics:0 views:v21];
    [(NSArray *)v32 addObjectsFromArray:v34];

    errorConstraints = v3->_errorConstraints;
    v3->_errorConstraints = v32;

    [(WFRemoteFileStatusView *)v3 setLoading];
    v36 = v3;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v3;
}

@end