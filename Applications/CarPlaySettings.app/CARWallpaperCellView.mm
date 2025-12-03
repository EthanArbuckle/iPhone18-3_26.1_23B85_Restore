@interface CARWallpaperCellView
- (CARWallpaperCellView)initWithWallpaper:(id)wallpaper wallpaperPreferences:(id)preferences;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (void)setCellFocused:(BOOL)focused;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CARWallpaperCellView

- (CARWallpaperCellView)initWithWallpaper:(id)wallpaper wallpaperPreferences:(id)preferences
{
  wallpaperCopy = wallpaper;
  preferencesCopy = preferences;
  v79.receiver = self;
  v79.super_class = CARWallpaperCellView;
  v9 = [(CARWallpaperCellView *)&v79 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_wallpaper, wallpaper);
    objc_storeStrong(&v10->_wallpaperPreferences, preferences);
    v11 = objc_opt_new();
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = +[UIColor _carSystemFocusColor];
    cGColor = [v12 CGColor];
    layer = [v11 layer];
    [layer setBorderColor:cGColor];

    layer2 = [v11 layer];
    [layer2 setBorderWidth:2.0];

    layer3 = [v11 layer];
    [layer3 setCornerRadius:9.0];

    layer4 = [v11 layer];
    [layer4 setMasksToBounds:1];

    [v11 setHidden:1];
    [(CARWallpaperCellView *)v10 addSubview:v11];
    v78 = v11;
    [(CARWallpaperCellView *)v10 setFocusRingView:v11];
    v18 = objc_opt_new();
    v19 = +[UIColor lightGrayColor];
    v20 = [v19 colorWithAlphaComponent:0.5];
    cGColor2 = [v20 CGColor];
    layer5 = [v18 layer];
    [layer5 setBorderColor:cGColor2];

    layer6 = [v18 layer];
    [layer6 setBorderWidth:1.0];

    layer7 = [v18 layer];
    [layer7 setCornerRadius:6.0];

    layer8 = [v18 layer];
    [layer8 setMasksToBounds:1];

    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CARWallpaperCellView *)v10 addSubview:v18];
    v76 = preferencesCopy;
    dataProvider = [preferencesCopy dataProvider];
    v77 = wallpaperCopy;
    v27 = [dataProvider resolveWallpaper:wallpaperCopy];

    v75 = v27;
    if (v27)
    {
      v73 = v10;
      traitCollection = [(CARWallpaperCellView *)v10 traitCollection];
      v29 = [v27 thumbnailWithCompatibleTraitCollection:traitCollection];

      v71 = v29;
      if (v29)
      {
        view = [[UIImageView alloc] initWithImage:v29];
      }

      else
      {
        view = [v27 view];
      }

      v31 = view;
      v32 = v18;
      if (!view)
      {
        v31 = objc_alloc_init(UIView);
        v33 = +[UIColor blackColor];
        [v31 setBackgroundColor:v33];
      }

      [v31 setClipsToBounds:1];
      [v31 setContentMode:2];
      [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v18 addSubview:v31];
      leadingAnchor = [v31 leadingAnchor];
      leadingAnchor2 = [v18 leadingAnchor];
      v65 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v81[0] = v65;
      trailingAnchor = [v31 trailingAnchor];
      trailingAnchor2 = [v18 trailingAnchor];
      v58 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v81[1] = v58;
      topAnchor = [v31 topAnchor];
      topAnchor2 = [v18 topAnchor];
      v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v81[2] = v36;
      bottomAnchor = [v31 bottomAnchor];
      bottomAnchor2 = [v18 bottomAnchor];
      v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v81[3] = v39;
      v40 = [NSArray arrayWithObjects:v81 count:4];
      [NSLayoutConstraint activateConstraints:v40];

      v18 = v32;
      v10 = v73;
    }

    leadingAnchor3 = [v11 leadingAnchor];
    leadingAnchor4 = [(CARWallpaperCellView *)v10 leadingAnchor];
    v70 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v80[0] = v70;
    trailingAnchor3 = [v11 trailingAnchor];
    trailingAnchor4 = [(CARWallpaperCellView *)v10 trailingAnchor];
    v64 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v80[1] = v64;
    topAnchor3 = [v11 topAnchor];
    topAnchor4 = [(CARWallpaperCellView *)v10 topAnchor];
    v59 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v80[2] = v59;
    bottomAnchor3 = [v11 bottomAnchor];
    bottomAnchor4 = [(CARWallpaperCellView *)v10 bottomAnchor];
    v55 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v80[3] = v55;
    leadingAnchor5 = [v18 leadingAnchor];
    leadingAnchor6 = [(CARWallpaperCellView *)v10 leadingAnchor];
    v52 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:4.0];
    v80[4] = v52;
    trailingAnchor5 = [v18 trailingAnchor];
    trailingAnchor6 = [(CARWallpaperCellView *)v10 trailingAnchor];
    v41 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-4.0];
    v80[5] = v41;
    topAnchor5 = [v18 topAnchor];
    topAnchor6 = [(CARWallpaperCellView *)v10 topAnchor];
    v44 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:4.0];
    v80[6] = v44;
    bottomAnchor5 = [v18 bottomAnchor];
    bottomAnchor6 = [(CARWallpaperCellView *)v10 bottomAnchor];
    v47 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-4.0];
    v80[7] = v47;
    v48 = [NSArray arrayWithObjects:v80 count:8];
    [NSLayoutConstraint activateConstraints:v48];

    preferencesCopy = v76;
    wallpaperCopy = v77;
  }

  return v10;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  width = size.width;
  v5 = [(CARWallpaperCellView *)self carSession:size.width];
  configuration = [v5 configuration];
  screens = [configuration screens];
  v8 = [screens bs_firstObjectPassingTest:&stru_1000DB1C8];

  currentViewArea = [v8 currentViewArea];
  [currentViewArea safeFrame];

  traitCollection = [(CARWallpaperCellView *)self traitCollection];
  [traitCollection displayScale];
  UIRoundToScale();
  v12 = v11;

  v13 = width;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v4 = +[UIColor _carSystemFocusColor];
  traitCollection = [(CARWallpaperCellView *)self traitCollection];
  v10 = [v4 resolvedColorWithTraitCollection:traitCollection];

  v6 = v10;
  cGColor = [v10 CGColor];
  focusRingView = [(CARWallpaperCellView *)self focusRingView];
  layer = [focusRingView layer];
  [layer setBorderColor:cGColor];
}

- (void)setCellFocused:(BOOL)focused
{
  focusedCopy = focused;
  self->_cellFocused = focused;
  focusRingView = [(CARWallpaperCellView *)self focusRingView];
  [focusRingView setHidden:!focusedCopy];
}

@end