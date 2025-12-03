@interface CNFullAccessSettingsPromptViewController
+ (id)log;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CNFullAccessSettingsPromptViewController

+ (id)log
{
  if (qword_100008610 != -1)
  {
    sub_100001E18();
  }

  v3 = qword_100008618;

  return v3;
}

- (void)viewDidLoad
{
  v110.receiver = self;
  v110.super_class = CNFullAccessSettingsPromptViewController;
  [(CNFullAccessSettingsPromptViewController *)&v110 viewDidLoad];
  extensionContext = [(CNFullAccessSettingsPromptViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];
  firstObject = [inputItems firstObject];

  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v118 = firstObject;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "InputItem: %@", buf, 0xCu);
  }

  userInfo = [firstObject userInfo];
  v103 = [userInfo valueForKey:kTCCNotificationExtensionClientDataKey];

  v104 = firstObject;
  userInfo2 = [firstObject userInfo];
  v9 = [userInfo2 valueForKey:@"ClientBundleIdentifier"];

  v109 = 0;
  v107 = v9;
  v10 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v9 allowPlaceholder:1 error:&v109];
  v11 = v109;
  v12 = [objc_opt_class() log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v118 = v10;
    v119 = 2112;
    v120 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ApplicationRecord: %@ error: %@", buf, 0x16u);
  }

  v101 = v11;

  v102 = v10;
  localizedName = [v10 localizedName];
  [(CNFullAccessSettingsPromptViewController *)self setPreferredContentSize:270.0, 800.0];
  v14 = objc_alloc_init(UILabel);
  privacyDescriptionLabel = self->_privacyDescriptionLabel;
  self->_privacyDescriptionLabel = v14;

  [(UILabel *)self->_privacyDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v100 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:0];
  v16 = [UIFont fontWithDescriptor:0.0 size:?];
  [(UILabel *)self->_privacyDescriptionLabel setFont:v16];

  v17 = +[CNEnvironment currentEnvironment];
  featureFlags = [v17 featureFlags];
  if ([featureFlags isFeatureEnabled:29])
  {
    v19 = 4;
  }

  else
  {
    v19 = 1;
  }

  [(UILabel *)self->_privacyDescriptionLabel setTextAlignment:v19];

  v20 = [NSBundle bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"FULL_ACCESS_PROMPT_ALLOW_ACCESS_TO_ALL_CONTACTS_DESCRIPTION %@" value:&stru_1000041F8 table:@"Localizable"];
  v106 = localizedName;
  v22 = [NSString localizedStringWithFormat:v21, localizedName];
  [(UILabel *)self->_privacyDescriptionLabel setText:v22];

  [(UILabel *)self->_privacyDescriptionLabel setLineBreakStrategy:1];
  [(UILabel *)self->_privacyDescriptionLabel setNumberOfLines:0];
  [(UILabel *)self->_privacyDescriptionLabel setAllowsDefaultTighteningForTruncation:1];
  view = [(CNFullAccessSettingsPromptViewController *)self view];
  [view addSubview:self->_privacyDescriptionLabel];

  v24 = objc_alloc_init(CNContactStore);
  v108 = 0;
  v25 = [v24 unifiedContactCountWithError:&v108];
  v26 = v108;
  v27 = [objc_opt_class() log];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v118 = v25;
    v119 = 2112;
    v120 = v106;
    v121 = 2112;
    v122 = v107;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Total contacts: %@ Requesting full access for %@(%@)", buf, 0x20u);
  }

  if (!v25 && v26)
  {
    v28 = [objc_opt_class() log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v118 = v26;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Unable to get contacts count. Error: %@", buf, 0xCu);
    }
  }

  v29 = +[CNContactGroupVisualizer fullAccessPromptSettingsContactsController];
  v30 = v25;
  if ([v25 longLongValue] >= 1 && v29)
  {
    v31 = objc_alloc_init(UILabel);
    countsLabel = self->_countsLabel;
    self->_countsLabel = v31;

    [(UILabel *)self->_countsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_countsLabel setNumberOfLines:0];
    v33 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline addingSymbolicTraits:0x8000 options:0];
    v115 = UIFontDescriptorTraitsAttribute;
    v113 = UIFontWeightTrait;
    v34 = [NSNumber numberWithDouble:UIFontWeightSemibold];
    v114 = v34;
    v105 = v29;
    [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
    v35 = v86 = v24;
    v116 = v35;
    v36 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    v84 = [v33 fontDescriptorByAddingAttributes:v36];

    v37 = [UIFont fontWithDescriptor:v84 size:0.0];
    [(UILabel *)self->_countsLabel setFont:v37];

    v38 = +[CNEnvironment currentEnvironment];
    featureFlags2 = [v38 featureFlags];
    if ([featureFlags2 isFeatureEnabled:29])
    {
      v40 = 4;
    }

    else
    {
      v40 = 1;
    }

    [(UILabel *)self->_countsLabel setTextAlignment:v40];

    v41 = [NSBundle bundleForClass:objc_opt_class()];
    v42 = [v41 localizedStringForKey:@"FULL_ACCESS_PROMPT_CONTACTS_COUNT %lld" value:&stru_1000041F8 table:@"Localizable"];
    v83 = v30;
    v43 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v42, [v30 longLongValue]);
    [(UILabel *)self->_countsLabel setText:v43];

    [(UILabel *)self->_countsLabel setLineBreakStrategy:1];
    view2 = [(CNFullAccessSettingsPromptViewController *)self view];
    [view2 addSubview:self->_countsLabel];

    [(CNFullAccessSettingsPromptViewController *)self addChildViewController:v105];
    view3 = [v105 view];
    avatarView = self->_avatarView;
    self->_avatarView = view3;

    view4 = [(CNFullAccessSettingsPromptViewController *)self view];
    [view4 addSubview:self->_avatarView];

    [v105 didMoveToParentViewController:self];
    [(UIView *)self->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_avatarView setClipsToBounds:0];
    topAnchor = [(UIView *)self->_avatarView topAnchor];
    view5 = [(CNFullAccessSettingsPromptViewController *)self view];
    topAnchor2 = [view5 topAnchor];
    v97 = [topAnchor constraintEqualToAnchor:-5.0 constant:?];
    v112[0] = v97;
    leadingAnchor = [(UIView *)self->_avatarView leadingAnchor];
    view6 = [(CNFullAccessSettingsPromptViewController *)self view];
    [view6 leadingAnchor];
    v94 = view14 = leadingAnchor;
    v93 = [leadingAnchor constraintEqualToAnchor:?];
    v112[1] = v93;
    trailingAnchor = [(UIView *)self->_avatarView trailingAnchor];
    view7 = [(CNFullAccessSettingsPromptViewController *)self view];
    [view7 trailingAnchor];
    v90 = view15 = trailingAnchor;
    v77 = [trailingAnchor constraintEqualToAnchor:?];
    v112[2] = v77;
    bottomAnchor = [(UIView *)self->_avatarView bottomAnchor];
    topAnchor3 = [(UILabel *)self->_countsLabel topAnchor];
    v88 = [bottomAnchor constraintEqualToAnchor:-8.0 constant:?];
    v112[3] = v88;
    bottomAnchor2 = [(UILabel *)self->_countsLabel bottomAnchor];
    topAnchor4 = [(UILabel *)self->_privacyDescriptionLabel topAnchor];
    v87 = bottomAnchor2;
    v80 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4 constant:-8.0];
    v112[4] = v80;
    leadingAnchor2 = [(UILabel *)self->_countsLabel leadingAnchor];
    view8 = [(CNFullAccessSettingsPromptViewController *)self view];
    leadingAnchor3 = [view8 leadingAnchor];
    v75 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:16.0];
    v112[5] = v75;
    trailingAnchor2 = [(UILabel *)self->_countsLabel trailingAnchor];
    view9 = [(CNFullAccessSettingsPromptViewController *)self view];
    trailingAnchor3 = [view9 trailingAnchor];
    v70 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
    v112[6] = v70;
    bottomAnchor3 = [(UILabel *)self->_privacyDescriptionLabel bottomAnchor];
    view10 = [(CNFullAccessSettingsPromptViewController *)self view];
    bottomAnchor4 = [view10 bottomAnchor];
    v51 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-12.0];
    v112[7] = v51;
    [(UILabel *)self->_privacyDescriptionLabel leadingAnchor];
    v52 = v85 = v26;
    view11 = [(CNFullAccessSettingsPromptViewController *)self view];
    leadingAnchor4 = [view11 leadingAnchor];
    v55 = [v52 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v112[8] = v55;
    trailingAnchor4 = [(UILabel *)self->_privacyDescriptionLabel trailingAnchor];
    view12 = [(CNFullAccessSettingsPromptViewController *)self view];
    trailingAnchor5 = [view12 trailingAnchor];
    v59 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-16.0];
    v112[9] = v59;
    v60 = [NSArray arrayWithObjects:v112 count:10];
    [NSLayoutConstraint activateConstraints:v60];

    view13 = topAnchor;
    v24 = v86;

    trailingAnchor6 = v77;
    view16 = bottomAnchor;

    v30 = v83;
    topAnchor5 = v84;

    v29 = v105;
    v26 = v85;
  }

  else
  {
    topAnchor5 = [(UILabel *)self->_privacyDescriptionLabel topAnchor];
    view13 = [(CNFullAccessSettingsPromptViewController *)self view];
    view5 = [view13 topAnchor];
    topAnchor2 = [topAnchor5 constraintEqualToAnchor:-5.0 constant:?];
    v111[0] = topAnchor2;
    bottomAnchor5 = [(UILabel *)self->_privacyDescriptionLabel bottomAnchor];
    view14 = [(CNFullAccessSettingsPromptViewController *)self view];
    [view14 bottomAnchor];
    view6 = v97 = bottomAnchor5;
    v94 = [bottomAnchor5 constraintEqualToAnchor:-12.0 constant:?];
    v111[1] = v94;
    leadingAnchor5 = [(UILabel *)self->_privacyDescriptionLabel leadingAnchor];
    view15 = [(CNFullAccessSettingsPromptViewController *)self view];
    [view15 leadingAnchor];
    view7 = v93 = leadingAnchor5;
    v90 = [leadingAnchor5 constraintEqualToAnchor:16.0 constant:?];
    v111[2] = v90;
    trailingAnchor6 = [(UILabel *)self->_privacyDescriptionLabel trailingAnchor];
    view16 = [(CNFullAccessSettingsPromptViewController *)self view];
    topAnchor3 = [view16 trailingAnchor];
    v88 = [trailingAnchor6 constraintEqualToAnchor:-16.0 constant:?];
    v111[3] = v88;
    v87 = [NSArray arrayWithObjects:v111 count:4];
    [NSLayoutConstraint activateConstraints:?];
  }
}

- (void)viewDidLayoutSubviews
{
  [(UILabel *)self->_privacyDescriptionLabel intrinsicContentSize];
  v4 = v3;
  countsLabel = self->_countsLabel;
  if (countsLabel && self->_avatarView)
  {
    [(UILabel *)countsLabel intrinsicContentSize];
    v7 = v6;
    [(UIView *)self->_avatarView intrinsicContentSize];
    v4 = v4 + v7 + v8 + 8.0;
  }

  [(CNFullAccessSettingsPromptViewController *)self setPreferredContentSize:270.0, v4 + 12.0];
}

@end