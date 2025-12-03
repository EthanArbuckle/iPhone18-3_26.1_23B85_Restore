@interface SafariImportExportButton
- (SafariImportExportButton)initWithText:(id)text primaryAction:(id)action;
- (void)showInProgressWithText:(id)text;
@end

@implementation SafariImportExportButton

- (SafariImportExportButton)initWithText:(id)text primaryAction:(id)action
{
  textCopy = text;
  actionCopy = action;
  v38.receiver = self;
  v38.super_class = SafariImportExportButton;
  v8 = [(SafariImportExportButton *)&v38 init];
  if (v8)
  {
    v36 = +[UIColor systemBlueColor];
    v34 = +[UIColor systemWhiteColor];
    v35 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    layer = [(SafariImportExportButton *)v8 layer];
    [layer setCornerRadius:12.0];

    [(SafariImportExportButton *)v8 setBackgroundColor:v36];
    [(SafariImportExportButton *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SafariImportExportButton *)v8 addAction:actionCopy forControlEvents:64];
    v10 = objc_alloc_init(UILabel);
    buttonLabel = v8->_buttonLabel;
    v8->_buttonLabel = v10;

    [(UILabel *)v8->_buttonLabel setText:textCopy];
    [(UILabel *)v8->_buttonLabel setFont:v35];
    [(UILabel *)v8->_buttonLabel setTextColor:v34];
    LODWORD(v12) = 1148846080;
    [(UILabel *)v8->_buttonLabel setContentCompressionResistancePriority:1 forAxis:v12];
    [(UILabel *)v8->_buttonLabel setNumberOfLines:0];
    v13 = objc_alloc_init(UIStackView);
    buttonStackView = v8->_buttonStackView;
    v8->_buttonStackView = v13;

    [(UIStackView *)v8->_buttonStackView setSpacing:10.0];
    [(UIStackView *)v8->_buttonStackView setUserInteractionEnabled:0];
    [(UIStackView *)v8->_buttonStackView setAxis:0];
    [(UIStackView *)v8->_buttonStackView setAlignment:0];
    [(UIStackView *)v8->_buttonStackView setDistribution:4];
    [(UIStackView *)v8->_buttonStackView setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v8->_buttonStackView setLayoutMargins:15.0, 15.0, 15.0, 15.0];
    [(UIStackView *)v8->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SafariImportExportButton *)v8 addSubview:v8->_buttonStackView];
    centerXAnchor = [(UIStackView *)v8->_buttonStackView centerXAnchor];
    centerXAnchor2 = [(SafariImportExportButton *)v8 centerXAnchor];
    v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v39[0] = v31;
    widthAnchor = [(UIStackView *)v8->_buttonStackView widthAnchor];
    layoutMarginsGuide = [(SafariImportExportButton *)v8 layoutMarginsGuide];
    widthAnchor2 = [layoutMarginsGuide widthAnchor];
    v27 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v39[1] = v27;
    [(UIStackView *)v8->_buttonStackView topAnchor];
    v15 = v37 = textCopy;
    topAnchor = [(SafariImportExportButton *)v8 topAnchor];
    v17 = [v15 constraintEqualToAnchor:topAnchor];
    v39[2] = v17;
    bottomAnchor = [(UIStackView *)v8->_buttonStackView bottomAnchor];
    bottomAnchor2 = [(SafariImportExportButton *)v8 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v39[3] = v20;
    [NSArray arrayWithObjects:v39 count:4];
    v22 = v21 = actionCopy;
    [NSLayoutConstraint activateConstraints:v22];

    actionCopy = v21;
    textCopy = v37;

    v23 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    buttonSpinner = v8->_buttonSpinner;
    v8->_buttonSpinner = v23;

    [(UIStackView *)v8->_buttonStackView addArrangedSubview:v8->_buttonSpinner];
    [(UIStackView *)v8->_buttonStackView addArrangedSubview:v8->_buttonLabel];
    v25 = v8;
  }

  return v8;
}

- (void)showInProgressWithText:(id)text
{
  textCopy = text;
  [(SafariImportExportButton *)self setEnabled:0];
  [(UIActivityIndicatorView *)self->_buttonSpinner startAnimating];
  [(UILabel *)self->_buttonLabel setText:textCopy];
}

@end