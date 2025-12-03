@interface MKFitnessRAPReport
- (id)initForRunningTrackIssue:(unint64_t)issue trackCoordinate:(CLLocationCoordinate2D)coordinate trackFeatureID:(id)d nameOfTrack:(id)track numberOfLanes:(id)lanes comment:(id)comment;
- (int)optionKeyForTrackIssue:(unint64_t)issue;
@end

@implementation MKFitnessRAPReport

- (int)optionKeyForTrackIssue:(unint64_t)issue
{
  if (issue - 1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_1A30F7F18[issue - 1];
  }
}

- (id)initForRunningTrackIssue:(unint64_t)issue trackCoordinate:(CLLocationCoordinate2D)coordinate trackFeatureID:(id)d nameOfTrack:(id)track numberOfLanes:(id)lanes comment:(id)comment
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  dCopy = d;
  trackCopy = track;
  lanesCopy = lanes;
  commentCopy = comment;
  v23.receiver = self;
  v23.super_class = MKFitnessRAPReport;
  v19 = [(MKFitnessRAPReport *)&v23 init];
  if (v19)
  {
    v20 = [objc_alloc(MEMORY[0x1E69A23F0]) initForRunningTrackIssue:-[MKFitnessRAPReport optionKeyForTrackIssue:](v19 trackCoordinateLatitude:"optionKeyForTrackIssue:" trackCoordinateLongitude:issue) trackFeatureID:dCopy nameOfTrack:trackCopy numberOfLanes:lanesCopy comment:{commentCopy, latitude, longitude}];
    requestParameters = v19->_requestParameters;
    v19->_requestParameters = v20;
  }

  return v19;
}

@end