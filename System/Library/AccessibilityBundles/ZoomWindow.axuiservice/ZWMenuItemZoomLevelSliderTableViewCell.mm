@interface ZWMenuItemZoomLevelSliderTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)result withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (ZWMenuItemZoomLevelSliderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ZWMenuItemZoomLevelSliderTableViewCell

- (ZWMenuItemZoomLevelSliderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v39.receiver = self;
  v39.super_class = ZWMenuItemZoomLevelSliderTableViewCell;
  v4 = [(ZWMenuItemZoomLevelSliderTableViewCell *)&v39 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v4 contentView];
    v7 = [UIImage systemImageNamed:@"minus.magnifyingglass"];
    v8 = [[UIImageView alloc] initWithImage:v7];
    v9 = +[UIColor whiteColor];
    [v8 setTintColor:v9];

    [v6 addSubview:v8];
    [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 setZoomOutImageView:v8];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [UIImage systemImageNamed:@"plus.magnifyingglass"];

    v11 = [[UIImageView alloc] initWithImage:v10];
    v12 = +[UIColor whiteColor];
    [v11 setTintColor:v12];

    [v6 addSubview:v11];
    [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 setZoomInImageView:v11];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [[UISlider alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v14 = +[UIColor whiteColor];
    [v13 setMinimumTrackTintColor:v14];

    [v6 addSubview:v13];
    [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 setZoomLevelSlider:v13];
    v15 = ZWLocString(@"ZW_MENU_SLIDER_ZOOM_LEVEL");
    [v13 setAccessibilityLabel:v15];

    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = _NSDictionaryOfVariableBindings(@"zoomOutImageView, zoomInImageView, slider", v8, v11, v13, 0);
    if (_UISolariumEnabled())
    {
      v17 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 superview];
      [v17 frame];
      ZWCornerRadiusForBackgroundWithSize(v18, v19);
      v21 = v20 * 0.8;
      v40[0] = @"xEdgePadding";
      [NSNumber numberWithDouble:v20 * 1.5];
      v38 = v8;
      v22 = v16;
      v24 = v23 = v10;
      v40[1] = @"xSliderPadding";
      v41[0] = v24;
      v25 = [NSNumber numberWithDouble:v21];
      v41[1] = v25;
      v26 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];

      v10 = v23;
      v16 = v22;
      v8 = v38;
    }

    else
    {
      v26 = &off_7B6F0;
    }

    v27 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-xEdgePadding-[zoomOutImageView]-xSliderPadding-[slider]-xSliderPadding-[zoomInImageView]-xEdgePadding-|", 0, v26, v16);
    [v6 addConstraints:v27];

    v28 = [NSLayoutConstraint constraintWithItem:v13 attribute:10 relatedBy:0 toItem:v6 attribute:10 multiplier:1.0 constant:0.0];
    [v6 addConstraint:v28];

    v29 = [NSLayoutConstraint constraintWithItem:v8 attribute:4 relatedBy:0 toItem:v6 attribute:4 multiplier:1.0 constant:-12.0];
    [v6 addConstraint:v29];

    v30 = [NSLayoutConstraint constraintWithItem:v11 attribute:4 relatedBy:0 toItem:v6 attribute:4 multiplier:1.0 constant:-12.0];
    [v6 addConstraint:v30];

    LODWORD(v30) = ZWUseVibrantBlendModes();
    v31 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 zoomLevelSlider];
    v32 = v31;
    if (v30)
    {
      [v31 _setDrawsAsBackdropOverlayWithBlendMode:3];

      v33 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 zoomInImageView];
      [v33 _setDrawsAsBackdropOverlayWithBlendMode:3];

      v34 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 zoomOutImageView];
      [v34 _setDrawsAsBackdropOverlayWithBlendMode:3];
    }

    else
    {
      [v31 _setDrawsAsBackdropOverlay:0];

      v35 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 zoomInImageView];
      [v35 _setDrawsAsBackdropOverlay:0];

      v36 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 zoomOutImageView];
      [v36 _setDrawsAsBackdropOverlay:0];

      v34 = +[UIColor darkGrayColor];
      [v13 setMaximumTrackTintColor:v34];
    }

    [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 setAccessibilityIgnoresInvertColors:1];
  }

  return v5;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)result withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v5 = 44.0;
  result.height = v5;
  return result;
}

@end