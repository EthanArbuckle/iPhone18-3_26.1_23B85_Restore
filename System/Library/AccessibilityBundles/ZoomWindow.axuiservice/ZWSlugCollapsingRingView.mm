@interface ZWSlugCollapsingRingView
- (ZWSlugCollapsingRingView)initWithFrame:(CGRect)frame;
- (double)_cornerRadiusForExpandedRing;
- (void)layoutSubviews;
@end

@implementation ZWSlugCollapsingRingView

- (ZWSlugCollapsingRingView)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = ZWSlugCollapsingRingView;
  v3 = [(ZWSlugCollapsingRingView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(ZWSlugCollapsingRingView *)v3 layer];
    [layer setBorderWidth:2.0];

    layer2 = [(ZWSlugCollapsingRingView *)v4 layer];
    [layer2 setCornerCurve:kCACornerCurveContinuous];

    v7 = +[UIColor whiteColor];
    cGColor = [v7 CGColor];
    layer3 = [(ZWSlugCollapsingRingView *)v4 layer];
    [layer3 setBorderColor:cGColor];

    v10 = [UIBlurEffect effectWithStyle:19];
    [(ZWSlugCollapsingRingView *)v4 setEffect:v10];

    if (_UISolariumEnabled())
    {
      [(ZWSlugCollapsingRingView *)v4 setEffect:0];
      layer4 = [(ZWSlugCollapsingRingView *)v4 layer];
      [layer4 setHitTestsAsOpaque:1];

      traitOverrides = [(ZWSlugCollapsingRingView *)v4 traitOverrides];
      [traitOverrides setUserInterfaceStyle:2];

      [(ZWSlugCollapsingRingView *)v4 ax_setWantsGlassAppearance:1];
    }

    v13 = objc_alloc_init(UIImageView);
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setHidden:1];
    [(ZWSlugCollapsingRingView *)v4 setSpeakFingerImageView:v13];
    contentView = [(ZWSlugCollapsingRingView *)v4 contentView];
    speakFingerImageView = [(ZWSlugCollapsingRingView *)v4 speakFingerImageView];
    [contentView addSubview:speakFingerImageView];

    layer5 = [(ZWSlugCollapsingRingView *)v4 layer];
    [layer5 cornerRadius];
    [(ZWSlugCollapsingRingView *)v4 _setContinuousCornerRadius:?];

    centerXAnchor = [(ZWSlugCollapsingRingView *)v4 centerXAnchor];
    speakFingerImageView2 = [(ZWSlugCollapsingRingView *)v4 speakFingerImageView];
    centerXAnchor2 = [speakFingerImageView2 centerXAnchor];
    v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v28[0] = v19;
    centerYAnchor = [(ZWSlugCollapsingRingView *)v4 centerYAnchor];
    speakFingerImageView3 = [(ZWSlugCollapsingRingView *)v4 speakFingerImageView];
    centerYAnchor2 = [speakFingerImageView3 centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v28[1] = v23;
    v24 = [NSArray arrayWithObjects:v28 count:2];
    [NSLayoutConstraint activateConstraints:v24];

    [(ZWSlugCollapsingRingView *)v4 setShouldUseContinuousCornerRadius:1];
  }

  return v4;
}

- (double)_cornerRadiusForExpandedRing
{
  traitCollection = [(ZWSlugCollapsingRingView *)self traitCollection];
  [traitCollection displayCornerRadius];
  if (v4 <= 0.0)
  {
    v7 = 7.8;
  }

  else
  {
    traitCollection2 = [(ZWSlugCollapsingRingView *)self traitCollection];
    [traitCollection2 displayCornerRadius];
    v7 = v6 / 5.0;
  }

  return v7;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = ZWSlugCollapsingRingView;
  [(ZWSlugCollapsingRingView *)&v22 layoutSubviews];
  layer = [(ZWSlugCollapsingRingView *)self layer];
  [layer cornerRadius];
  v5 = v4;

  if (v5 <= 0.0)
  {
    if ([(ZWSlugCollapsingRingView *)self shouldUseContinuousCornerRadius])
    {
      [(ZWSlugCollapsingRingView *)self bounds];
      v12 = v11 * 0.5;
    }

    else
    {
      [(ZWSlugCollapsingRingView *)self _cornerRadiusForExpandedRing];
      v12 = v17;
    }

    layer2 = [(ZWSlugCollapsingRingView *)self layer];
    [layer2 setCornerRadius:v12];

    layer3 = [(ZWSlugCollapsingRingView *)self layer];
    [layer3 cornerRadius];
    [(ZWSlugCollapsingRingView *)self _setContinuousCornerRadius:?];
  }

  else
  {
    layer3 = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    layer4 = [(ZWSlugCollapsingRingView *)self layer];
    [layer4 cornerRadius];
    v8 = [NSNumber numberWithDouble:?];
    [layer3 setFromValue:v8];

    if ([(ZWSlugCollapsingRingView *)self shouldUseContinuousCornerRadius])
    {
      [(ZWSlugCollapsingRingView *)self bounds];
      v10 = v9 * 0.5;
    }

    else
    {
      [(ZWSlugCollapsingRingView *)self _cornerRadiusForExpandedRing];
    }

    v13 = [NSNumber numberWithDouble:v10];
    [layer3 setToValue:v13];

    [layer3 setDuration:ZWDefaultZoomAnimationDuration()];
    layer5 = [(ZWSlugCollapsingRingView *)self layer];
    [layer5 addAnimation:layer3 forKey:@"ZWCornerRadius"];

    if ([(ZWSlugCollapsingRingView *)self shouldUseContinuousCornerRadius])
    {
      [(ZWSlugCollapsingRingView *)self bounds];
      v16 = v15 * 0.5;
    }

    else
    {
      [(ZWSlugCollapsingRingView *)self _cornerRadiusForExpandedRing];
      v16 = v19;
    }

    layer6 = [(ZWSlugCollapsingRingView *)self layer];
    [layer6 setCornerRadius:v16];

    layer7 = [(ZWSlugCollapsingRingView *)self layer];
    [layer7 cornerRadius];
    [(ZWSlugCollapsingRingView *)self _setContinuousCornerRadius:?];
  }
}

@end