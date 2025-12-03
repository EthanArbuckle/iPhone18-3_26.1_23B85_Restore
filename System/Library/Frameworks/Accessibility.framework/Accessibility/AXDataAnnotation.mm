@interface AXDataAnnotation
- (AXDataAnnotation)initWithLocation:(id)location label:(id)label;
@end

@implementation AXDataAnnotation

- (AXDataAnnotation)initWithLocation:(id)location label:(id)label
{
  locationCopy = location;
  v10.receiver = self;
  v10.super_class = AXDataAnnotation;
  v7 = [(AXDataAnnotation *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_location, location);
  }

  return v8;
}

@end