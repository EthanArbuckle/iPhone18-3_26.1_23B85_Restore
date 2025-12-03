@interface CPSCardPreviewTableViewCell
+ (id)specifierForOverride:(id)override;
- (CPSCardPreviewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_setUpCardPreview;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CPSCardPreviewTableViewCell

+ (id)specifierForOverride:(id)override
{
  overrideCopy = override;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_31AA0 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v4 setProperty:overrideCopy forKey:@"urlOverride"];

  return v4;
}

- (CPSCardPreviewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v15.receiver = self;
  v15.super_class = CPSCardPreviewTableViewCell;
  v9 = [(CPSCardPreviewTableViewCell *)&v15 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    [(CPSCardPreviewTableViewCell *)v9 setSelectionStyle:0];
    v11 = [specifierCopy propertyForKey:@"urlOverride"];
    override = v10->_override;
    v10->_override = v11;

    [(CPSCardPreviewTableViewCell *)v10 _setUpCardPreview];
    v13 = v10;
  }

  return v10;
}

- (void)_setUpCardPreview
{
  v3 = [[UIImage alloc] initWithCGImage:{-[CPSDeveloperOverride heroImage](self->_override, "heroImage")}];
  imageView = self->_imageView;
  if (imageView)
  {
    [(UIImageView *)imageView setImage:v3];
  }

  else
  {
    v5 = [[UIImageView alloc] initWithImage:v3];
    v6 = self->_imageView;
    self->_imageView = v5;

    contentView = [(CPSCardPreviewTableViewCell *)self contentView];
    [contentView addSubview:self->_imageView];

    [(UIImageView *)self->_imageView setContentMode:1];
    [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    centerXAnchor = [(UIImageView *)self->_imageView centerXAnchor];
    contentView2 = [(CPSCardPreviewTableViewCell *)self contentView];
    centerXAnchor2 = [contentView2 centerXAnchor];
    v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v27[0] = v23;
    centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
    contentView3 = [(CPSCardPreviewTableViewCell *)self contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v27[1] = v19;
    widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
    contentView4 = [(CPSCardPreviewTableViewCell *)self contentView];
    widthAnchor2 = [contentView4 widthAnchor];
    v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-40.0];
    v27[2] = v9;
    heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
    v11 = [heightAnchor constraintLessThanOrEqualToConstant:300.0];
    v27[3] = v11;
    topAnchor = [(UIImageView *)self->_imageView topAnchor];
    contentView5 = [(CPSCardPreviewTableViewCell *)self contentView];
    topAnchor2 = [contentView5 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    v27[4] = v15;
    v16 = [NSArray arrayWithObjects:v27 count:5];
    [NSLayoutConstraint activateConstraints:v16];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = CPSCardPreviewTableViewCell;
  [(CPSCardPreviewTableViewCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(CPSCardPreviewTableViewCell *)self _setUpCardPreview];
}

@end