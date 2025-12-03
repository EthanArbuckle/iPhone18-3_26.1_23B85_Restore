@interface NCNotificationSettingsMailBadgeHeader
- (NCNotificationSettingsMailBadgeHeader)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation NCNotificationSettingsMailBadgeHeader

- (NCNotificationSettingsMailBadgeHeader)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v36.receiver = self;
  v36.super_class = NCNotificationSettingsMailBadgeHeader;
  v5 = [(NCNotificationSettingsMailBadgeHeader *)&v36 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    contentView = [(NCNotificationSettingsMailBadgeHeader *)v5 contentView];
    [(NCNotificationSettingsMailBadgeHeader *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_alloc_init(UIStackView);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAxis:1];
    [v8 setSpacing:12.0];
    [v8 setLayoutMargins:{25.0, 25.0, 25.0, 25.0}];
    [contentView addSubview:v8];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v35 = [UIImage imageNamed:@"mailBadgeHeader" inBundle:v9];

    v10 = [[UIImageView alloc] initWithImage:v35];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setContentMode:1];
    v34 = v10;
    [v8 addArrangedSubview:v10];
    v11 = objc_alloc_init(UILabel);
    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v11 setFont:v12];

    v13 = +[UIColor secondaryLabelColor];
    [v11 setTextColor:v13];

    v14 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v15 = [v14 localizedStringForKey:@"BADGES_GROUP_HEADER" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [v11 setText:v15];

    [v11 setTextAlignment:1];
    [v11 setNumberOfLines:10];
    [v8 addArrangedSubview:v11];
    heightAnchor = [v10 heightAnchor];
    v32 = [heightAnchor constraintEqualToConstant:80.0];
    v37[0] = v32;
    topAnchor = [v8 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:25.0];
    v37[1] = v29;
    leadingAnchor = [v8 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v37[2] = v25;
    v28 = contentView;
    trailingAnchor = [contentView trailingAnchor];
    trailingAnchor2 = [v8 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:20.0];
    v37[3] = v18;
    [contentView bottomAnchor];
    v20 = v19 = v6;
    bottomAnchor = [v8 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:bottomAnchor constant:25.0];
    v37[4] = v22;
    v23 = [NSArray arrayWithObjects:v37 count:5];
    [NSLayoutConstraint activateConstraints:v23];

    v6 = v19;
  }

  return v6;
}

@end