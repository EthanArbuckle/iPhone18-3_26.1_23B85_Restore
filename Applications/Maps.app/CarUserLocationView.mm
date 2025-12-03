@interface CarUserLocationView
- (BOOL)_isLocationStale:(id)stale;
- (CarUserLocationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
@end

@implementation CarUserLocationView

- (BOOL)_isLocationStale:(id)stale
{
  staleCopy = stale;
  v9.receiver = self;
  v9.super_class = CarUserLocationView;
  v5 = [(CarUserLocationView *)&v9 _isLocationStale:staleCopy];
  if (!v5 && ![(CarUserLocationView *)self overrideIsStale])
  {
    [staleCopy course];
    if (v6 != -1.0 && self->super._mode == 1)
    {
      [(CarUserLocationView *)self setOverrideIsStale:1];
    }
  }

  if (self->super._mode == 1)
  {
    [staleCopy course];
    if (v7 != -1.0 && [(CarUserLocationView *)self overrideIsStale])
    {
      v5 = 0;
    }
  }

  return v5;
}

- (CarUserLocationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CarUserLocationView;
  v4 = [(UserLocationView *)&v9 initWithAnnotation:annotation reuseIdentifier:identifier];
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