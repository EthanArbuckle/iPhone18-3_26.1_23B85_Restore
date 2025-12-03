@interface ARSessionMetricsFrameProperties
- (ARSessionMetricsFrameProperties)initWithFrame:(id)frame;
@end

@implementation ARSessionMetricsFrameProperties

- (ARSessionMetricsFrameProperties)initWithFrame:(id)frame
{
  frameCopy = frame;
  v19.receiver = self;
  v19.super_class = ARSessionMetricsFrameProperties;
  v5 = [(ARSessionMetricsFrameProperties *)&v19 init];
  if (v5)
  {
    camera = [frameCopy camera];
    camera = v5->_camera;
    v5->_camera = camera;

    worldTrackingState = [frameCopy worldTrackingState];
    worldTrackingState = v5->_worldTrackingState;
    v5->_worldTrackingState = worldTrackingState;

    anchors = [frameCopy anchors];
    anchors = v5->_anchors;
    v5->_anchors = anchors;

    geoTrackingStatus = [frameCopy geoTrackingStatus];
    geoTrackingStatus = v5->_geoTrackingStatus;
    v5->_geoTrackingStatus = geoTrackingStatus;

    location = [frameCopy location];
    location = v5->_location;
    v5->_location = location;

    vlState = [frameCopy vlState];
    vlState = v5->_vlState;
    v5->_vlState = vlState;
  }

  return v5;
}

@end