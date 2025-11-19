@interface MKFitnessRAPReport
- (id)initForRunningTrackIssue:(unint64_t)a3 trackCoordinate:(CLLocationCoordinate2D)a4 trackFeatureID:(id)a5 nameOfTrack:(id)a6 numberOfLanes:(id)a7 comment:(id)a8;
- (int)optionKeyForTrackIssue:(unint64_t)a3;
@end

@implementation MKFitnessRAPReport

- (int)optionKeyForTrackIssue:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_1A30F7F18[a3 - 1];
  }
}

- (id)initForRunningTrackIssue:(unint64_t)a3 trackCoordinate:(CLLocationCoordinate2D)a4 trackFeatureID:(id)a5 nameOfTrack:(id)a6 numberOfLanes:(id)a7 comment:(id)a8
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v23.receiver = self;
  v23.super_class = MKFitnessRAPReport;
  v19 = [(MKFitnessRAPReport *)&v23 init];
  if (v19)
  {
    v20 = [objc_alloc(MEMORY[0x1E69A23F0]) initForRunningTrackIssue:-[MKFitnessRAPReport optionKeyForTrackIssue:](v19 trackCoordinateLatitude:"optionKeyForTrackIssue:" trackCoordinateLongitude:a3) trackFeatureID:v15 nameOfTrack:v16 numberOfLanes:v17 comment:{v18, latitude, longitude}];
    requestParameters = v19->_requestParameters;
    v19->_requestParameters = v20;
  }

  return v19;
}

@end