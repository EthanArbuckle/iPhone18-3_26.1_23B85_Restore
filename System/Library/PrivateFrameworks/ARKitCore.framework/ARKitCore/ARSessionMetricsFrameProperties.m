@interface ARSessionMetricsFrameProperties
- (ARSessionMetricsFrameProperties)initWithFrame:(id)a3;
@end

@implementation ARSessionMetricsFrameProperties

- (ARSessionMetricsFrameProperties)initWithFrame:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ARSessionMetricsFrameProperties;
  v5 = [(ARSessionMetricsFrameProperties *)&v19 init];
  if (v5)
  {
    v6 = [v4 camera];
    camera = v5->_camera;
    v5->_camera = v6;

    v8 = [v4 worldTrackingState];
    worldTrackingState = v5->_worldTrackingState;
    v5->_worldTrackingState = v8;

    v10 = [v4 anchors];
    anchors = v5->_anchors;
    v5->_anchors = v10;

    v12 = [v4 geoTrackingStatus];
    geoTrackingStatus = v5->_geoTrackingStatus;
    v5->_geoTrackingStatus = v12;

    v14 = [v4 location];
    location = v5->_location;
    v5->_location = v14;

    v16 = [v4 vlState];
    vlState = v5->_vlState;
    v5->_vlState = v16;
  }

  return v5;
}

@end