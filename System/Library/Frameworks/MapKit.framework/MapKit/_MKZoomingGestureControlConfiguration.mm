@interface _MKZoomingGestureControlConfiguration
+ (id)configurationForCarPlay;
+ (id)configurationForDigitalCrown;
+ (id)defaultConfiguration;
- (_MKZoomingGestureControlConfiguration)initWithDecelerationThreshold:(double)threshold maximumZoomInVelocity:(double)velocity maximumZoomOutVelocity:(double)outVelocity zoomOutFrictionScale:(double)scale zoomDraggingResistance:(double)resistance;
@end

@implementation _MKZoomingGestureControlConfiguration

+ (id)defaultConfiguration
{
  v2 = [[_MKZoomingGestureControlConfiguration alloc] initWithDecelerationThreshold:1.5 maximumZoomInVelocity:10.0 maximumZoomOutVelocity:-1.5 zoomOutFrictionScale:2.5 zoomDraggingResistance:200.0];

  return v2;
}

- (_MKZoomingGestureControlConfiguration)initWithDecelerationThreshold:(double)threshold maximumZoomInVelocity:(double)velocity maximumZoomOutVelocity:(double)outVelocity zoomOutFrictionScale:(double)scale zoomDraggingResistance:(double)resistance
{
  v13.receiver = self;
  v13.super_class = _MKZoomingGestureControlConfiguration;
  result = [(_MKZoomingGestureControlConfiguration *)&v13 init];
  if (result)
  {
    result->_decelerationThreshold = threshold;
    result->_maximumZoomInVelocity = velocity;
    result->_maximumZoomOutVelocity = outVelocity;
    result->_zoomOutFrictionScale = scale;
    result->_zoomDraggingResistance = resistance;
  }

  return result;
}

+ (id)configurationForDigitalCrown
{
  v2 = [[_MKZoomingGestureControlConfiguration alloc] initWithDecelerationThreshold:100.0 maximumZoomInVelocity:1.0 maximumZoomOutVelocity:-1.0 zoomOutFrictionScale:4.5];

  return v2;
}

+ (id)configurationForCarPlay
{
  v2 = [[_MKZoomingGestureControlConfiguration alloc] initWithDecelerationThreshold:1.5 maximumZoomInVelocity:10.0 maximumZoomOutVelocity:-1.5 zoomOutFrictionScale:2.5 zoomDraggingResistance:200.0];

  return v2;
}

@end