@interface CLMKStyledPointAnnotation
- (CLMKStyledPointAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(id)title subtitle:(id)subtitle styleAttributes:(id)attributes;
@end

@implementation CLMKStyledPointAnnotation

- (CLMKStyledPointAnnotation)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(id)title subtitle:(id)subtitle styleAttributes:(id)attributes
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v13.receiver = self;
  v13.super_class = CLMKStyledPointAnnotation;
  attributesCopy = attributes;
  longitude = [(CLMKStyledPointAnnotation *)&v13 initWithCoordinate:title title:subtitle subtitle:latitude, longitude];
  [(CLMKStyledPointAnnotation *)longitude setStyleAttributes:attributesCopy, v13.receiver, v13.super_class];

  return longitude;
}

@end