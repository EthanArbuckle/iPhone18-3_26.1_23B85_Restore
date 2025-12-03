@interface StaleMapEffectView
+ (id)dimmingOverlayForView:(id)view;
- (StaleMapEffectView)initWithMapView:(id)view applyDimmingEffect:(BOOL)effect;
- (id)_mapRepresentationImage:(id)image;
- (void)_addDimmingEffect;
- (void)_updateImage;
- (void)setAlpha:(double)alpha;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation StaleMapEffectView

- (void)_addDimmingEffect
{
  v3 = [StaleMapEffectView dimmingOverlayForView:self];
  [(StaleMapEffectView *)self addSubview:v3];
}

- (id)_mapRepresentationImage:(id)image
{
  imageCopy = image;
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
  v16 = imageCopy;
  v10 = v5;
  v11 = imageCopy;
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

  _mapSnapshotImage = [(StaleMapEffectView *)self _mapSnapshotImage];
  [(StaleMapEffectView *)self setImage:_mapSnapshotImage];
}

- (void)setAlpha:(double)alpha
{
  if (alpha > 0.0)
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
  [(StaleMapEffectView *)&v6 setAlpha:alpha];
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  if (superviewCopy)
  {
    v7 = superviewCopy;
    image = [(StaleMapEffectView *)self image];
    if (image)
    {
    }

    else
    {
      [(StaleMapEffectView *)self alpha];
      superviewCopy = v7;
      if (v6 <= 0.0)
      {
        goto LABEL_7;
      }

      [(StaleMapEffectView *)self _updateImage];
    }

    superviewCopy = v7;
  }

LABEL_7:
}

- (StaleMapEffectView)initWithMapView:(id)view applyDimmingEffect:(BOOL)effect
{
  effectCopy = effect;
  viewCopy = view;
  [viewCopy bounds];
  v11.receiver = self;
  v11.super_class = StaleMapEffectView;
  v8 = [(StaleMapEffectView *)&v11 initWithFrame:?];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapView, view);
    v9->_applyDimmingEffect = effectCopy;
    [(StaleMapEffectView *)v9 setAutoresizingMask:18];
    if (effectCopy)
    {
      [(StaleMapEffectView *)v9 _addDimmingEffect];
    }
  }

  return v9;
}

+ (id)dimmingOverlayForView:(id)view
{
  viewCopy = view;
  v4 = [UIView alloc];
  [viewCopy bounds];
  v5 = [v4 initWithFrame:?];
  v6 = +[UIColor blackColor];
  [v5 setBackgroundColor:v6];

  [v5 setAutoresizingMask:18];
  traitCollection = [viewCopy traitCollection];
  +[StaleMapEffectView _dimmingAlphaForUserInterfaceStyle:](StaleMapEffectView, "_dimmingAlphaForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);
  [v5 setAlpha:?];

  Integer = GEOConfigGetInteger();
  v9 = [UIVisualEffectView alloc];
  v10 = [UIBlurEffect effectWithStyle:Integer];
  v11 = [v9 initWithEffect:v10];

  [v11 setAutoresizingMask:18];
  [viewCopy bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v11 setFrame:{v13, v15, v17, v19}];
  contentView = [v11 contentView];
  [contentView addSubview:v5];

  return v11;
}

@end