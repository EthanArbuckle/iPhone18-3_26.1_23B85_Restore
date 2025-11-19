@interface ZWSlugCollapsingRingView
- (ZWSlugCollapsingRingView)initWithFrame:(CGRect)a3;
- (double)_cornerRadiusForExpandedRing;
- (void)layoutSubviews;
@end

@implementation ZWSlugCollapsingRingView

- (ZWSlugCollapsingRingView)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = ZWSlugCollapsingRingView;
  v3 = [(ZWSlugCollapsingRingView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(ZWSlugCollapsingRingView *)v3 layer];
    [v5 setBorderWidth:2.0];

    v6 = [(ZWSlugCollapsingRingView *)v4 layer];
    [v6 setCornerCurve:kCACornerCurveContinuous];

    v7 = +[UIColor whiteColor];
    v8 = [v7 CGColor];
    v9 = [(ZWSlugCollapsingRingView *)v4 layer];
    [v9 setBorderColor:v8];

    v10 = [UIBlurEffect effectWithStyle:19];
    [(ZWSlugCollapsingRingView *)v4 setEffect:v10];

    if (_UISolariumEnabled())
    {
      [(ZWSlugCollapsingRingView *)v4 setEffect:0];
      v11 = [(ZWSlugCollapsingRingView *)v4 layer];
      [v11 setHitTestsAsOpaque:1];

      v12 = [(ZWSlugCollapsingRingView *)v4 traitOverrides];
      [v12 setUserInterfaceStyle:2];

      [(ZWSlugCollapsingRingView *)v4 ax_setWantsGlassAppearance:1];
    }

    v13 = objc_alloc_init(UIImageView);
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setHidden:1];
    [(ZWSlugCollapsingRingView *)v4 setSpeakFingerImageView:v13];
    v14 = [(ZWSlugCollapsingRingView *)v4 contentView];
    v15 = [(ZWSlugCollapsingRingView *)v4 speakFingerImageView];
    [v14 addSubview:v15];

    v16 = [(ZWSlugCollapsingRingView *)v4 layer];
    [v16 cornerRadius];
    [(ZWSlugCollapsingRingView *)v4 _setContinuousCornerRadius:?];

    v26 = [(ZWSlugCollapsingRingView *)v4 centerXAnchor];
    v17 = [(ZWSlugCollapsingRingView *)v4 speakFingerImageView];
    v18 = [v17 centerXAnchor];
    v19 = [v26 constraintEqualToAnchor:v18];
    v28[0] = v19;
    v20 = [(ZWSlugCollapsingRingView *)v4 centerYAnchor];
    v21 = [(ZWSlugCollapsingRingView *)v4 speakFingerImageView];
    v22 = [v21 centerYAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v28[1] = v23;
    v24 = [NSArray arrayWithObjects:v28 count:2];
    [NSLayoutConstraint activateConstraints:v24];

    [(ZWSlugCollapsingRingView *)v4 setShouldUseContinuousCornerRadius:1];
  }

  return v4;
}

- (double)_cornerRadiusForExpandedRing
{
  v3 = [(ZWSlugCollapsingRingView *)self traitCollection];
  [v3 displayCornerRadius];
  if (v4 <= 0.0)
  {
    v7 = 7.8;
  }

  else
  {
    v5 = [(ZWSlugCollapsingRingView *)self traitCollection];
    [v5 displayCornerRadius];
    v7 = v6 / 5.0;
  }

  return v7;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = ZWSlugCollapsingRingView;
  [(ZWSlugCollapsingRingView *)&v22 layoutSubviews];
  v3 = [(ZWSlugCollapsingRingView *)self layer];
  [v3 cornerRadius];
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

    v18 = [(ZWSlugCollapsingRingView *)self layer];
    [v18 setCornerRadius:v12];

    v6 = [(ZWSlugCollapsingRingView *)self layer];
    [v6 cornerRadius];
    [(ZWSlugCollapsingRingView *)self _setContinuousCornerRadius:?];
  }

  else
  {
    v6 = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    v7 = [(ZWSlugCollapsingRingView *)self layer];
    [v7 cornerRadius];
    v8 = [NSNumber numberWithDouble:?];
    [v6 setFromValue:v8];

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
    [v6 setToValue:v13];

    [v6 setDuration:ZWDefaultZoomAnimationDuration()];
    v14 = [(ZWSlugCollapsingRingView *)self layer];
    [v14 addAnimation:v6 forKey:@"ZWCornerRadius"];

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

    v20 = [(ZWSlugCollapsingRingView *)self layer];
    [v20 setCornerRadius:v16];

    v21 = [(ZWSlugCollapsingRingView *)self layer];
    [v21 cornerRadius];
    [(ZWSlugCollapsingRingView *)self _setContinuousCornerRadius:?];
  }
}

@end