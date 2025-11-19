@interface CarUserLocationView
- (BOOL)_isLocationStale:(id)a3;
- (CarUserLocationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
@end

@implementation CarUserLocationView

- (BOOL)_isLocationStale:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CarUserLocationView;
  v5 = [(CarUserLocationView *)&v9 _isLocationStale:v4];
  if (!v5 && ![(CarUserLocationView *)self overrideIsStale])
  {
    [v4 course];
    if (v6 != -1.0 && self->super._mode == 1)
    {
      [(CarUserLocationView *)self setOverrideIsStale:1];
    }
  }

  if (self->super._mode == 1)
  {
    [v4 course];
    if (v7 != -1.0 && [(CarUserLocationView *)self overrideIsStale])
    {
      v5 = 0;
    }
  }

  return v5;
}

- (CarUserLocationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = CarUserLocationView;
  v4 = [(UserLocationView *)&v9 initWithAnnotation:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CarUserLocationView *)v4 setCanShowCallout:0];
    [(CarUserLocationView *)v5 setCanShowHeadingIndicator:0];
    v6 = +[UIColor _maps_keyColor];
    [(CarUserLocationView *)v5 setTintColor:v6];

    LODWORD(v7) = 1.0;
    [(CarUserLocationView *)v5 setZPriority:v7];
    [(CarUserLocationView *)v5 setAccessibilityIdentifier:@"CarUserLocationView"];
  }

  return v5;
}

@end