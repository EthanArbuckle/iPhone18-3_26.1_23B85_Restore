@interface NTKAstronomyRichComplicationContentView
- (id)initForDevice:(id)device family:(int64_t)family diameter:(double)diameter;
- (void)_hideLocationDot;
- (void)_startAnimating;
- (void)_stopAnimating;
- (void)astronomyVistaViewWillDisplay:(id)display forTime:(double)time;
- (void)handleOrdinaryScreenWake;
- (void)handleTemplateMetadata:(id)metadata reason:(int64_t)reason;
- (void)handleWristRaiseScreenWake;
- (void)layoutSubviews;
- (void)prepareWristRaiseAnimation;
@end

@implementation NTKAstronomyRichComplicationContentView

- (id)initForDevice:(id)device family:(int64_t)family diameter:(double)diameter
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = NTKAstronomyRichComplicationContentView;
  v10 = [(NTKAstronomyRichComplicationContentView *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
    v11->_family = family;
    v12 = [NUNIAstronomyVistaConfiguration defaultConfigurationWithDevice:deviceCopy];
    v13 = [[NUNIAstronomyVistaView alloc] initWithFrame:v12 configuration:{0.0, 0.0, diameter, diameter}];
    astronomyVistaView = v11->_astronomyVistaView;
    v11->_astronomyVistaView = v13;

    [(NUNIAstronomyVistaView *)v11->_astronomyVistaView setObserver:v11];
    [(NTKAstronomyRichComplicationContentView *)v11 addSubview:v11->_astronomyVistaView];
    [(NUNIAstronomyVistaView *)v11->_astronomyVistaView setOpaque:0];
    *(v11 + 64) |= 1u;
  }

  return v11;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKAstronomyRichComplicationContentView;
  [(NTKAstronomyRichComplicationContentView *)&v4 layoutSubviews];
  [(NTKAstronomyRichComplicationContentView *)self bounds];
  locationDot = self->_locationDot;
  CLKRectGetCenter();
  [(NUNIAstronomyLocationDot *)locationDot setCenter:?];
}

- (void)_hideLocationDot
{
  [(NUNIAstronomyLocationDot *)self->_locationDot stopAnimation];
  [(NUNIAstronomyLocationDot *)self->_locationDot setAlpha:0.0];
  locationDot = self->_locationDot;

  [(NUNIAstronomyLocationDot *)locationDot removeFromSuperview];
}

- (void)handleTemplateMetadata:(id)metadata reason:(int64_t)reason
{
  metadataCopy = metadata;
  v7 = [metadataCopy objectForKeyedSubscript:@"vista"];
  intValue = [v7 intValue];

  v9 = [metadataCopy objectForKeyedSubscript:@"entry date"];
  timelineDate = self->_timelineDate;
  self->_timelineDate = v9;

  v11 = [metadataCopy objectForKeyedSubscript:@"current location"];
  currentLocation = self->_currentLocation;
  self->_currentLocation = v11;

  v13 = [metadataCopy objectForKeyedSubscript:@"any location"];
  scene = [(NUNIAstronomyVistaView *)self->_astronomyVistaView scene];
  if (!scene)
  {
    if (intValue == 2)
    {
      if (self->_family == 12)
      {
        v15 = 16499712;
      }

      else
      {
        v15 = 771072;
      }
    }

    else if (intValue == 1)
    {
      v15 = 24;
    }

    else
    {
      v15 = 8;
    }

    objc_initWeak(&location, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_2C88;
    v21[3] = &unk_C468;
    objc_copyWeak(v22, &location);
    v22[1] = intValue;
    v16 = objc_retainBlock(v21);
    scene = [[NUNIScene alloc] initWithSphereoids:v15 currentDateBlock:v16];
    [scene setBackgroundType:1];
    [scene setCollectionType:self->_family != 12];
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView setScene:scene];

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }

  [(NUNIAstronomyVistaView *)self->_astronomyVistaView applyVista:intValue transitionStyle:0];
  self->_vista = intValue;
  [(NTKAstronomyRichComplicationContentView *)self _startAnimating];
  v17 = [(NTKAstronomyRichComplicationContentView *)self _shouldAnimateWithTemplateUpdateReason:reason];
  if (reason > 1 || !self->_currentLocation || intValue)
  {
    [(NTKAstronomyRichComplicationContentView *)self _hideLocationDot];
    if (intValue)
    {
      goto LABEL_21;
    }
  }

  else if (self->_editing)
  {
    [(NTKAstronomyRichComplicationContentView *)self _hideLocationDot];
  }

  else
  {
    [(NTKAstronomyRichComplicationContentView *)self _showLocationDot];
  }

  v18 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView rotatable:0];
  v19 = self->_currentLocation;
  if (!v19)
  {
    v19 = v13;
  }

  [(CLLocation *)v19 coordinate];
  [v18 setHomeCoordinate:?];
  [v18 homeCoordinate];
  [v18 setCenterCoordinate:v17 animated:?];

LABEL_21:
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView updateSunLocationAnimated:v17];
  [(NTKAstronomyRichComplicationContentView *)self setNeedsLayout];
  if (*(self + 64) & ~v17)
  {
    v20 = 4;
  }

  else
  {
    v20 = 0;
  }

  *(self + 64) = *(self + 64) & 0xFB | v20;
}

- (void)astronomyVistaViewWillDisplay:(id)display forTime:(double)time
{
  if ((*(self + 64) & 4) != 0)
  {
    [(NTKAstronomyRichComplicationContentView *)self _stopAnimating:display];
  }
}

- (void)_startAnimating
{
  if ((*(self + 64) & 2) == 0)
  {
    *(self + 64) |= 2u;
    *(self + 64) &= ~4u;
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView startAnimation];
  }

  [(NTKDelayedBlock *)self->_stopAnimationDelayedBlock cancel];
  objc_initWeak(&location, self);
  v3 = [NTKDelayedBlock alloc];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2E64;
  v6[3] = &unk_C490;
  objc_copyWeak(&v7, &location);
  v4 = [v3 initWithDelay:v6 action:1.0];
  stopAnimationDelayedBlock = self->_stopAnimationDelayedBlock;
  self->_stopAnimationDelayedBlock = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_stopAnimating
{
  if ((*(self + 64) & 2) != 0)
  {
    *(self + 64) &= ~2u;
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView stopAnimation];
  }
}

- (void)prepareWristRaiseAnimation
{
  if (!self->_vista)
  {
    v4 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView rotatable:0];
    v3 = CLLocationCoordinate2DMake(0.0, 0.0);
    [v4 setCenterCoordinate:0 animated:{v3.latitude, v3.longitude}];
  }
}

- (void)handleOrdinaryScreenWake
{
  if (!self->_vista)
  {
    [(NTKAstronomyRichComplicationContentView *)self _startAnimating];
    v4 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView rotatable:0];
    [v4 homeCoordinate];
    [v4 setCenterCoordinate:1 animated:?];
  }
}

- (void)handleWristRaiseScreenWake
{
  if (!self->_vista)
  {
    [(NTKAstronomyRichComplicationContentView *)self _startAnimating];
    v4 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView rotatable:0];
    [v4 homeCoordinate];
    [v4 setCenterCoordinate:1 animated:?];
  }
}

@end