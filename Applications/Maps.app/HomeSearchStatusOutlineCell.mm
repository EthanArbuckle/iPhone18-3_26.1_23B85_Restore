@interface HomeSearchStatusOutlineCell
- (HomeSearchStatusOutlineCell)initWithFrame:(CGRect)frame;
- (void)_didTapOnRAPButton;
- (void)_removeRAPButton;
- (void)_updateFromModel;
- (void)prepareForReuse;
- (void)setCellModel:(id)model;
@end

@implementation HomeSearchStatusOutlineCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HomeSearchStatusOutlineCell;
  [(HomeSearchStatusOutlineCell *)&v3 prepareForReuse];
  [(UIActivityIndicatorView *)self->_loadingIndicator startAnimating];
}

- (void)_didTapOnRAPButton
{
  delegate = [(HomeSearchStatusOutlineCellModel *)self->_cellModel delegate];
  [delegate didTapOnReportAnIssue];
}

- (void)_removeRAPButton
{
  [(UIStackView *)self->_stackView removeArrangedSubview:self->_rapButton];
  rapButton = self->_rapButton;

  [(UIButton *)rapButton removeFromSuperview];
}

- (void)_updateFromModel
{
  v3 = sub_1000410AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    errorString = [(HomeSearchStatusOutlineCellModel *)self->_cellModel errorString];
    enableStructuredRAPAffordance = [(HomeSearchStatusOutlineCellModel *)self->_cellModel enableStructuredRAPAffordance];
    v10 = 138412546;
    v11 = errorString;
    v12 = 1024;
    v13 = enableStructuredRAPAffordance;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Loading started for search %@ enableStructuredRAPAffordance %d", &v10, 0x12u);
  }

  errorString2 = [(HomeSearchStatusOutlineCellModel *)self->_cellModel errorString];
  v7 = [errorString2 length];

  if (v7)
  {
    errorString3 = [(HomeSearchStatusOutlineCellModel *)self->_cellModel errorString];
    [(UILabel *)self->_errorLabel setText:errorString3];

    [(UIActivityIndicatorView *)self->_loadingIndicator setHidden:1];
    [(UILabel *)self->_errorLabel setHidden:0];
    if ([(HomeSearchStatusOutlineCellModel *)self->_cellModel enableStructuredRAPAffordance])
    {
      [(HomeSearchStatusOutlineCell *)self _addRAPButton];
    }

    else
    {
      [(HomeSearchStatusOutlineCell *)self _removeRAPButton];
    }

    contentView = [(HomeSearchStatusOutlineCell *)self contentView];
    [contentView invalidateIntrinsicContentSize];
  }

  else
  {
    [(UIActivityIndicatorView *)self->_loadingIndicator setHidden:0];
    [(UILabel *)self->_errorLabel setHidden:1];
    [(HomeSearchStatusOutlineCell *)self _removeRAPButton];
  }
}

- (void)setCellModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_cellModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(HomeSearchStatusOutlineCellModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_cellModel, model);
      [(HomeSearchStatusOutlineCell *)self _updateFromModel];
      v6 = v8;
    }
  }
}

- (HomeSearchStatusOutlineCell)initWithFrame:(CGRect)frame
{
  v57.receiver = self;
  v57.super_class = HomeSearchStatusOutlineCell;
  v3 = [(SidebarOutlineCell *)&v57 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIStackView);
    stackView = v3->_stackView;
    v3->_stackView = v4;

    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setAxis:1];
    [(UIStackView *)v3->_stackView setDistribution:0];
    [(UIStackView *)v3->_stackView setAlignment:1];
    contentView = [(HomeSearchStatusOutlineCell *)v3 contentView];
    [contentView addSubview:v3->_stackView];

    v7 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    errorLabel = v3->_errorLabel;
    v3->_errorLabel = v11;

    [(UILabel *)v3->_errorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_errorLabel setNumberOfLines:0];
    v13 = +[UIFont system17];
    [(UILabel *)v3->_errorLabel setFont:v13];

    v14 = +[UIColor secondaryLabelColor];
    [(UILabel *)v3->_errorLabel setTextColor:v14];

    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_errorLabel];
    v15 = [[UIActivityIndicatorView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    loadingIndicator = v3->_loadingIndicator;
    v3->_loadingIndicator = v15;

    [(UIActivityIndicatorView *)v3->_loadingIndicator setActivityIndicatorViewStyle:100];
    [(UIActivityIndicatorView *)v3->_loadingIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = +[UIColor blackColor];
    [(UIActivityIndicatorView *)v3->_loadingIndicator setColor:v17];

    contentView2 = [(HomeSearchStatusOutlineCell *)v3 contentView];
    [contentView2 addSubview:v3->_loadingIndicator];

    [(UIActivityIndicatorView *)v3->_loadingIndicator setHidesWhenStopped:0];
    [(UIActivityIndicatorView *)v3->_loadingIndicator startAnimating];
    v19 = +[UIButtonConfiguration plainButtonConfiguration];
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"Add a Missing Place" value:@"localized string not found" table:0];
    v56 = v19;
    [v19 setTitle:v21];

    v22 = [UIButton buttonWithType:1];
    rapButton = v3->_rapButton;
    v3->_rapButton = v22;

    [(UIButton *)v3->_rapButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_rapButton addTarget:v3 action:"_didTapOnRAPButton" forControlEvents:64];
    [(UIButton *)v3->_rapButton setConfiguration:v19];
    topAnchor = [(UIStackView *)v3->_stackView topAnchor];
    contentView3 = [(HomeSearchStatusOutlineCell *)v3 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    v58[0] = v52;
    leadingAnchor = [(UIStackView *)v3->_stackView leadingAnchor];
    contentView4 = [(HomeSearchStatusOutlineCell *)v3 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v58[1] = v47;
    trailingAnchor = [(UIStackView *)v3->_stackView trailingAnchor];
    contentView5 = [(HomeSearchStatusOutlineCell *)v3 contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v58[2] = v42;
    bottomAnchor = [(UIStackView *)v3->_stackView bottomAnchor];
    contentView6 = [(HomeSearchStatusOutlineCell *)v3 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
    v58[3] = v38;
    leadingAnchor3 = [(UIActivityIndicatorView *)v3->_loadingIndicator leadingAnchor];
    leadingAnchor4 = [(UIStackView *)v3->_stackView leadingAnchor];
    v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v58[4] = v35;
    trailingAnchor3 = [(UIActivityIndicatorView *)v3->_loadingIndicator trailingAnchor];
    trailingAnchor4 = [(UIStackView *)v3->_stackView trailingAnchor];
    v25 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    v58[5] = v25;
    topAnchor3 = [(UIActivityIndicatorView *)v3->_loadingIndicator topAnchor];
    topAnchor4 = [(UIStackView *)v3->_stackView topAnchor];
    v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v58[6] = v28;
    bottomAnchor3 = [(UIActivityIndicatorView *)v3->_loadingIndicator bottomAnchor];
    bottomAnchor4 = [(UIStackView *)v3->_stackView bottomAnchor];
    v31 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
    v58[7] = v31;
    v32 = [NSArray arrayWithObjects:v58 count:8];
    [NSLayoutConstraint activateConstraints:v32];
  }

  return v3;
}

@end