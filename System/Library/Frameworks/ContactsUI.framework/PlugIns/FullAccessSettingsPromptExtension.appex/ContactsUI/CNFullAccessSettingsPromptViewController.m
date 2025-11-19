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
  v3 = [(CNFullAccessSettingsPromptViewController *)self extensionContext];
  v4 = [v3 inputItems];
  v5 = [v4 firstObject];

  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v118 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "InputItem: %@", buf, 0xCu);
  }

  v7 = [v5 userInfo];
  v103 = [v7 valueForKey:kTCCNotificationExtensionClientDataKey];

  v104 = v5;
  v8 = [v5 userInfo];
  v9 = [v8 valueForKey:@"ClientBundleIdentifier"];

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
  v13 = [v10 localizedName];
  [(CNFullAccessSettingsPromptViewController *)self setPreferredContentSize:270.0, 800.0];
  v14 = objc_alloc_init(UILabel);
  privacyDescriptionLabel = self->_privacyDescriptionLabel;
  self->_privacyDescriptionLabel = v14;

  [(UILabel *)self->_privacyDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v100 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:0];
  v16 = [UIFont fontWithDescriptor:0.0 size:?];
  [(UILabel *)self->_privacyDescriptionLabel setFont:v16];

  v17 = +[CNEnvironment currentEnvironment];
  v18 = [v17 featureFlags];
  if ([v18 isFeatureEnabled:29])
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
  v106 = v13;
  v22 = [NSString localizedStringWithFormat:v21, v13];
  [(UILabel *)self->_privacyDescriptionLabel setText:v22];

  [(UILabel *)self->_privacyDescriptionLabel setLineBreakStrategy:1];
  [(UILabel *)self->_privacyDescriptionLabel setNumberOfLines:0];
  [(UILabel *)self->_privacyDescriptionLabel setAllowsDefaultTighteningForTruncation:1];
  v23 = [(CNFullAccessSettingsPromptViewController *)self view];
  [v23 addSubview:self->_privacyDescriptionLabel];

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
    v39 = [v38 featureFlags];
    if ([v39 isFeatureEnabled:29])
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
    v44 = [(CNFullAccessSettingsPromptViewController *)self view];
    [v44 addSubview:self->_countsLabel];

    [(CNFullAccessSettingsPromptViewController *)self addChildViewController:v105];
    v45 = [v105 view];
    avatarView = self->_avatarView;
    self->_avatarView = v45;

    v47 = [(CNFullAccessSettingsPromptViewController *)self view];
    [v47 addSubview:self->_avatarView];

    [v105 didMoveToParentViewController:self];
    [(UIView *)self->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_avatarView setClipsToBounds:0];
    v82 = [(UIView *)self->_avatarView topAnchor];
    v99 = [(CNFullAccessSettingsPromptViewController *)self view];
    v98 = [v99 topAnchor];
    v97 = [v82 constraintEqualToAnchor:-5.0 constant:?];
    v112[0] = v97;
    v48 = [(UIView *)self->_avatarView leadingAnchor];
    v95 = [(CNFullAccessSettingsPromptViewController *)self view];
    [v95 leadingAnchor];
    v94 = v96 = v48;
    v93 = [v48 constraintEqualToAnchor:?];
    v112[1] = v93;
    v49 = [(UIView *)self->_avatarView trailingAnchor];
    v91 = [(CNFullAccessSettingsPromptViewController *)self view];
    [v91 trailingAnchor];
    v90 = v92 = v49;
    v77 = [v49 constraintEqualToAnchor:?];
    v112[2] = v77;
    v74 = [(UIView *)self->_avatarView bottomAnchor];
    v89 = [(UILabel *)self->_countsLabel topAnchor];
    v88 = [v74 constraintEqualToAnchor:-8.0 constant:?];
    v112[3] = v88;
    v50 = [(UILabel *)self->_countsLabel bottomAnchor];
    v81 = [(UILabel *)self->_privacyDescriptionLabel topAnchor];
    v87 = v50;
    v80 = [v50 constraintEqualToAnchor:v81 constant:-8.0];
    v112[4] = v80;
    v78 = [(UILabel *)self->_countsLabel leadingAnchor];
    v79 = [(CNFullAccessSettingsPromptViewController *)self view];
    v76 = [v79 leadingAnchor];
    v75 = [v78 constraintEqualToAnchor:v76 constant:16.0];
    v112[5] = v75;
    v72 = [(UILabel *)self->_countsLabel trailingAnchor];
    v73 = [(CNFullAccessSettingsPromptViewController *)self view];
    v71 = [v73 trailingAnchor];
    v70 = [v72 constraintEqualToAnchor:v71 constant:-16.0];
    v112[6] = v70;
    v68 = [(UILabel *)self->_privacyDescriptionLabel bottomAnchor];
    v69 = [(CNFullAccessSettingsPromptViewController *)self view];
    v67 = [v69 bottomAnchor];
    v51 = [v68 constraintEqualToAnchor:v67 constant:-12.0];
    v112[7] = v51;
    [(UILabel *)self->_privacyDescriptionLabel leadingAnchor];
    v52 = v85 = v26;
    v53 = [(CNFullAccessSettingsPromptViewController *)self view];
    v54 = [v53 leadingAnchor];
    v55 = [v52 constraintEqualToAnchor:v54 constant:16.0];
    v112[8] = v55;
    v56 = [(UILabel *)self->_privacyDescriptionLabel trailingAnchor];
    v57 = [(CNFullAccessSettingsPromptViewController *)self view];
    v58 = [v57 trailingAnchor];
    v59 = [v56 constraintEqualToAnchor:v58 constant:-16.0];
    v112[9] = v59;
    v60 = [NSArray arrayWithObjects:v112 count:10];
    [NSLayoutConstraint activateConstraints:v60];

    v61 = v82;
    v24 = v86;

    v62 = v77;
    v63 = v74;

    v30 = v83;
    v64 = v84;

    v29 = v105;
    v26 = v85;
  }

  else
  {
    v64 = [(UILabel *)self->_privacyDescriptionLabel topAnchor];
    v61 = [(CNFullAccessSettingsPromptViewController *)self view];
    v99 = [v61 topAnchor];
    v98 = [v64 constraintEqualToAnchor:-5.0 constant:?];
    v111[0] = v98;
    v65 = [(UILabel *)self->_privacyDescriptionLabel bottomAnchor];
    v96 = [(CNFullAccessSettingsPromptViewController *)self view];
    [v96 bottomAnchor];
    v95 = v97 = v65;
    v94 = [v65 constraintEqualToAnchor:-12.0 constant:?];
    v111[1] = v94;
    v66 = [(UILabel *)self->_privacyDescriptionLabel leadingAnchor];
    v92 = [(CNFullAccessSettingsPromptViewController *)self view];
    [v92 leadingAnchor];
    v91 = v93 = v66;
    v90 = [v66 constraintEqualToAnchor:16.0 constant:?];
    v111[2] = v90;
    v62 = [(UILabel *)self->_privacyDescriptionLabel trailingAnchor];
    v63 = [(CNFullAccessSettingsPromptViewController *)self view];
    v89 = [v63 trailingAnchor];
    v88 = [v62 constraintEqualToAnchor:-16.0 constant:?];
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