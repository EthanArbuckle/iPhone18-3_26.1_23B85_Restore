@interface ClarityUIWallpaperPreviewTableCell
+ (id)previewSpecifier;
- (ClarityUIWallpaperPreviewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)wallpaperImage;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setPreviewViewWith:(id)with;
- (void)updateInformation;
@end

@implementation ClarityUIWallpaperPreviewTableCell

+ (id)previewSpecifier
{
  v2 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:self cell:-1 edit:0];
  v5 = PSCellClassKey;
  v6 = objc_opt_class();
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 setProperties:v3];

  return v2;
}

- (id)wallpaperImage
{
  v3 = [UIImage alloc];
  specifier = [(ClarityUIWallpaperPreviewTableCell *)self specifier];
  v5 = [specifier propertyForKey:@"wallpaperData"];
  v6 = [v3 initWithData:v5];

  return v6;
}

- (ClarityUIWallpaperPreviewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v16.receiver = self;
  v16.super_class = ClarityUIWallpaperPreviewTableCell;
  v9 = [(ClarityUIWallpaperPreviewTableCell *)&v16 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier], specifierCopy);
    wallpaperImage = [(ClarityUIWallpaperPreviewTableCell *)v10 wallpaperImage];
    v12 = [[UIImageView alloc] initWithImage:wallpaperImage];
    [v12 setContentMode:2];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [v12 layer];
    [layer setCornerRadius:20.0];

    [v12 setClipsToBounds:1];
    [(ClarityUIWallpaperPreviewTableCell *)v10 setPreviewViewWith:wallpaperImage];
    v14 = v10;
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = ClarityUIWallpaperPreviewTableCell;
  [(ClarityUIWallpaperPreviewTableCell *)&v5 refreshCellContentsWithSpecifier:specifier];
  wallpaperImage = [(ClarityUIWallpaperPreviewTableCell *)self wallpaperImage];
  [(ClarityUIWallpaperPreviewTableCell *)self setPreviewViewWith:wallpaperImage];
}

- (void)setPreviewViewWith:(id)with
{
  withCopy = with;
  firstValue = [[ClarityLockScreenPreviewView alloc] initWithImage:withCopy];

  [(ClarityLockScreenPreviewView *)firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(ClarityUIWallpaperPreviewTableCell *)self contentView];
  [contentView addSubview:firstValue];

  v6 = objc_opt_new();
  v7 = _NSDictionaryOfVariableBindings(@"previewView", firstValue, 0);
  v8 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[previewView]|" options:0 metrics:0 views:v7];
  [v6 addObjectsFromArray:v8];

  v9 = _NSDictionaryOfVariableBindings(@"previewView", firstValue, 0);
  v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-10-[previewView]-10-|", 0, 0, v9);
  [v6 addObjectsFromArray:v10];

  [NSLayoutConstraint activateConstraints:v6];
}

- (void)updateInformation
{
  wallpaperImage = [(ClarityUIWallpaperPreviewTableCell *)self wallpaperImage];
  imageView = [(ClarityUIWallpaperPreviewTableCell *)self imageView];
  [imageView setImage:wallpaperImage];
}

@end