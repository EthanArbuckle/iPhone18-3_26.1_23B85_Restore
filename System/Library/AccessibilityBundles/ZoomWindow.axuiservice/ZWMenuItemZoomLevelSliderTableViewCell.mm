@interface ZWMenuItemZoomLevelSliderTableViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)result withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (ZWMenuItemZoomLevelSliderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ZWMenuItemZoomLevelSliderTableViewCell

- (ZWMenuItemZoomLevelSliderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v39.receiver = self;
  v39.super_class = ZWMenuItemZoomLevelSliderTableViewCell;
  v4 = [(ZWMenuItemZoomLevelSliderTableViewCell *)&v39 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(ZWMenuItemZoomLevelSliderTableViewCell *)v4 contentView];
    v7 = [UIImage systemImageNamed:@"minus.magnifyingglass"];
    v8 = [[UIImageView alloc] initWithImage:v7];
    v9 = +[UIColor whiteColor];
    [v8 setTintColor:v9];

    [contentView addSubview:v8];
    [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 setZoomOutImageView:v8];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [UIImage systemImageNamed:@"plus.magnifyingglass"];

    v11 = [[UIImageView alloc] initWithImage:v10];
    v12 = +[UIColor whiteColor];
    [v11 setTintColor:v12];

    [contentView addSubview:v11];
    [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 setZoomInImageView:v11];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [[UISlider alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v14 = +[UIColor whiteColor];
    [v13 setMinimumTrackTintColor:v14];

    [contentView addSubview:v13];
    [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 setZoomLevelSlider:v13];
    v15 = ZWLocString(@"ZW_MENU_SLIDER_ZOOM_LEVEL");
    [v13 setAccessibilityLabel:v15];

    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = _NSDictionaryOfVariableBindings(@"zoomOutImageView, zoomInImageView, slider", v8, v11, v13, 0);
    if (_UISolariumEnabled())
    {
      superview = [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 superview];
      [superview frame];
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
    [contentView addConstraints:v27];

    v28 = [NSLayoutConstraint constraintWithItem:v13 attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v28];

    v29 = [NSLayoutConstraint constraintWithItem:v8 attribute:4 relatedBy:0 toItem:contentView attribute:4 multiplier:1.0 constant:-12.0];
    [contentView addConstraint:v29];

    v30 = [NSLayoutConstraint constraintWithItem:v11 attribute:4 relatedBy:0 toItem:contentView attribute:4 multiplier:1.0 constant:-12.0];
    [contentView addConstraint:v30];

    LODWORD(v30) = ZWUseVibrantBlendModes();
    zoomLevelSlider = [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 zoomLevelSlider];
    v32 = zoomLevelSlider;
    if (v30)
    {
      [zoomLevelSlider _setDrawsAsBackdropOverlayWithBlendMode:3];

      zoomInImageView = [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 zoomInImageView];
      [zoomInImageView _setDrawsAsBackdropOverlayWithBlendMode:3];

      zoomOutImageView = [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 zoomOutImageView];
      [zoomOutImageView _setDrawsAsBackdropOverlayWithBlendMode:3];
    }

    else
    {
      [zoomLevelSlider _setDrawsAsBackdropOverlay:0];

      zoomInImageView2 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 zoomInImageView];
      [zoomInImageView2 _setDrawsAsBackdropOverlay:0];

      zoomOutImageView2 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 zoomOutImageView];
      [zoomOutImageView2 _setDrawsAsBackdropOverlay:0];

      zoomOutImageView = +[UIColor darkGrayColor];
      [v13 setMaximumTrackTintColor:zoomOutImageView];
    }

    [(ZWMenuItemZoomLevelSliderTableViewCell *)v5 setAccessibilityIgnoresInvertColors:1];
  }

  return v5;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)result withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v5 = 44.0;
  result.height = v5;
  return result;
}

@end