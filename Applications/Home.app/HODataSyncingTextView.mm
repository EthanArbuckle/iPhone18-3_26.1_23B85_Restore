@interface HODataSyncingTextView
- (HODataSyncingTextView)init;
- (id)_createConstraintsForFirstItem:(id)item secondItem:(id)secondItem;
- (id)boldFontForStyle:(id)style;
- (void)_configureForSpinnerLayout;
- (void)_configureForTwoLabelLayout;
- (void)setDataSyncState:(unint64_t)state;
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

- (void)setDataSyncState:(unint64_t)state
{
  if (state > 2)
  {
    if (state - 4 >= 2)
    {
      if (state == 6 || state == 3)
      {
        v7 = sub_10003DB38(@"HODataSyncingTitleiCloud");
        titleLabel = [(HODataSyncingTextView *)self titleLabel];
        [titleLabel setText:v7];

        v6 = @"HODataSyncingDescriptionEnableiCloud";
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      return;
    }

    if (state == 2)
    {
      v4 = sub_10003DB38(@"HODataSyncingTitleKeychain");
      titleLabel2 = [(HODataSyncingTextView *)self titleLabel];
      [titleLabel2 setText:v4];

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
      descriptionLabel = [(HODataSyncingTextView *)self descriptionLabel];
      [descriptionLabel setText:v9];

      spinner = [(HODataSyncingTextView *)self spinner];
      [spinner stopAnimating];

      [(HODataSyncingTextView *)self _configureForTwoLabelLayout];
      return;
    }

LABEL_18:
    state = [NSString stringWithFormat:@"Unhandled dataSyncState %lu", state];
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100081134(state, v16);
    }

    NSLog(@"%@", state);
    return;
  }

  v12 = sub_10003DB38(@"HODataSyncingTitleGeneric");
  titleLabel3 = [(HODataSyncingTextView *)self titleLabel];
  [titleLabel3 setText:v12];

  spinner2 = [(HODataSyncingTextView *)self spinner];
  [spinner2 startAnimating];

  [(HODataSyncingTextView *)self _configureForSpinnerLayout];
}

- (void)_configureForTwoLabelLayout
{
  buttonLayoutConstraints = [(HODataSyncingTextView *)self buttonLayoutConstraints];

  if (!buttonLayoutConstraints)
  {
    titleLabel = [(HODataSyncingTextView *)self titleLabel];
    descriptionLabel = [(HODataSyncingTextView *)self descriptionLabel];
    v6 = [(HODataSyncingTextView *)self _createConstraintsForFirstItem:titleLabel secondItem:descriptionLabel];
    [(HODataSyncingTextView *)self setButtonLayoutConstraints:v6];
  }

  spinner = [(HODataSyncingTextView *)self spinner];
  [spinner setHidden:1];

  descriptionLabel2 = [(HODataSyncingTextView *)self descriptionLabel];
  [descriptionLabel2 setHidden:0];

  activeConstraints = [(HODataSyncingTextView *)self activeConstraints];
  buttonLayoutConstraints2 = [(HODataSyncingTextView *)self buttonLayoutConstraints];

  if (activeConstraints != buttonLayoutConstraints2)
  {
    activeConstraints2 = [(HODataSyncingTextView *)self activeConstraints];
    [NSLayoutConstraint deactivateConstraints:activeConstraints2];

    buttonLayoutConstraints3 = [(HODataSyncingTextView *)self buttonLayoutConstraints];
    [(HODataSyncingTextView *)self setActiveConstraints:buttonLayoutConstraints3];

    activeConstraints3 = [(HODataSyncingTextView *)self activeConstraints];
    [NSLayoutConstraint activateConstraints:activeConstraints3];
  }
}

- (void)_configureForSpinnerLayout
{
  spinnerLayoutConstraints = [(HODataSyncingTextView *)self spinnerLayoutConstraints];

  if (!spinnerLayoutConstraints)
  {
    spinner = [(HODataSyncingTextView *)self spinner];
    titleLabel = [(HODataSyncingTextView *)self titleLabel];
    v6 = [(HODataSyncingTextView *)self _createConstraintsForFirstItem:spinner secondItem:titleLabel];
    [(HODataSyncingTextView *)self setSpinnerLayoutConstraints:v6];
  }

  spinner2 = [(HODataSyncingTextView *)self spinner];
  [spinner2 setHidden:0];

  descriptionLabel = [(HODataSyncingTextView *)self descriptionLabel];
  [descriptionLabel setHidden:1];

  activeConstraints = [(HODataSyncingTextView *)self activeConstraints];
  spinnerLayoutConstraints2 = [(HODataSyncingTextView *)self spinnerLayoutConstraints];

  if (activeConstraints != spinnerLayoutConstraints2)
  {
    activeConstraints2 = [(HODataSyncingTextView *)self activeConstraints];
    [NSLayoutConstraint deactivateConstraints:activeConstraints2];

    spinnerLayoutConstraints3 = [(HODataSyncingTextView *)self spinnerLayoutConstraints];
    [(HODataSyncingTextView *)self setActiveConstraints:spinnerLayoutConstraints3];

    activeConstraints3 = [(HODataSyncingTextView *)self activeConstraints];
    [NSLayoutConstraint activateConstraints:activeConstraints3];
  }
}

- (id)_createConstraintsForFirstItem:(id)item secondItem:(id)secondItem
{
  secondItemCopy = secondItem;
  itemCopy = item;
  v8 = objc_opt_new();
  topAnchor = [itemCopy topAnchor];
  topAnchor2 = [(HODataSyncingTextView *)self topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v8 addObject:v11];

  centerXAnchor = [itemCopy centerXAnchor];
  centerXAnchor2 = [(HODataSyncingTextView *)self centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v8 addObject:v14];

  leadingAnchor = [itemCopy leadingAnchor];
  leadingAnchor2 = [(HODataSyncingTextView *)self leadingAnchor];
  v17 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  [v8 addObject:v17];

  trailingAnchor = [itemCopy trailingAnchor];
  trailingAnchor2 = [(HODataSyncingTextView *)self trailingAnchor];
  v20 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [v8 addObject:v20];

  bottomAnchor = [itemCopy bottomAnchor];

  topAnchor3 = [secondItemCopy topAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-10.0];
  [v8 addObject:v23];

  centerXAnchor3 = [secondItemCopy centerXAnchor];
  centerXAnchor4 = [(HODataSyncingTextView *)self centerXAnchor];
  v26 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v8 addObject:v26];

  leadingAnchor3 = [secondItemCopy leadingAnchor];
  leadingAnchor4 = [(HODataSyncingTextView *)self leadingAnchor];
  v29 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v8 addObject:v29];

  trailingAnchor3 = [secondItemCopy trailingAnchor];
  trailingAnchor4 = [(HODataSyncingTextView *)self trailingAnchor];
  v32 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v8 addObject:v32];

  bottomAnchor2 = [secondItemCopy bottomAnchor];

  bottomAnchor3 = [(HODataSyncingTextView *)self bottomAnchor];
  v35 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v8 addObject:v35];

  return v8;
}

- (id)boldFontForStyle:(id)style
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:2 options:0];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];

  return v4;
}

@end