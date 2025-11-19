@interface NCNotificationSettingsMailBadgeHeader
- (NCNotificationSettingsMailBadgeHeader)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation NCNotificationSettingsMailBadgeHeader

- (NCNotificationSettingsMailBadgeHeader)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v36.receiver = self;
  v36.super_class = NCNotificationSettingsMailBadgeHeader;
  v5 = [(NCNotificationSettingsMailBadgeHeader *)&v36 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(NCNotificationSettingsMailBadgeHeader *)v5 contentView];
    [(NCNotificationSettingsMailBadgeHeader *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_alloc_init(UIStackView);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAxis:1];
    [v8 setSpacing:12.0];
    [v8 setLayoutMargins:{25.0, 25.0, 25.0, 25.0}];
    [v7 addSubview:v8];
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
    v33 = [v10 heightAnchor];
    v32 = [v33 constraintEqualToConstant:80.0];
    v37[0] = v32;
    v31 = [v8 topAnchor];
    v30 = [v7 topAnchor];
    v29 = [v31 constraintEqualToAnchor:v30 constant:25.0];
    v37[1] = v29;
    v27 = [v8 leadingAnchor];
    v26 = [v7 leadingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26 constant:20.0];
    v37[2] = v25;
    v28 = v7;
    v16 = [v7 trailingAnchor];
    v17 = [v8 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:20.0];
    v37[3] = v18;
    [v7 bottomAnchor];
    v20 = v19 = v6;
    v21 = [v8 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:25.0];
    v37[4] = v22;
    v23 = [NSArray arrayWithObjects:v37 count:5];
    [NSLayoutConstraint activateConstraints:v23];

    v6 = v19;
  }

  return v6;
}

@end