@interface SafariExportDataTypeToggle
- (SafariExportDataTypeToggle)initWithBrowsingDataExportType:(unint64_t)a3;
- (id)_deselectedIcon;
- (id)_selectedIcon;
- (unint64_t)accessibilityTraits;
- (void)_toggleSelectedState;
- (void)_updateStyle;
- (void)layoutLabelsVertically;
- (void)setCount:(id)a3;
- (void)showSpinner;
@end

@implementation SafariExportDataTypeToggle

- (id)_selectedIcon
{
  v3 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
  v4 = [(SafariExportDataTypeToggle *)self selectIconImageSymbolConfiguration];
  v5 = [v3 imageWithSymbolConfiguration:v4];

  return v5;
}

- (id)_deselectedIcon
{
  v3 = [UIImage systemImageNamed:@"circle"];
  v4 = [(SafariExportDataTypeToggle *)self selectIconImageSymbolConfiguration];
  v5 = [v3 imageWithSymbolConfiguration:v4];

  return v5;
}

- (SafariExportDataTypeToggle)initWithBrowsingDataExportType:(unint64_t)a3
{
  v38.receiver = self;
  v38.super_class = SafariExportDataTypeToggle;
  v4 = [(SafariExportDataTypeToggle *)&v38 init];
  v5 = v4;
  if (v4)
  {
    v4->_firstDisplay = 1;
    v37 = +[UIColor systemGray5Color];
    v35 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    v36 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [(SafariExportDataTypeToggle *)v5 setSelected:1];
    v5->_browsingDataExportType = a3;
    v6 = [(SafariExportDataTypeToggle *)v5 layer];
    [v6 setCornerRadius:8.0];

    [(SafariExportDataTypeToggle *)v5 setBackgroundColor:v37];
    [(SafariExportDataTypeToggle *)v5 addTarget:v5 action:"_toggleSelectedState" forControlEvents:64];
    v7 = objc_alloc_init(UIStackView);
    [v7 setUserInteractionEnabled:0];
    [v7 setAxis:0];
    [v7 setAlignment:3];
    [v7 setDistribution:0];
    [v7 setLayoutMarginsRelativeArrangement:1];
    [v7 setLayoutMargins:{15.0, 15.0, 15.0, 15.0}];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SafariExportDataTypeToggle *)v5 addSubview:v7];
    v8 = [NSLayoutConstraint safari_constraintsMatchingFrameOfView:v7 withFrameOfView:v5];
    [NSLayoutConstraint activateConstraints:v8];

    v9 = objc_alloc_init(UIStackView);
    iconStackView = v5->_iconStackView;
    v5->_iconStackView = v9;

    [(UIStackView *)v5->_iconStackView setSpacing:10.0];
    [(UIStackView *)v5->_iconStackView setAxis:0];
    [(UIStackView *)v5->_iconStackView setAlignment:3];
    [(UIStackView *)v5->_iconStackView setDistribution:0];
    [(UIStackView *)v5->_iconStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 addArrangedSubview:v5->_iconStackView];
    v11 = objc_alloc_init(UIImageView);
    checkboxIconImageView = v5->_checkboxIconImageView;
    v5->_checkboxIconImageView = v11;

    v13 = [UIImageView alloc];
    v14 = [WBSBrowsingDataExportController iconForBrowsingDataExportType:v5->_browsingDataExportType];
    v15 = [UIImage systemImageNamed:v14];
    v16 = [(SafariExportDataTypeToggle *)v5 dataTypeIconImageSymbolConfiguration];
    v17 = [v15 imageWithSymbolConfiguration:v16];
    v18 = [v13 initWithImage:v17 highlightedImage:0];
    dataTypeIconImageView = v5->_dataTypeIconImageView;
    v5->_dataTypeIconImageView = v18;

    [(UIStackView *)v5->_iconStackView addArrangedSubview:v5->_checkboxIconImageView];
    [(UIStackView *)v5->_iconStackView addArrangedSubview:v5->_dataTypeIconImageView];
    v20 = v5->_iconStackView;
    v21 = objc_alloc_init(UIView);
    [(UIStackView *)v20 addArrangedSubview:v21];

    v22 = objc_alloc_init(UIStackView);
    labelStackView = v5->_labelStackView;
    v5->_labelStackView = v22;

    [(UIStackView *)v5->_labelStackView setAxis:0];
    [(UIStackView *)v5->_labelStackView setAlignment:3];
    [(UIStackView *)v5->_labelStackView setDistribution:0];
    [v7 addArrangedSubview:v5->_labelStackView];
    v24 = objc_alloc_init(UILabel);
    toggleTitleLabel = v5->_toggleTitleLabel;
    v5->_toggleTitleLabel = v24;

    v26 = [WBSBrowsingDataExportController titleForBrowsingDataExportType:v5->_browsingDataExportType];
    [(UILabel *)v5->_toggleTitleLabel setText:v26];

    [(UILabel *)v5->_toggleTitleLabel setFont:v35];
    [(UIStackView *)v5->_labelStackView addArrangedSubview:v5->_toggleTitleLabel];
    v27 = objc_alloc_init(UIView);
    labelHorizontalStackViewSpacer = v5->_labelHorizontalStackViewSpacer;
    v5->_labelHorizontalStackViewSpacer = v27;

    [(UIStackView *)v5->_labelStackView addArrangedSubview:v5->_labelHorizontalStackViewSpacer];
    v29 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v29;

    [(UIActivityIndicatorView *)v5->_spinner startAnimating];
    [(UIStackView *)v5->_labelStackView addArrangedSubview:v5->_spinner];
    v31 = objc_alloc_init(UILabel);
    exportCountLabel = v5->_exportCountLabel;
    v5->_exportCountLabel = v31;

    [(UILabel *)v5->_exportCountLabel setFont:v36];
    [(UILabel *)v5->_exportCountLabel setHidden:1];
    [(UIStackView *)v5->_labelStackView addArrangedSubview:v5->_exportCountLabel];
    [(SafariExportDataTypeToggle *)v5 _updateStyle];
    v33 = v5;
  }

  return v5;
}

