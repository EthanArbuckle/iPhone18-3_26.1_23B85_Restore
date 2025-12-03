@interface ARCoachingFrame
- (ARCoachingFrame)initWithFrame:(id)frame;
@end

@implementation ARCoachingFrame

- (ARCoachingFrame)initWithFrame:(id)frame
{
  frameCopy = frame;
  v15.receiver = self;
  v15.super_class = ARCoachingFrame;
  v5 = [(ARCoachingFrame *)&v15 init];
  if (v5)
  {
    camera = [frameCopy camera];
    camera = v5->_camera;
    v5->_camera = camera;

    [frameCopy timestamp];
    v5->_timestamp = v8;
    geoTrackingStatus = [frameCopy geoTrackingStatus];
    geoTrackingStatus = v5->_geoTrackingStatus;
    v5->_geoTrackingStatus = geoTrackingStatus;

    anchors = [frameCopy anchors];
    anchors = v5->_anchors;
    v5->_anchors = anchors;

    if ([frameCopy deviceOrientation])
    {
      if ([frameCopy deviceOrientation] == 3)
      {
        v13 = 4;
      }

      else if ([frameCopy deviceOrientation] == 4)
      {
        v13 = 3;
      }

      else if ([frameCopy deviceOrientation] == 2)
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