@interface AXDataAnnotation
- (AXDataAnnotation)initWithLocation:(id)a3 label:(id)a4;
@end

@implementation AXDataAnnotation

- (AXDataAnnotation)initWithLocation:(id)a3 label:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = AXDataAnnotation;
  v7 = [(AXDataAnnotation *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_location, a3);
  }

  return v8;
}

@end