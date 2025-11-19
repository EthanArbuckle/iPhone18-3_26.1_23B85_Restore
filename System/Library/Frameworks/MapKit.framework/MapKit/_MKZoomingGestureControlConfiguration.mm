@interface _MKZoomingGestureControlConfiguration
+ (id)configurationForCarPlay;
+ (id)configurationForDigitalCrown;
+ (id)defaultConfiguration;
- (_MKZoomingGestureControlConfiguration)initWithDecelerationThreshold:(double)a3 maximumZoomInVelocity:(double)a4 maximumZoomOutVelocity:(double)a5 zoomOutFrictionScale:(double)a6 zoomDraggingResistance:(double)a7;
@end

@implementation _MKZoomingGestureControlConfiguration

+ (id)defaultConfiguration
{
  v2 = [[_MKZoomingGestureControlConfiguration alloc] initWithDecelerationThreshold:1.5 maximumZoomInVelocity:10.0 maximumZoomOutVelocity:-1.5 zoomOutFrictionScale:2.5 zoomDraggingResistance:200.0];

  return v2;
}

- (_MKZoomingGestureControlConfiguration)initWithDecelerationThreshold:(double)a3 maximumZoomInVelocity:(double)a4 maximumZoomOutVelocity:(double)a5 zoomOutFrictionScale:(double)a6 zoomDraggingResistance:(double)a7
{
  v13.receiver = self;
  v13.super_class = _MKZoomingGestureControlConfiguration;
  result = [(_MKZoomingGestureControlConfiguration *)&v13 init];
  if (result)
  {
    result->_decelerationThreshold = a3;
    result->_maximumZoomInVelocity = a4;
    result->_maximumZoomOutVelocity = a5;
    result->_zoomOutFrictionScale = a6;
    result->_zoomDraggingResistance = a7;
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