@interface StaleMapEffectView
+ (id)dimmingOverlayForView:(id)a3;
- (StaleMapEffectView)initWithMapView:(id)a3 applyDimmingEffect:(BOOL)a4;
- (id)_mapRepresentationImage:(id)a3;
- (void)_addDimmingEffect;
- (void)_updateImage;
- (void)setAlpha:(double)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation StaleMapEffectView

- (void)_addDimmingEffect
{
  v3 = [StaleMapEffectView dimmingOverlayForView:self];
  [(StaleMapEffectView *)self addSubview:v3];
}

- (id)_mapRepresentationImage:(id)a3
{
  v4 = a3;
  v5 = self->_mapView;
  v6 = objc_alloc_init(UIGraphicsImageRendererFormat);
  v7 = +[UIScreen mainScreen];
  [v7 scale];
  [v6 setScale:?];

  [v6 setOpaque:1];
  [v6 setPreferredRange:2];
  v8 = [UIGraphicsImageRenderer alloc];
  [(MKMapView *)v5 bounds];
  v9 = [v8 initWithBounds:v6 format:?];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100D9E874;
  v14[3] = &unk_101653E58;
  v15 = v5;
  v16 = v4;
  v10 = v5;
  v11 = v4;
  v12 = [v9 imageWithActions:v14];

  return v12;
}

- (void)_updateImage
{
  v3 = sub_10000B11C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "stale map effect fetching new snapshot", v5, 2u);
  }

  v4 = [(StaleMapEffectView *)self _mapSnapshotImage];
  [(StaleMapEffectView *)self setImage:v4];
}

- (void)setAlpha:(double)a3
{
  if (a3 > 0.0)
  {
    [(StaleMapEffectView *)self alpha];
    if (fabs(v5) <= 2.22044605e-16)
    {
      [(MKMapView *)self->_mapView _forceFrame];
      [(StaleMapEffectView *)self _updateImage];
    }
  }

  v6.receiver = self;
  v6.super_class = StaleMapEffectView;
  [(StaleMapEffectView *)&v6 setAlpha:a3];
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(StaleMapEffectView *)self image];
    if (v5)
    {
    }

    else
    {
      [(StaleMapEffectView *)self alpha];
      v4 = v7;
      if (v6 <= 0.0)
      {
        goto LABEL_7;
      }

      [(StaleMapEffectView *)self _updateImage];
    }

    v4 = v7;
  }

LABEL_7:
}

- (StaleMapEffectView)initWithMapView:(id)a3 applyDimmingEffect:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  [v7 bounds];
  v11.receiver = self;
  v11.super_class = StaleMapEffectView;
  v8 = [(StaleMapEffectView *)&v11 initWithFrame:?];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapView, a3);
    v9->_applyDimmingEffect = v4;
    [(StaleMapEffectView *)v9 setAutoresizingMask:18];
    if (v4)
    {
      [(StaleMapEffectView *)v9 _addDimmingEffect];
    }
  }

  return v9;
}

+ (id)dimmingOverlayForView:(id)a3
{
  v3 = a3;
  v4 = [UIView alloc];
  [v3 bounds];
  v5 = [v4 initWithFrame:?];
  v6 = +[UIColor blackColor];
  [v5 setBackgroundColor:v6];

  [v5 setAutoresizingMask:18];
  v7 = [v3 traitCollection];
  +[StaleMapEffectView _dimmingAlphaForUserInterfaceStyle:](StaleMapEffectView, "_dimmingAlphaForUserInterfaceStyle:", [v7 userInterfaceStyle]);
  [v5 setAlpha:?];

  Integer = GEOConfigGetInteger();
  v9 = [UIVisualEffectView alloc];
  v10 = [UIBlurEffect effectWithStyle:Integer];
  v11 = [v9 initWithEffect:v10];

  [v11 setAutoresizingMask:18];
  [v3 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v11 setFrame:{v13, v15, v17, v19}];
  v20 = [v11 contentView];
  [v20 addSubview:v5];

  return v11;
}

@end