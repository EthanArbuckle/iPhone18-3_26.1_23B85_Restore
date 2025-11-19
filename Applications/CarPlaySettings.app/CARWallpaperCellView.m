@interface CARWallpaperCellView
- (CARWallpaperCellView)initWithWallpaper:(id)a3 wallpaperPreferences:(id)a4;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (void)setCellFocused:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CARWallpaperCellView

- (CARWallpaperCellView)initWithWallpaper:(id)a3 wallpaperPreferences:(id)a4
{
  v7 = a3;
  v8 = a4;
  v79.receiver = self;
  v79.super_class = CARWallpaperCellView;
  v9 = [(CARWallpaperCellView *)&v79 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_wallpaper, a3);
    objc_storeStrong(&v10->_wallpaperPreferences, a4);
    v11 = objc_opt_new();
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = +[UIColor _carSystemFocusColor];
    v13 = [v12 CGColor];
    v14 = [v11 layer];
    [v14 setBorderColor:v13];

    v15 = [v11 layer];
    [v15 setBorderWidth:2.0];

    v16 = [v11 layer];
    [v16 setCornerRadius:9.0];

    v17 = [v11 layer];
    [v17 setMasksToBounds:1];

    [v11 setHidden:1];
    [(CARWallpaperCellView *)v10 addSubview:v11];
    v78 = v11;
    [(CARWallpaperCellView *)v10 setFocusRingView:v11];
    v18 = objc_opt_new();
    v19 = +[UIColor lightGrayColor];
    v20 = [v19 colorWithAlphaComponent:0.5];
    v21 = [v20 CGColor];
    v22 = [v18 layer];
    [v22 setBorderColor:v21];

    v23 = [v18 layer];
    [v23 setBorderWidth:1.0];

    v24 = [v18 layer];
    [v24 setCornerRadius:6.0];

    v25 = [v18 layer];
    [v25 setMasksToBounds:1];

    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CARWallpaperCellView *)v10 addSubview:v18];
    v76 = v8;
    v26 = [v8 dataProvider];
    v77 = v7;
    v27 = [v26 resolveWallpaper:v7];

    v75 = v27;
    if (v27)
    {
      v73 = v10;
      v28 = [(CARWallpaperCellView *)v10 traitCollection];
      v29 = [v27 thumbnailWithCompatibleTraitCollection:v28];

      v71 = v29;
      if (v29)
      {
        v30 = [[UIImageView alloc] initWithImage:v29];
      }

      else
      {
        v30 = [v27 view];
      }

      v31 = v30;
      v32 = v18;
      if (!v30)
      {
        v31 = objc_alloc_init(UIView);
        v33 = +[UIColor blackColor];
        [v31 setBackgroundColor:v33];
      }

      [v31 setClipsToBounds:1];
      [v31 setContentMode:2];
      [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v18 addSubview:v31];
      v69 = [v31 leadingAnchor];
      v67 = [v18 leadingAnchor];
      v65 = [v69 constraintEqualToAnchor:v67];
      v81[0] = v65;
      v63 = [v31 trailingAnchor];
      v61 = [v18 trailingAnchor];
      v58 = [v63 constraintEqualToAnchor:v61];
      v81[1] = v58;
      v34 = [v31 topAnchor];
      v35 = [v18 topAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      v81[2] = v36;
      v37 = [v31 bottomAnchor];
      v38 = [v18 bottomAnchor];
      v39 = [v37 constraintEqualToAnchor:v38];
      v81[3] = v39;
      v40 = [NSArray arrayWithObjects:v81 count:4];
      [NSLayoutConstraint activateConstraints:v40];

      v18 = v32;
      v10 = v73;
    }

    v74 = [v11 leadingAnchor];
    v72 = [(CARWallpaperCellView *)v10 leadingAnchor];
    v70 = [v74 constraintEqualToAnchor:v72];
    v80[0] = v70;
    v68 = [v11 trailingAnchor];
    v66 = [(CARWallpaperCellView *)v10 trailingAnchor];
    v64 = [v68 constraintEqualToAnchor:v66];
    v80[1] = v64;
    v62 = [v11 topAnchor];
    v60 = [(CARWallpaperCellView *)v10 topAnchor];
    v59 = [v62 constraintEqualToAnchor:v60];
    v80[2] = v59;
    v57 = [v11 bottomAnchor];
    v56 = [(CARWallpaperCellView *)v10 bottomAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v80[3] = v55;
    v54 = [v18 leadingAnchor];
    v53 = [(CARWallpaperCellView *)v10 leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53 constant:4.0];
    v80[4] = v52;
    v51 = [v18 trailingAnchor];
    v50 = [(CARWallpaperCellView *)v10 trailingAnchor];
    v41 = [v51 constraintEqualToAnchor:v50 constant:-4.0];
    v80[5] = v41;
    v42 = [v18 topAnchor];
    v43 = [(CARWallpaperCellView *)v10 topAnchor];
    v44 = [v42 constraintEqualToAnchor:v43 constant:4.0];
    v80[6] = v44;
    v45 = [v18 bottomAnchor];
    v46 = [(CARWallpaperCellView *)v10 bottomAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:-4.0];
    v80[7] = v47;
    v48 = [NSArray arrayWithObjects:v80 count:8];
    [NSLayoutConstraint activateConstraints:v48];

    v8 = v76;
    v7 = v77;
  }

  return v10;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  width = a3.width;
  v5 = [(CARWallpaperCellView *)self carSession:a3.width];
  v6 = [v5 configuration];
  v7 = [v6 screens];
  v8 = [v7 bs_firstObjectPassingTest:&stru_1000DB1C8];

  v9 = [v8 currentViewArea];
  [v9 safeFrame];

  v10 = [(CARWallpaperCellView *)self traitCollection];
  [v10 displayScale];
  UIRoundToScale();
  v12 = v11;

  v13 = width;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = +[UIColor _carSystemFocusColor];
  v5 = [(CARWallpaperCellView *)self traitCollection];
  v10 = [v4 resolvedColorWithTraitCollection:v5];

  v6 = v10;
  v7 = [v10 CGColor];
  v8 = [(CARWallpaperCellView *)self focusRingView];
  v9 = [v8 layer];
  [v9 setBorderColor:v7];
}

- (void)setCellFocused:(BOOL)a3
{
  v3 = a3;
  self->_cellFocused = a3;
  v4 = [(CARWallpaperCellView *)self focusRingView];
  [v4 setHidden:!v3];
}

@end