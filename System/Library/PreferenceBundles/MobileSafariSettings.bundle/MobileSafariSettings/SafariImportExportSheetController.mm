@interface SafariImportExportSheetController
- (SafariImportExportSheetController)initWithTitleText:(id)text detailText:(id)detailText buttonText:(id)buttonText buttonAction:(id)action;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SafariImportExportSheetController

- (SafariImportExportSheetController)initWithTitleText:(id)text detailText:(id)detailText buttonText:(id)buttonText buttonAction:(id)action
{
  textCopy = text;
  detailTextCopy = detailText;
  buttonTextCopy = buttonText;
  actionCopy = action;
  v27.receiver = self;
  v27.super_class = SafariImportExportSheetController;
  v14 = [(SafariImportExportSheetController *)&v27 init];
  if (v14)
  {
    v15 = objc_alloc_init(UIScrollView);
    scrollView = v14->_scrollView;
    v14->_scrollView = v15;

    v17 = objc_alloc_init(UIStackView);
    stackView = v14->_stackView;
    v14->_stackView = v17;

    v19 = objc_alloc_init(UILabel);
    titleLabel = v14->_titleLabel;
    v14->_titleLabel = v19;

    [(UILabel *)v14->_titleLabel setText:textCopy];
    if (detailTextCopy)
    {
      v21 = objc_alloc_init(UILabel);
      detailLabel = v14->_detailLabel;
      v14->_detailLabel = v21;

      [(UILabel *)v14->_detailLabel setText:detailTextCopy];
    }

    v23 = [[SafariImportExportButton alloc] initWithText:buttonTextCopy primaryAction:actionCopy];
    button = v14->_button;
    v14->_button = v23;

    v25 = v14;
  }

  return v14;
}

