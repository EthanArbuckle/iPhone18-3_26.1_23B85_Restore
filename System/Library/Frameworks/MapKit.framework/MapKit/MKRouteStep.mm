@interface MKRouteStep
- (id)_initWithGEOComposedRouteStep:(id)a3 instructions:(id)a4 transportType:(unint64_t)a5 polyline:(id)a6;
@end

@implementation MKRouteStep

- (id)_initWithGEOComposedRouteStep:(id)a3 instructions:(id)a4 transportType:(unint64_t)a5 polyline:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = MKRouteStep;
  v14 = [(MKRouteStep *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_geoComposedRouteStep, a3);
    objc_storeStrong(&v15->_polyline, a6);
    v15->_transportType = a5;
    objc_storeStrong(&v15->_instructions, a4);
  }

  return v15;
}

@end