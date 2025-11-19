@interface PedestrianARSettingsFooterView
- (PedestrianARSettingsFooterView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3;
@end

@implementation PedestrianARSettingsFooterView

- (PedestrianARSettingsFooterView)initWithSpecifier:(id)a3
{
  v29.receiver = self;
  v29.super_class = PedestrianARSettingsFooterView;
  v3 = [(PedestrianARSettingsFooterView *)&v29 init];
  if (v3)
  {
    v4 = objc_opt_new();
    label = v3->_label;
    v3->_label = v4;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_label setNumberOfLines:0];
    v6 = [UITableViewHeaderFooterView _defaultFontForTableViewStyle:1 isSectionHeader:0];
    [(UILabel *)v3->_label setFont:v6];

    v7 = [UITableViewHeaderFooterView _defaultTextColorForTableViewStyle:1 isSectionHeader:0];
    [(UILabel *)v3->_label setTextColor:v7];

    [(PedestrianARSettingsFooterView *)v3 addSubview:v3->_label];
    v28 = [(UILabel *)v3->_label leadingAnchor];
    v27 = [(PedestrianARSettingsFooterView *)v3 leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27 constant:20.0];
    v32[0] = v26;
    v25 = [(UILabel *)v3->_label trailingAnchor];
    v24 = [(PedestrianARSettingsFooterView *)v3 trailingAnchor];
    v8 = [v25 constraintEqualToAnchor:v24 constant:-20.0];
    v32[1] = v8;
    v9 = [(UILabel *)v3->_label topAnchor];
    v10 = [(PedestrianARSettingsFooterView *)v3 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:8.0];
    v32[2] = v11;
    v12 = [(UILabel *)v3->_label bottomAnchor];
    v13 = [(PedestrianARSettingsFooterView *)v3 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:-15.0];
    v32[3] = v14;
    v15 = [NSArray arrayWithObjects:v32 count:4];
    [NSLayoutConstraint activateConstraints:v15];

    v16 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v17 = [v16 localizedStringForKey:@"Directions In The Real World Section Footer [Settings]" value:@"localized string not found" table:0];

    v18 = [UIImage systemImageNamed:@"arkit"];
    v19 = [NSTextAttachment textAttachmentWithImage:v18];
    v20 = [NSAttributedString attributedStringWithAttachment:v19];

    v30 = @"ARKIT_ICON";
    v31 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v22 = [NSAttributedString _maps_attributedStringWithBindingFormat:v17 replacements:v21 attributes:0];
    [(UILabel *)v3->_label setAttributedText:v22];
  }

  return v3;
}

- (double)preferredHeightForWidth:(double)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(PedestrianARSettingsFooterView *)self systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:v3, v4];
  return v5;
}

@end