@interface GEOMuninViewState
- (GEOMuninViewState)initWithGEOPDMuninViewState:(id)state;
- (id)toGEOPDMuninViewState;
@end

@implementation GEOMuninViewState

- (id)toGEOPDMuninViewState
{
  v3 = objc_alloc_init(GEOPDMuninViewState);
  v4 = objc_alloc_init(GEOPDCameraFrame);
  cameraFrame = [(GEOMuninViewState *)self cameraFrame];
  [cameraFrame altitude];
  [v4 setAltitude:?];

  cameraFrame2 = [(GEOMuninViewState *)self cameraFrame];
  [cameraFrame2 latitude];
  [v4 setLatitude:?];

  cameraFrame3 = [(GEOMuninViewState *)self cameraFrame];
  [cameraFrame3 longitude];
  [v4 setLongitude:?];

  cameraFrame4 = [(GEOMuninViewState *)self cameraFrame];
  [cameraFrame4 pitch];
  [v4 setPitch:?];

  cameraFrame5 = [(GEOMuninViewState *)self cameraFrame];
  [cameraFrame5 roll];
  [v4 setRoll:?];

  cameraFrame6 = [(GEOMuninViewState *)self cameraFrame];
  [cameraFrame6 yaw];
  [v4 setYaw:?];

  [v3 setCameraFrame:v4];
  v11 = objc_alloc_init(GEOPDLocationInfo);
  locationInfo = [(GEOMuninViewState *)self locationInfo];
  localityName = [locationInfo localityName];
  [v11 setLocalityName:localityName];

  locationInfo2 = [(GEOMuninViewState *)self locationInfo];
  locationName = [locationInfo2 locationName];
  [v11 setLocationName:locationName];

  locationInfo3 = [(GEOMuninViewState *)self locationInfo];
  secondaryLocationName = [locationInfo3 secondaryLocationName];
  [v11 setSecondaryLocationName:secondaryLocationName];

  [v3 setLocationInfo:v11];

  return v3;
}

- (GEOMuninViewState)initWithGEOPDMuninViewState:(id)state
{
  stateCopy = state;
  v5 = objc_alloc_init(objc_opt_class());

  if (v5)
  {
    v6 = objc_alloc_init(GEOCameraFrame);
    cameraFrame = [stateCopy cameraFrame];
    [cameraFrame altitude];
    [v6 setAltitude:?];

    cameraFrame2 = [stateCopy cameraFrame];
    [cameraFrame2 latitude];
    [v6 setLatitude:?];

    cameraFrame3 = [stateCopy cameraFrame];
    [cameraFrame3 longitude];
    [v6 setLongitude:?];

    cameraFrame4 = [stateCopy cameraFrame];
    [cameraFrame4 pitch];
    [v6 setPitch:?];

    cameraFrame5 = [stateCopy cameraFrame];
    [cameraFrame5 roll];
    [v6 setRoll:?];

    cameraFrame6 = [stateCopy cameraFrame];
    [cameraFrame6 yaw];
    [v6 setYaw:?];

    [v5 setCameraFrame:v6];
    v13 = objc_alloc_init(GEOLocationInfo);
    locationInfo = [stateCopy locationInfo];
    localityName = [locationInfo localityName];
    [v13 setLocalityName:localityName];

    locationInfo2 = [stateCopy locationInfo];
    locationName = [locationInfo2 locationName];
    [v13 setLocationName:locationName];

    locationInfo3 = [stateCopy locationInfo];
    secondaryLocationName = [locationInfo3 secondaryLocationName];
    [v13 setSecondaryLocationName:secondaryLocationName];

    [v5 setLocationInfo:v13];
  }

  return v5;
}

@end