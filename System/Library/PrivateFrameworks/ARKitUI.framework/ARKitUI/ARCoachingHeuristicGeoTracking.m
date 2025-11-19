@interface ARCoachingHeuristicGeoTracking
- (void)updateWithFrame:(id)a3 cache:(id)a4;
@end

@implementation ARCoachingHeuristicGeoTracking

- (void)updateWithFrame:(id)a3 cache:(id)a4
{
  v8 = a3;
  v5 = [v8 geoTrackingStatus];

  if (v5)
  {
    v6 = [v8 geoTrackingStatus];
    v7 = [v6 state];

    if (v7 <= 3)
    {
      self->_requirements = qword_23D3DC500[v7];
    }
  }
}

@end