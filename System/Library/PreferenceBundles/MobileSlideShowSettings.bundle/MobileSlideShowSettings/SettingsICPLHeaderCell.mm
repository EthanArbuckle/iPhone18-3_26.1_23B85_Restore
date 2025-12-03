@interface SettingsICPLHeaderCell
- (SettingsICPLHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation SettingsICPLHeaderCell

- (SettingsICPLHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v67.receiver = self;
  v67.super_class = SettingsICPLHeaderCell;
  v4 = [(SettingsICPLHeaderCell *)&v67 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(SettingsICPLHeaderCell *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(SettingsICPLHeaderCell *)v5 titleLabel];
    [titleLabel setHidden:1];

    detailTextLabel = [(SettingsICPLHeaderCell *)v5 detailTextLabel];
    [detailTextLabel setHidden:1];

    v8 = objc_alloc_init(UIStackView);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAxis:1];
    [v8 setAlignment:3];
    [v8 setSpacing:10.0];
    contentView = [(SettingsICPLHeaderCell *)v5 contentView];
    [contentView addSubview:v8];

    topAnchor = [v8 topAnchor];
    contentView2 = [(SettingsICPLHeaderCell *)v5 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v57 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:25.0];
    v68[0] = v57;
    leadingAnchor = [v8 leadingAnchor];
    contentView3 = [(SettingsICPLHeaderCell *)v5 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:25.0];
    v68[1] = v10;
    trailingAnchor = [v8 trailingAnchor];
    contentView4 = [(SettingsICPLHeaderCell *)v5 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-25.0];
    v68[2] = v14;
    v66 = v8;
    bottomAnchor = [v8 bottomAnchor];
    v65 = v5;
    contentView5 = [(SettingsICPLHeaderCell *)v5 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-15.0];
    v68[3] = v18;
    v19 = [NSArray arrayWithObjects:v68 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    v20 = [[ISIcon alloc] initWithBundleIdentifier:@"com.apple.mobileslideshow"];
    v62 = [[ISImageDescriptor alloc] initWithSize:60.0 scale:{60.0, 2.0}];
    v64 = v20;
    v21 = [v20 prepareImageForDescriptor:?];
    cGImage = [v21 CGImage];

    v60 = [[UIImage alloc] initWithCGImage:cGImage scale:0 orientation:2.0];
    v23 = [[UIImageView alloc] initWithImage:v60];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v23 setContentMode:4];
    if ((PXSolariumEnabled() & 1) == 0)
    {
      layer = [v23 layer];
      [layer setMasksToBounds:1];

      v25 = +[UIColor systemExtraLightGrayColor];
      cgColor = [v25 cgColor];
      layer2 = [v23 layer];
      [layer2 setBorderColor:cgColor];

      layer3 = [v23 layer];
      [layer3 setBorderWidth:1.0];

      layer4 = [v23 layer];
      [layer4 setCornerRadius:13.0];
    }

    [v66 addArrangedSubview:v23];
    v30 = objc_alloc_init(UILabel);
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = v65;
    v31 = [NSBundle bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"SETTINGS_ICLOUDPHOTOS_HEADER_TITLE" value:&stru_2D398 table:@"Photos"];
    [v30 setText:v32];

    v33 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    fontDescriptor = [v33 fontDescriptor];
    v58 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

    v35 = [UIFont fontWithDescriptor:v58 size:0.0];
    [v30 setFont:v35];

    v36 = +[UIColor labelColor];
    [v30 setTextColor:v36];

    [v30 setTextAlignment:1];
    [v30 setNumberOfLines:0];
    [v66 addArrangedSubview:v30];
    v37 = [NSBundle bundleForClass:objc_opt_class()];
    v54 = [v37 localizedStringForKey:@"SETTINGS_ICLOUDPHOTOS_HEADER_DESCRIPTION_LEARN_MORE" value:&stru_2D398 table:@"Photos"];

    v38 = [NSMutableAttributedString alloc];
    v56 = v23;
    v39 = [NSBundle bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:@"SETTINGS_ICLOUDPHOTOS_HEADER_DESCRIPTION_LEARN_MORE" value:&stru_2D398 table:@"Photos"];
    v41 = [v38 initWithString:v40];

    [v41 addAttribute:NSLinkAttributeName value:@"https://support.apple.com/HT204264" range:{0, objc_msgSend(v54, "length")}];
    v42 = [NSMutableAttributedString alloc];
    v43 = [NSBundle bundleForClass:objc_opt_class()];
    v44 = [v43 localizedStringForKey:@"SETTINGS_ICLOUDPHOTOS_HEADER_DESCRIPTION" value:&stru_2D398 table:@"Photos"];
    v45 = [v42 initWithString:v44];

    v46 = [[NSMutableAttributedString alloc] initWithString:@" "];
    [v45 appendAttributedString:v46];

    [v45 appendAttributedString:v41];
    v47 = objc_alloc_init(UITextView);
    [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v47 setAttributedText:v45];
    [v47 setSelectable:1];
    [v47 setEditable:0];
    [v47 _setInteractiveTextSelectionDisabled:1];
    [v47 setScrollEnabled:0];
    v48 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v47 setFont:v48];

    v49 = +[UIColor labelColor];
    [v47 setTextColor:v49];

    [v47 setTextAlignment:1];
    v50 = +[UIColor clearColor];
    [v47 setBackgroundColor:v50];

    [v66 addArrangedSubview:v47];
    [v66 setCustomSpacing:v30 afterView:4.0];
  }

  return v5;
}

@end