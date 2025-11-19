@interface SettingsICPLHeaderCell
- (SettingsICPLHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation SettingsICPLHeaderCell

- (SettingsICPLHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v67.receiver = self;
  v67.super_class = SettingsICPLHeaderCell;
  v4 = [(SettingsICPLHeaderCell *)&v67 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(SettingsICPLHeaderCell *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(SettingsICPLHeaderCell *)v5 titleLabel];
    [v6 setHidden:1];

    v7 = [(SettingsICPLHeaderCell *)v5 detailTextLabel];
    [v7 setHidden:1];

    v8 = objc_alloc_init(UIStackView);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAxis:1];
    [v8 setAlignment:3];
    [v8 setSpacing:10.0];
    v9 = [(SettingsICPLHeaderCell *)v5 contentView];
    [v9 addSubview:v8];

    v61 = [v8 topAnchor];
    v63 = [(SettingsICPLHeaderCell *)v5 contentView];
    v59 = [v63 topAnchor];
    v57 = [v61 constraintEqualToAnchor:v59 constant:25.0];
    v68[0] = v57;
    v53 = [v8 leadingAnchor];
    v55 = [(SettingsICPLHeaderCell *)v5 contentView];
    v52 = [v55 leadingAnchor];
    v10 = [v53 constraintEqualToAnchor:v52 constant:25.0];
    v68[1] = v10;
    v11 = [v8 trailingAnchor];
    v12 = [(SettingsICPLHeaderCell *)v5 contentView];
    v13 = [v12 trailingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13 constant:-25.0];
    v68[2] = v14;
    v66 = v8;
    v15 = [v8 bottomAnchor];
    v65 = v5;
    v16 = [(SettingsICPLHeaderCell *)v5 contentView];
    v17 = [v16 bottomAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:-15.0];
    v68[3] = v18;
    v19 = [NSArray arrayWithObjects:v68 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    v20 = [[ISIcon alloc] initWithBundleIdentifier:@"com.apple.mobileslideshow"];
    v62 = [[ISImageDescriptor alloc] initWithSize:60.0 scale:{60.0, 2.0}];
    v64 = v20;
    v21 = [v20 prepareImageForDescriptor:?];
    v22 = [v21 CGImage];

    v60 = [[UIImage alloc] initWithCGImage:v22 scale:0 orientation:2.0];
    v23 = [[UIImageView alloc] initWithImage:v60];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v23 setContentMode:4];
    if ((PXSolariumEnabled() & 1) == 0)
    {
      v24 = [v23 layer];
      [v24 setMasksToBounds:1];

      v25 = +[UIColor systemExtraLightGrayColor];
      v26 = [v25 cgColor];
      v27 = [v23 layer];
      [v27 setBorderColor:v26];

      v28 = [v23 layer];
      [v28 setBorderWidth:1.0];

      v29 = [v23 layer];
      [v29 setCornerRadius:13.0];
    }

    [v66 addArrangedSubview:v23];
    v30 = objc_alloc_init(UILabel);
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = v65;
    v31 = [NSBundle bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"SETTINGS_ICLOUDPHOTOS_HEADER_TITLE" value:&stru_2D398 table:@"Photos"];
    [v30 setText:v32];

    v33 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    v34 = [v33 fontDescriptor];
    v58 = [v34 fontDescriptorWithSymbolicTraits:2];

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