- (void)setCount:(id)a3
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __39__SafariExportDataTypeToggle_setCount___block_invoke;
  v10 = &unk_896A0;
  v11 = self;
  v4 = a3;
  v12 = v4;
  v5 = objc_retainBlock(&v7);
  if (self->_firstDisplay || [(UIActivityIndicatorView *)self->_spinner isHidden:v7])
  {
    (v5[2])(v5);
  }

  else
  {
    v6 = dispatch_time(0, (secondsToWaitBeforeHidingOrShowingExportCountSpinner * 1000000000.0));
    dispatch_after(v6, &_dispatch_main_q, v5);
  }
}

id __39__SafariExportDataTypeToggle_setCount___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0;
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  [*(*(a1 + 32) + 24) stopAnimating];
  v2 = +[WBSBrowsingDataExportController labelForBrowsingDataExportType:withCount:](WBSBrowsingDataExportController, "labelForBrowsingDataExportType:withCount:", *(*(a1 + 32) + 64), [*(*(a1 + 32) + 72) unsignedIntegerValue]);
  [*(*(a1 + 32) + 40) setText:v2];

  [*(*(a1 + 32) + 40) setHidden:*(a1 + 40) == 0];
  v3 = [*(a1 + 40) unsignedIntegerValue];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 setEnabled:1];
  }

  else
  {
    [v4 setEnabled:0];
    [*(a1 + 32) setSelected:0];
  }

  v5 = *(a1 + 32);

  return [v5 _updateStyle];
}

- (void)layoutLabelsVertically
{
  [(UIStackView *)self->_labelStackView setAxis:1];
  [(UIStackView *)self->_labelStackView setAlignment:0];
  labelHorizontalStackViewSpacer = self->_labelHorizontalStackViewSpacer;

  [(UIView *)labelHorizontalStackViewSpacer removeFromSuperview];
}

- (void)showSpinner
{
  [(SafariExportDataTypeToggle *)self setEnabled:1];
  [(UILabel *)self->_exportCountLabel setHidden:1];
  [(UIActivityIndicatorView *)self->_spinner setHidden:0];
  spinner = self->_spinner;

  [(UIActivityIndicatorView *)spinner startAnimating];
}

- (void)_toggleSelectedState
{
  [(SafariExportDataTypeToggle *)self setSelected:[(SafariExportDataTypeToggle *)self isSelected]^ 1];

  [(SafariExportDataTypeToggle *)self _updateStyle];
}

- (void)_updateStyle
{
  checkboxIconImageView = self->_checkboxIconImageView;
  if (([(SafariExportDataTypeToggle *)self isSelected]& 1) != 0)
  {
    [(SafariExportDataTypeToggle *)self _selectedIcon];
  }

  else
  {
    [(SafariExportDataTypeToggle *)self _deselectedIcon];
  }
  v4 = ;
  [(UIImageView *)checkboxIconImageView setImage:v4];

  if ([(SafariExportDataTypeToggle *)self isEnabled])
  {
    if (([(SafariExportDataTypeToggle *)self isSelected]& 1) != 0)
    {
      [(UIImageView *)self->_checkboxIconImageView setTintColor:0];
      goto LABEL_10;
    }

    v5 = +[UIColor secondaryLabelColor];
  }

  else
  {
    v5 = [(SafariExportDataTypeToggle *)self _disabledIconColor];
  }

  v6 = v5;
  [(UIImageView *)self->_checkboxIconImageView setTintColor:v5];

LABEL_10:
  if ([(SafariExportDataTypeToggle *)self isEnabled])
  {
    [(UIImageView *)self->_dataTypeIconImageView setTintColor:0];
  }

  else
  {
    v7 = [(SafariExportDataTypeToggle *)self _disabledIconColor];
    [(UIImageView *)self->_dataTypeIconImageView setTintColor:v7];
  }

  if ([(SafariExportDataTypeToggle *)self isEnabled])
  {
    [(UILabel *)self->_toggleTitleLabel setTextColor:0];
  }

  else
  {
    v8 = +[UIColor systemGrayColor];
    [(UILabel *)self->_toggleTitleLabel setTextColor:v8];
  }

  if (([(SafariExportDataTypeToggle *)self isEnabled]& 1) != 0)
  {
    [(SafariExportDataTypeToggle *)self _enabledCountLabelColor];
  }

  else
  {
    [(SafariExportDataTypeToggle *)self _disabledCountLabelColor];
  }
  v9 = ;
  [(UILabel *)self->_exportCountLabel setTextColor:v9];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SafariExportDataTypeToggle;
  return UIAccessibilityTraitToggleButton | [(SafariExportDataTypeToggle *)&v3 accessibilityTraits];
}

@end