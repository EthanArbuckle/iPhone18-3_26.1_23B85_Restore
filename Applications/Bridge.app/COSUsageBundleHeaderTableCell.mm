@interface COSUsageBundleHeaderTableCell
+ (id)specifierForAppBundle:(id)bundle;
- (COSUsageBundleHeaderTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (NSString)info;
- (NSString)title;
- (NSString)vendor;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setTitle:(id)title;
- (void)updateConstraints;
@end

@implementation COSUsageBundleHeaderTableCell

+ (id)specifierForAppBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_10026E598 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v4 setUserInfo:bundleCopy];

  return v4;
}

- (COSUsageBundleHeaderTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v30.receiver = self;
  v30.super_class = COSUsageBundleHeaderTableCell;
  v9 = [(COSUsageBundleHeaderTableCell *)&v30 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    contentView = [(COSUsageBundleHeaderTableCell *)v9 contentView];
    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v10->_infoHidden = [specifierCopy versionLabelEnabled] ^ 1;
    v14 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v18 = [v14 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v18;

    [(UILabel *)v10->_titleLabel setFont:v12];
    [(UILabel *)v10->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_titleLabel setAccessibilityIdentifier:@"Title"];
    [(UILabel *)v10->_titleLabel setNumberOfLines:1];
    [(UILabel *)v10->_titleLabel setLineBreakMode:4];
    [(UILabel *)v10->_titleLabel setAllowsDefaultTighteningForTruncation:1];
    [contentView addSubview:v10->_titleLabel];
    v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    infoLabel = v10->_infoLabel;
    v10->_infoLabel = v20;

    [(UILabel *)v10->_infoLabel setFont:v13];
    [(UILabel *)v10->_infoLabel setEnabled:0];
    [(UILabel *)v10->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_infoLabel setAccessibilityIdentifier:@"Info"];
    [(UILabel *)v10->_infoLabel setNumberOfLines:1];
    [(UILabel *)v10->_infoLabel setLineBreakMode:4];
    [(UILabel *)v10->_infoLabel setAllowsDefaultTighteningForTruncation:1];
    [contentView addSubview:v10->_infoLabel];
    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    vendorLabel = v10->_vendorLabel;
    v10->_vendorLabel = v22;

    [(UILabel *)v10->_vendorLabel setFont:v13];
    [(UILabel *)v10->_vendorLabel setEnabled:0];
    [(UILabel *)v10->_vendorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_vendorLabel setAccessibilityIdentifier:@"Creator"];
    [(UILabel *)v10->_vendorLabel setNumberOfLines:1];
    [(UILabel *)v10->_vendorLabel setLineBreakMode:4];
    [(UILabel *)v10->_vendorLabel setAllowsDefaultTighteningForTruncation:1];
    [contentView addSubview:v10->_vendorLabel];
    v24 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    appIconView = v10->_appIconView;
    v10->_appIconView = v24;

    [(UIImageView *)v10->_appIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v10->_appIconView setAccessibilityIdentifier:@"Icon"];
    [(UIImageView *)v10->_appIconView setContentMode:1];
    [contentView addSubview:v10->_appIconView];
    if (v10->_infoHidden)
    {
      v31[0] = v10->_titleLabel;
      v31[1] = v10->_vendorLabel;
      v31[2] = v10->_appIconView;
      v26 = v31;
      v27 = 3;
    }

    else
    {
      v32[0] = v10->_titleLabel;
      v32[1] = v10->_infoLabel;
      v32[2] = v10->_vendorLabel;
      v32[3] = v10->_appIconView;
      v26 = v32;
      v27 = 4;
    }

    v28 = [NSArray arrayWithObjects:v26 count:v27];
    [contentView setAccessibilityElements:v28];

    [(COSUsageBundleHeaderTableCell *)v10 setNeedsUpdateConstraints];
    [(COSUsageBundleHeaderTableCell *)v10 refreshCellContentsWithSpecifier:specifierCopy];
  }

  return v10;
}

- (void)updateConstraints
{
  titleLabel = self->_titleLabel;
  if (self->_infoHidden)
  {
    _NSDictionaryOfVariableBindings(@"_titleLabel, _vendorLabel, _appIconView", titleLabel, self->_vendorLabel, self->_appIconView, 0);
  }

  else
  {
    _NSDictionaryOfVariableBindings(@"_titleLabel, _infoLabel, _vendorLabel, _appIconView", titleLabel, self->_infoLabel, self->_vendorLabel, self->_appIconView, 0);
  }
  v4 = ;
  if ([(NSMutableArray *)self->_constraints count])
  {
    [NSLayoutConstraint deactivateConstraints:self->_constraints];
  }

  v5 = +[NSMutableArray array];
  constraints = self->_constraints;
  self->_constraints = v5;

  v7 = self->_constraints;
  v8 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-15-[_appIconView(==58)]", 0, 0, v4);
  [(NSMutableArray *)v7 addObjectsFromArray:v8];

  v9 = self->_constraints;
  v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-16-[_appIconView(==58)]-(>=16)-|", 0, 0, v4);
  [(NSMutableArray *)v9 addObjectsFromArray:v10];

  v11 = self->_constraints;
  v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-84-[_titleLabel]-15-|", 0, 0, v4);
  [(NSMutableArray *)v11 addObjectsFromArray:v12];

  v13 = self->_constraints;
  if (self->_infoHidden)
  {
    v14 = @"V:|-16-[_titleLabel]-2-[_vendorLabel]-(>=16)-|";
  }

  else
  {
    v14 = @"V:|-16-[_titleLabel]-2-[_infoLabel]-2-[_vendorLabel]-(>=16)-|";
  }

  v15 = [NSLayoutConstraint constraintsWithVisualFormat:v14 options:0 metrics:0 views:v4];
  [(NSMutableArray *)v13 addObjectsFromArray:v15];

  if (!self->_infoHidden)
  {
    v16 = self->_constraints;
    v17 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-84-[_infoLabel]-15-|", 0, 0, v4);
    [(NSMutableArray *)v16 addObjectsFromArray:v17];
  }

  v18 = self->_constraints;
  v19 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-84-[_vendorLabel]-15-|", 0, 0, v4);
  [(NSMutableArray *)v18 addObjectsFromArray:v19];

  [NSLayoutConstraint activateConstraints:self->_constraints];
  v20.receiver = self;
  v20.super_class = COSUsageBundleHeaderTableCell;
  [(COSUsageBundleHeaderTableCell *)&v20 updateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v27.receiver = self;
  v27.super_class = COSUsageBundleHeaderTableCell;
  [(COSUsageBundleHeaderTableCell *)&v27 refreshCellContentsWithSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];
  v6 = PSBlankIconImage();
  [(COSUsageBundleHeaderTableCell *)self setIcon:v6];

  v7 = +[UIScreen mainScreen];
  traitCollection = [v7 traitCollection];
  [traitCollection displayScale];
  v10 = v9;

  v11 = +[NanoResourceGrabber sharedInstance];
  objc_initWeak(&location, self);
  bundleIdentifier = [userInfo bundleIdentifier];
  if (v10 <= 2.0)
  {
    v13 = 47;
  }

  else
  {
    v13 = 48;
  }

  v14 = &_dispatch_main_q;
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10010ACD0;
  v24 = &unk_10026C000;
  objc_copyWeak(&v25, &location);
  [v11 getIconForBundleID:bundleIdentifier iconVariant:v13 queue:&_dispatch_main_q block:&v21 timeout:-1.0];

  name = [userInfo name];
  [(COSUsageBundleHeaderTableCell *)self setTitle:name];

  versionLabelEnabled = [specifierCopy versionLabelEnabled];
  if (versionLabelEnabled)
  {
    bundleVersion = [userInfo bundleVersion];
  }

  else
  {
    bundleVersion = 0;
  }

  [(COSUsageBundleHeaderTableCell *)self setInfo:bundleVersion];
  if (versionLabelEnabled)
  {
  }

  bundleIdentifier2 = [userInfo bundleIdentifier];
  v19 = [bundleIdentifier2 hasPrefix:@"com.apple."];
  if (v19)
  {
    vendor = @"Apple Inc.";
  }

  else
  {
    vendor = [userInfo vendor];
  }

  [(COSUsageBundleHeaderTableCell *)self setVendor:vendor];
  if ((v19 & 1) == 0)
  {
  }

  [(COSUsageBundleHeaderTableCell *)self setNeedsDisplay];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ([titleCopy length])
  {
    v4 = titleCopy;
  }

  else
  {
    v4 = 0;
  }

  [(UILabel *)self->_titleLabel setText:v4];
}

- (NSString)title
{
  text = [(UILabel *)self->_titleLabel text];
  v3 = text;
  if (text)
  {
    v4 = text;
  }

  else
  {
    v4 = &stru_10026E598;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)vendor
{
  text = [(UILabel *)self->_vendorLabel text];
  v3 = text;
  if (text)
  {
    v4 = text;
  }

  else
  {
    v4 = &stru_10026E598;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)info
{
  text = [(UILabel *)self->_infoLabel text];
  v3 = text;
  if (text)
  {
    v4 = text;
  }

  else
  {
    v4 = &stru_10026E598;
  }

  v5 = v4;

  return &v4->isa;
}

@end