- (void)viewDidLoad
{
  v84.receiver = self;
  v84.super_class = SafariImportExportSheetController;
  [(SafariImportExportSheetController *)&v84 viewDidLoad];
  v83 = [UIFont preferredFontForTextStyle:UIFontTextStyleExtraLargeTitle];
  v82 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [(UIScrollView *)self->_scrollView addSubview:self->_stackView];
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(SafariImportExportSheetController *)self view];
  [view addSubview:self->_scrollView];

  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  view2 = [(SafariImportExportSheetController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v69 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v87[0] = v69;
  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  view3 = [(SafariImportExportSheetController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v4 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v87[1] = v4;
  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  view4 = [(SafariImportExportSheetController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v87[2] = v9;
  v10 = [NSArray arrayWithObjects:v87 count:3];
  [NSLayoutConstraint activateConstraints:v10];

  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setAlignment:3];
  [(UIStackView *)self->_stackView setDistribution:0];
  [(UIStackView *)self->_stackView setSpacing:20.0];
  [(UIStackView *)self->_stackView setLayoutMarginsRelativeArrangement:1];
  [(UIStackView *)self->_stackView setLayoutMargins:20.0, 20.0, 0.0, 20.0];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor3 = [(UIStackView *)self->_stackView topAnchor];
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  topAnchor4 = [contentLayoutGuide topAnchor];
  v70 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v86[0] = v70;
  leadingAnchor3 = [(UIStackView *)self->_stackView leadingAnchor];
  contentLayoutGuide2 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  leadingAnchor4 = [contentLayoutGuide2 leadingAnchor];
  v63 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v86[1] = v63;
  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  contentLayoutGuide3 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  bottomAnchor2 = [contentLayoutGuide3 bottomAnchor];
  v57 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v86[2] = v57;
  trailingAnchor3 = [(UIStackView *)self->_stackView trailingAnchor];
  contentLayoutGuide4 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  trailingAnchor4 = [contentLayoutGuide4 trailingAnchor];
  v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v86[3] = v12;
  widthAnchor = [(UIStackView *)self->_stackView widthAnchor];
  frameLayoutGuide = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  widthAnchor2 = [frameLayoutGuide widthAnchor];
  v16 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v86[4] = v16;
  v17 = [NSArray arrayWithObjects:v86 count:5];
  [NSLayoutConstraint activateConstraints:v17];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setFont:v83];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_titleLabel];
  widthAnchor3 = [(UILabel *)self->_titleLabel widthAnchor];
  layoutMarginsGuide = [(UIStackView *)self->_stackView layoutMarginsGuide];
  widthAnchor4 = [layoutMarginsGuide widthAnchor];
  v21 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.7];
  [v21 setActive:1];

  detailLabel = self->_detailLabel;
  if (detailLabel)
  {
    [(UILabel *)detailLabel setTextAlignment:1];
    [(UILabel *)self->_detailLabel setFont:v82];
    [(UILabel *)self->_detailLabel setNumberOfLines:0];
    [(UILabel *)self->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_stackView addArrangedSubview:self->_detailLabel];
    widthAnchor5 = [(UILabel *)self->_detailLabel widthAnchor];
    layoutMarginsGuide2 = [(UIStackView *)self->_stackView layoutMarginsGuide];
    widthAnchor6 = [layoutMarginsGuide2 widthAnchor];
    v26 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:0.8];
    [v26 setActive:1];
  }

  [(SafariImportExportButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  view5 = [(SafariImportExportSheetController *)self view];
  [view5 addSubview:self->_button];

  bottomAnchor3 = [(SafariImportExportButton *)self->_button bottomAnchor];
  view6 = [(SafariImportExportSheetController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide4 bottomAnchor];
  v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  buttonBottomConstraint = self->_buttonBottomConstraint;
  self->_buttonBottomConstraint = v32;

  leadingAnchor5 = [(SafariImportExportButton *)self->_button leadingAnchor];
  view7 = [(SafariImportExportSheetController *)self view];
  safeAreaLayoutGuide5 = [view7 safeAreaLayoutGuide];
  leadingAnchor6 = [safeAreaLayoutGuide5 leadingAnchor];
  v38 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:30.0];

  trailingAnchor5 = [(SafariImportExportButton *)self->_button trailingAnchor];
  view8 = [(SafariImportExportSheetController *)self view];
  safeAreaLayoutGuide6 = [view8 safeAreaLayoutGuide];
  trailingAnchor6 = [safeAreaLayoutGuide6 trailingAnchor];
  v43 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-30.0];

  v79 = v38;
  LODWORD(v44) = 1144750080;
  [v38 setPriority:v44];
  v76 = v43;
  LODWORD(v45) = 1144750080;
  [v43 setPriority:v45];
  v85[0] = self->_buttonBottomConstraint;
  v85[1] = v38;
  v85[2] = v43;
  bottomAnchor5 = [(UIScrollView *)self->_scrollView bottomAnchor];
  topAnchor5 = [(SafariImportExportButton *)self->_button topAnchor];
  v46 = [bottomAnchor5 constraintEqualToAnchor:topAnchor5 constant:-30.0];
  v85[3] = v46;
  centerXAnchor = [(SafariImportExportButton *)self->_button centerXAnchor];
  view9 = [(SafariImportExportSheetController *)self view];
  layoutMarginsGuide3 = [view9 layoutMarginsGuide];
  centerXAnchor2 = [layoutMarginsGuide3 centerXAnchor];
  v51 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v85[4] = v51;
  widthAnchor7 = [(SafariImportExportButton *)self->_button widthAnchor];
  v53 = [widthAnchor7 constraintLessThanOrEqualToConstant:400.0];
  v85[5] = v53;
  v54 = [NSArray arrayWithObjects:v85 count:6];
  [NSLayoutConstraint activateConstraints:v54];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SafariImportExportSheetController;
  [(SafariImportExportSheetController *)&v13 viewDidLayoutSubviews];
  [(UIStackView *)self->_stackView frame];
  v4 = v3;
  [(UIStackView *)self->_stackView frame];
  [(UIScrollView *)self->_scrollView setContentSize:v5, v4];
  view = [(SafariImportExportSheetController *)self view];
  [view safeAreaInsets];
  if (v7 == 0.0)
  {
    v8 = -30.0;
  }

  else
  {
    v8 = 0.0;
  }

  [(NSLayoutConstraint *)self->_buttonBottomConstraint setConstant:v8];
  [(SafariImportExportButton *)self->_button bounds];
  v10 = v9 + 30.0 - v8;
  view2 = [(SafariImportExportSheetController *)self view];
  [view2 bounds];
  Width = CGRectGetWidth(v14);

  [(SafariImportExportSheetController *)self setPreferredContentSize:Width, v4 + v10];
}

@end