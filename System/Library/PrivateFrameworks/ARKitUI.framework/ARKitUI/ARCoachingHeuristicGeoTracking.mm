@interface ARCoachingHeuristicGeoTracking
- (void)updateWithFrame:(id)frame cache:(id)cache;
@end

@implementation ARCoachingHeuristicGeoTracking

- (void)updateWithFrame:(id)frame cache:(id)cache
{
  frameCopy = frame;
  geoTrackingStatus = [frameCopy geoTrackingStatus];

  if (geoTrackingStatus)
  {
    geoTrackingStatus2 = [frameCopy geoTrackingStatus];
    state = [geoTrackingStatus2 state];

    if (state <= 3)
    {
      self->_requirements = qword_23D3DC500[state];
    }
  }
}

@end