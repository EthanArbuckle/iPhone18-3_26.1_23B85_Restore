@interface ARCoachingFrame
- (ARCoachingFrame)initWithFrame:(id)a3;
@end

@implementation ARCoachingFrame

- (ARCoachingFrame)initWithFrame:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ARCoachingFrame;
  v5 = [(ARCoachingFrame *)&v15 init];
  if (v5)
  {
    v6 = [v4 camera];
    camera = v5->_camera;
    v5->_camera = v6;

    [v4 timestamp];
    v5->_timestamp = v8;
    v9 = [v4 geoTrackingStatus];
    geoTrackingStatus = v5->_geoTrackingStatus;
    v5->_geoTrackingStatus = v9;

    v11 = [v4 anchors];
    anchors = v5->_anchors;
    v5->_anchors = v11;

    if ([v4 deviceOrientation])
    {
      if ([v4 deviceOrientation] == 3)
      {
        v13 = 4;
      }

      else if ([v4 deviceOrientation] == 4)
      {
        v13 = 3;
      }

      else if ([v4 deviceOrientation] == 2)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      v5->_interfaceOrientation = v13;
    }

    else
    {
      v5->_interfaceOrientation = 0;
    }
  }

  return v5;
}

@end