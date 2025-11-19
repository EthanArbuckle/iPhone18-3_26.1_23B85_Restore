@interface ClarityUIWallpaperPreviewTableCell
+ (id)previewSpecifier;
- (ClarityUIWallpaperPreviewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)wallpaperImage;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setPreviewViewWith:(id)a3;
- (void)updateInformation;
@end

@implementation ClarityUIWallpaperPreviewTableCell

+ (id)previewSpecifier
{
  v2 = [PSSpecifier preferenceSpecifierNamed:0 target:a1 set:0 get:0 detail:a1 cell:-1 edit:0];
  v5 = PSCellClassKey;
  v6 = objc_opt_class();
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 setProperties:v3];

  return v2;
}

- (id)wallpaperImage
{
  v3 = [UIImage alloc];
  v4 = [(ClarityUIWallpaperPreviewTableCell *)self specifier];
  v5 = [v4 propertyForKey:@"wallpaperData"];
  v6 = [v3 initWithData:v5];

  return v6;
}

- (ClarityUIWallpaperPreviewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = ClarityUIWallpaperPreviewTableCell;
  v9 = [(ClarityUIWallpaperPreviewTableCell *)&v16 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier], v8);
    v11 = [(ClarityUIWallpaperPreviewTableCell *)v10 wallpaperImage];
    v12 = [[UIImageView alloc] initWithImage:v11];
    [v12 setContentMode:2];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [v12 layer];
    [v13 setCornerRadius:20.0];

    [v12 setClipsToBounds:1];
    [(ClarityUIWallpaperPreviewTableCell *)v10 setPreviewViewWith:v11];
    v14 = v10;
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = ClarityUIWallpaperPreviewTableCell;
  [(ClarityUIWallpaperPreviewTableCell *)&v5 refreshCellContentsWithSpecifier:a3];
  v4 = [(ClarityUIWallpaperPreviewTableCell *)self wallpaperImage];
  [(ClarityUIWallpaperPreviewTableCell *)self setPreviewViewWith:v4];
}

- (void)setPreviewViewWith:(id)a3
{
  v4 = a3;
  firstValue = [[ClarityLockScreenPreviewView alloc] initWithImage:v4];

  [(ClarityLockScreenPreviewView *)firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(ClarityUIWallpaperPreviewTableCell *)self contentView];
  [v5 addSubview:firstValue];

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
  v4 = [(ClarityUIWallpaperPreviewTableCell *)self wallpaperImage];
  v3 = [(ClarityUIWallpaperPreviewTableCell *)self imageView];
  [v3 setImage:v4];
}

@end