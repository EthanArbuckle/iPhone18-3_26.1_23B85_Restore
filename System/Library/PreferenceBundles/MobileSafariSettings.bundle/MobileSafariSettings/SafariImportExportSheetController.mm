@interface SafariImportExportSheetController
- (SafariImportExportSheetController)initWithTitleText:(id)a3 detailText:(id)a4 buttonText:(id)a5 buttonAction:(id)a6;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SafariImportExportSheetController

- (SafariImportExportSheetController)initWithTitleText:(id)a3 detailText:(id)a4 buttonText:(id)a5 buttonAction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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

    [(UILabel *)v14->_titleLabel setText:v10];
    if (v11)
    {
      v21 = objc_alloc_init(UILabel);
      detailLabel = v14->_detailLabel;
      v14->_detailLabel = v21;

      [(UILabel *)v14->_detailLabel setText:v11];
    }

    v23 = [[SafariImportExportButton alloc] initWithText:v12 primaryAction:v13];
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
  v3 = [(SafariImportExportSheetController *)self view];
  [v3 addSubview:self->_scrollView];

  v77 = [(UIScrollView *)self->_scrollView topAnchor];
  v80 = [(SafariImportExportSheetController *)self view];
  v74 = [v80 safeAreaLayoutGuide];
  v71 = [v74 topAnchor];
  v69 = [v77 constraintEqualToAnchor:v71];
  v87[0] = v69;
  v64 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v67 = [(SafariImportExportSheetController *)self view];
  v62 = [v67 safeAreaLayoutGuide];
  v61 = [v62 leadingAnchor];
  v4 = [v64 constraintEqualToAnchor:v61];
  v87[1] = v4;
  v5 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v6 = [(SafariImportExportSheetController *)self view];
  v7 = [v6 safeAreaLayoutGuide];
  v8 = [v7 trailingAnchor];
  v9 = [v5 constraintEqualToAnchor:v8];
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
  v75 = [(UIStackView *)self->_stackView topAnchor];
  v78 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v72 = [v78 topAnchor];
  v70 = [v75 constraintEqualToAnchor:v72];
  v86[0] = v70;
  v66 = [(UIStackView *)self->_stackView leadingAnchor];
  v68 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v65 = [v68 leadingAnchor];
  v63 = [v66 constraintEqualToAnchor:v65];
  v86[1] = v63;
  v59 = [(UIStackView *)self->_stackView bottomAnchor];
  v60 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v58 = [v60 bottomAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v86[2] = v57;
  v55 = [(UIStackView *)self->_stackView trailingAnchor];
  v56 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v11 = [v56 trailingAnchor];
  v12 = [v55 constraintEqualToAnchor:v11];
  v86[3] = v12;
  v13 = [(UIStackView *)self->_stackView widthAnchor];
  v14 = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  v15 = [v14 widthAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v86[4] = v16;
  v17 = [NSArray arrayWithObjects:v86 count:5];
  [NSLayoutConstraint activateConstraints:v17];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setFont:v83];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_titleLabel];
  v18 = [(UILabel *)self->_titleLabel widthAnchor];
  v19 = [(UIStackView *)self->_stackView layoutMarginsGuide];
  v20 = [v19 widthAnchor];
  v21 = [v18 constraintEqualToAnchor:v20 multiplier:0.7];
  [v21 setActive:1];

  detailLabel = self->_detailLabel;
  if (detailLabel)
  {
    [(UILabel *)detailLabel setTextAlignment:1];
    [(UILabel *)self->_detailLabel setFont:v82];
    [(UILabel *)self->_detailLabel setNumberOfLines:0];
    [(UILabel *)self->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_stackView addArrangedSubview:self->_detailLabel];
    v23 = [(UILabel *)self->_detailLabel widthAnchor];
    v24 = [(UIStackView *)self->_stackView layoutMarginsGuide];
    v25 = [v24 widthAnchor];
    v26 = [v23 constraintEqualToAnchor:v25 multiplier:0.8];
    [v26 setActive:1];
  }

  [(SafariImportExportButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [(SafariImportExportSheetController *)self view];
  [v27 addSubview:self->_button];

  v28 = [(SafariImportExportButton *)self->_button bottomAnchor];
  v29 = [(SafariImportExportSheetController *)self view];
  v30 = [v29 safeAreaLayoutGuide];
  v31 = [v30 bottomAnchor];
  v32 = [v28 constraintEqualToAnchor:v31];
  buttonBottomConstraint = self->_buttonBottomConstraint;
  self->_buttonBottomConstraint = v32;

  v34 = [(SafariImportExportButton *)self->_button leadingAnchor];
  v35 = [(SafariImportExportSheetController *)self view];
  v36 = [v35 safeAreaLayoutGuide];
  v37 = [v36 leadingAnchor];
  v38 = [v34 constraintEqualToAnchor:v37 constant:30.0];

  v39 = [(SafariImportExportButton *)self->_button trailingAnchor];
  v40 = [(SafariImportExportSheetController *)self view];
  v41 = [v40 safeAreaLayoutGuide];
  v42 = [v41 trailingAnchor];
  v43 = [v39 constraintEqualToAnchor:v42 constant:-30.0];

  v79 = v38;
  LODWORD(v44) = 1144750080;
  [v38 setPriority:v44];
  v76 = v43;
  LODWORD(v45) = 1144750080;
  [v43 setPriority:v45];
  v85[0] = self->_buttonBottomConstraint;
  v85[1] = v38;
  v85[2] = v43;
  v81 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v73 = [(SafariImportExportButton *)self->_button topAnchor];
  v46 = [v81 constraintEqualToAnchor:v73 constant:-30.0];
  v85[3] = v46;
  v47 = [(SafariImportExportButton *)self->_button centerXAnchor];
  v48 = [(SafariImportExportSheetController *)self view];
  v49 = [v48 layoutMarginsGuide];
  v50 = [v49 centerXAnchor];
  v51 = [v47 constraintEqualToAnchor:v50];
  v85[4] = v51;
  v52 = [(SafariImportExportButton *)self->_button widthAnchor];
  v53 = [v52 constraintLessThanOrEqualToConstant:400.0];
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
  v6 = [(SafariImportExportSheetController *)self view];
  [v6 safeAreaInsets];
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
  v11 = [(SafariImportExportSheetController *)self view];
  [v11 bounds];
  Width = CGRectGetWidth(v14);

  [(SafariImportExportSheetController *)self setPreferredContentSize:Width, v4 + v10];
}

@end