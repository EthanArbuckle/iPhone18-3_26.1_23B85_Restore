@interface MKRouteStep
- (id)_initWithGEOComposedRouteStep:(id)step instructions:(id)instructions transportType:(unint64_t)type polyline:(id)polyline;
@end

@implementation MKRouteStep

- (id)_initWithGEOComposedRouteStep:(id)step instructions:(id)instructions transportType:(unint64_t)type polyline:(id)polyline
{
  stepCopy = step;
  instructionsCopy = instructions;
  polylineCopy = polyline;
  v17.receiver = self;
  v17.super_class = MKRouteStep;
  v14 = [(MKRouteStep *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_geoComposedRouteStep, step);
    objc_storeStrong(&v15->_polyline, polyline);
    v15->_transportType = type;
    objc_storeStrong(&v15->_instructions, instructions);
  }

  return v15;
}

@end