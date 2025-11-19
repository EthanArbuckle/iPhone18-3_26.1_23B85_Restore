@interface CLMKStyledPointAnnotation
- (CLMKStyledPointAnnotation)initWithCoordinate:(CLLocationCoordinate2D)a3 title:(id)a4 subtitle:(id)a5 styleAttributes:(id)a6;
@end

@implementation CLMKStyledPointAnnotation

- (CLMKStyledPointAnnotation)initWithCoordinate:(CLLocationCoordinate2D)a3 title:(id)a4 subtitle:(id)a5 styleAttributes:(id)a6
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v13.receiver = self;
  v13.super_class = CLMKStyledPointAnnotation;
  v10 = a6;
  v11 = [(CLMKStyledPointAnnotation *)&v13 initWithCoordinate:a4 title:a5 subtitle:latitude, longitude];
  [(CLMKStyledPointAnnotation *)v11 setStyleAttributes:v10, v13.receiver, v13.super_class];

  return v11;
}

@end