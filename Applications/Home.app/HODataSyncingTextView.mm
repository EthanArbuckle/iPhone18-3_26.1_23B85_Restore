@interface HODataSyncingTextView
- (HODataSyncingTextView)init;
- (id)_createConstraintsForFirstItem:(id)a3 secondItem:(id)a4;
- (id)boldFontForStyle:(id)a3;
- (void)_configureForSpinnerLayout;
- (void)_configureForTwoLabelLayout;
- (void)setDataSyncState:(unint64_t)a3;
@end

@implementation HODataSyncingTextView

- (HODataSyncingTextView)init
{
  v13.receiver = self;
  v13.super_class = HODataSyncingTextView;
  v2 = [(HODataSyncingTextView *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(UILabel);
    titleLabel = v2->_titleLabel;
    v2->_titleLabel = v3;

    v5 = [(HODataSyncingTextView *)v2 boldFontForStyle:UIFontTextStyleTitle1];
    [(UILabel *)v2->_titleLabel setFont:v5];

    [(UILabel *)v2->_titleLabel setNumberOfLines:0];
    [(UILabel *)v2->_titleLabel setTextAlignment:1];
    v6 = objc_alloc_init(UILabel);
    descriptionLabel = v2->_descriptionLabel;
    v2->_descriptionLabel = v6;

    v8 = [(HODataSyncingTextView *)v2 boldFontForStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v2->_descriptionLabel setFont:v8];

    [(UILabel *)v2->_descriptionLabel setNumberOfLines:0];
    [(UILabel *)v2->_descriptionLabel setTextAlignment:1];
    v9 = +[UIColor secondaryLabelColor];
    [(UILabel *)v2->_descriptionLabel setTextColor:v9];

    v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v2->_spinner;
    v2->_spinner = v10;

    [(UIActivityIndicatorView *)v2->_spinner setHidesWhenStopped:1];
    [(HODataSyncingTextView *)v2 addSubview:v2->_titleLabel];
    [(HODataSyncingTextView *)v2 addSubview:v2->_descriptionLabel];
    [(HODataSyncingTextView *)v2 addSubview:v2->_spinner];
    [(UILabel *)v2->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v2->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v2->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v2;
}

- (void)setDataSyncState:(unint64_t)a3
{
  if (a3 > 2)
  {
    if (a3 - 4 >= 2)
    {
      if (a3 == 6 || a3 == 3)
      {
        v7 = sub_10003DB38(@"HODataSyncingTitleiCloud");
        v8 = [(HODataSyncingTextView *)self titleLabel];
        [v8 setText:v7];

        v6 = @"HODataSyncingDescriptionEnableiCloud";
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return;
    }

    if (a3 == 2)
    {
      v4 = sub_10003DB38(@"HODataSyncingTitleKeychain");
      v5 = [(HODataSyncingTextView *)self titleLabel];
      [v5 setText:v4];

      if (+[HFUtilities isAMac])
      {
        v6 = @"HODataSyncingDescriptionEnableKeychain_iosMac";
      }

      else
      {
        v6 = @"HODataSyncingDescriptionEnableKeychain";
      }

LABEL_12:
      v9 = sub_10003DB38(v6);
      v10 = [(HODataSyncingTextView *)self descriptionLabel];
      [v10 setText:v9];

      v11 = [(HODataSyncingTextView *)self spinner];
      [v11 stopAnimating];

      [(HODataSyncingTextView *)self _configureForTwoLabelLayout];
      return;
    }

LABEL_18:
    v15 = [NSString stringWithFormat:@"Unhandled dataSyncState %lu", a3];
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100081134(v15, v16);
    }

    NSLog(@"%@", v15);
    return;
  }

  v12 = sub_10003DB38(@"HODataSyncingTitleGeneric");
  v13 = [(HODataSyncingTextView *)self titleLabel];
  [v13 setText:v12];

  v14 = [(HODataSyncingTextView *)self spinner];
  [v14 startAnimating];

  [(HODataSyncingTextView *)self _configureForSpinnerLayout];
}

- (void)_configureForTwoLabelLayout
{
  v3 = [(HODataSyncingTextView *)self buttonLayoutConstraints];

  if (!v3)
  {
    v4 = [(HODataSyncingTextView *)self titleLabel];
    v5 = [(HODataSyncingTextView *)self descriptionLabel];
    v6 = [(HODataSyncingTextView *)self _createConstraintsForFirstItem:v4 secondItem:v5];
    [(HODataSyncingTextView *)self setButtonLayoutConstraints:v6];
  }

  v7 = [(HODataSyncingTextView *)self spinner];
  [v7 setHidden:1];

  v8 = [(HODataSyncingTextView *)self descriptionLabel];
  [v8 setHidden:0];

  v9 = [(HODataSyncingTextView *)self activeConstraints];
  v10 = [(HODataSyncingTextView *)self buttonLayoutConstraints];

  if (v9 != v10)
  {
    v11 = [(HODataSyncingTextView *)self activeConstraints];
    [NSLayoutConstraint deactivateConstraints:v11];

    v12 = [(HODataSyncingTextView *)self buttonLayoutConstraints];
    [(HODataSyncingTextView *)self setActiveConstraints:v12];

    v13 = [(HODataSyncingTextView *)self activeConstraints];
    [NSLayoutConstraint activateConstraints:v13];
  }
}

- (void)_configureForSpinnerLayout
{
  v3 = [(HODataSyncingTextView *)self spinnerLayoutConstraints];

  if (!v3)
  {
    v4 = [(HODataSyncingTextView *)self spinner];
    v5 = [(HODataSyncingTextView *)self titleLabel];
    v6 = [(HODataSyncingTextView *)self _createConstraintsForFirstItem:v4 secondItem:v5];
    [(HODataSyncingTextView *)self setSpinnerLayoutConstraints:v6];
  }

  v7 = [(HODataSyncingTextView *)self spinner];
  [v7 setHidden:0];

  v8 = [(HODataSyncingTextView *)self descriptionLabel];
  [v8 setHidden:1];

  v9 = [(HODataSyncingTextView *)self activeConstraints];
  v10 = [(HODataSyncingTextView *)self spinnerLayoutConstraints];

  if (v9 != v10)
  {
    v11 = [(HODataSyncingTextView *)self activeConstraints];
    [NSLayoutConstraint deactivateConstraints:v11];

    v12 = [(HODataSyncingTextView *)self spinnerLayoutConstraints];
    [(HODataSyncingTextView *)self setActiveConstraints:v12];

    v13 = [(HODataSyncingTextView *)self activeConstraints];
    [NSLayoutConstraint activateConstraints:v13];
  }
}

- (id)_createConstraintsForFirstItem:(id)a3 secondItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v7 topAnchor];
  v10 = [(HODataSyncingTextView *)self topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v8 addObject:v11];

  v12 = [v7 centerXAnchor];
  v13 = [(HODataSyncingTextView *)self centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v8 addObject:v14];

  v15 = [v7 leadingAnchor];
  v16 = [(HODataSyncingTextView *)self leadingAnchor];
  v17 = [v15 constraintGreaterThanOrEqualToAnchor:v16];
  [v8 addObject:v17];

  v18 = [v7 trailingAnchor];
  v19 = [(HODataSyncingTextView *)self trailingAnchor];
  v20 = [v18 constraintLessThanOrEqualToAnchor:v19];
  [v8 addObject:v20];

  v21 = [v7 bottomAnchor];

  v22 = [v6 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-10.0];
  [v8 addObject:v23];

  v24 = [v6 centerXAnchor];
  v25 = [(HODataSyncingTextView *)self centerXAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v8 addObject:v26];

  v27 = [v6 leadingAnchor];
  v28 = [(HODataSyncingTextView *)self leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v8 addObject:v29];

  v30 = [v6 trailingAnchor];
  v31 = [(HODataSyncingTextView *)self trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [v8 addObject:v32];

  v33 = [v6 bottomAnchor];

  v34 = [(HODataSyncingTextView *)self bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  [v8 addObject:v35];

  return v8;
}

- (id)boldFontForStyle:(id)a3
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:2 options:0];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];

  return v4;
}

@end