@interface CPSCardPreviewTableViewCell
+ (id)specifierForOverride:(id)a3;
- (CPSCardPreviewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_setUpCardPreview;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation CPSCardPreviewTableViewCell

+ (id)specifierForOverride:(id)a3
{
  v3 = a3;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_31AA0 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v4 setProperty:v3 forKey:@"urlOverride"];

  return v4;
}

- (CPSCardPreviewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = CPSCardPreviewTableViewCell;
  v9 = [(CPSCardPreviewTableViewCell *)&v15 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    [(CPSCardPreviewTableViewCell *)v9 setSelectionStyle:0];
    v11 = [v8 propertyForKey:@"urlOverride"];
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

    v7 = [(CPSCardPreviewTableViewCell *)self contentView];
    [v7 addSubview:self->_imageView];

    [(UIImageView *)self->_imageView setContentMode:1];
    [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [(UIImageView *)self->_imageView centerXAnchor];
    v26 = [(CPSCardPreviewTableViewCell *)self contentView];
    v24 = [v26 centerXAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v27[0] = v23;
    v21 = [(UIImageView *)self->_imageView centerYAnchor];
    v22 = [(CPSCardPreviewTableViewCell *)self contentView];
    v20 = [v22 centerYAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v27[1] = v19;
    v17 = [(UIImageView *)self->_imageView widthAnchor];
    v18 = [(CPSCardPreviewTableViewCell *)self contentView];
    v8 = [v18 widthAnchor];
    v9 = [v17 constraintEqualToAnchor:v8 constant:-40.0];
    v27[2] = v9;
    v10 = [(UIImageView *)self->_imageView heightAnchor];
    v11 = [v10 constraintLessThanOrEqualToConstant:300.0];
    v27[3] = v11;
    v12 = [(UIImageView *)self->_imageView topAnchor];
    v13 = [(CPSCardPreviewTableViewCell *)self contentView];
    v14 = [v13 topAnchor];
    v15 = [v12 constraintEqualToAnchor:v14 constant:20.0];
    v27[4] = v15;
    v16 = [NSArray arrayWithObjects:v27 count:5];
    [NSLayoutConstraint activateConstraints:v16];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPSCardPreviewTableViewCell;
  [(CPSCardPreviewTableViewCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(CPSCardPreviewTableViewCell *)self _setUpCardPreview];
}

@end