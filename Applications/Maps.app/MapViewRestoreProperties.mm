@interface MapViewRestoreProperties
- (id)initFromMapView:(id)a3;
- (void)applyToMapView:(id)a3 animated:(BOOL)a4;
@end

@implementation MapViewRestoreProperties

- (void)applyToMapView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(MapViewRestoreProperties *)self preferredConfiguration];
  [v9 setPreferredConfiguration:v6];

  v7 = [(MapViewRestoreProperties *)self cameraZoomRange];
  [v9 setCameraZoomRange:v7 animated:v4];

  [v9 setZoomEnabled:{-[MapViewRestoreProperties isZoomEnabled](self, "isZoomEnabled")}];
  [v9 setScrollEnabled:{-[MapViewRestoreProperties isScrollEnabled](self, "isScrollEnabled")}];
  [v9 setRotateEnabled:{-[MapViewRestoreProperties isRotateEnabled](self, "isRotateEnabled")}];
  [v9 setPitchEnabled:{-[MapViewRestoreProperties isPitchEnabled](self, "isPitchEnabled")}];
  v8 = [(MapViewRestoreProperties *)self camera];
  [v9 setCamera:v8 animated:v4];

  [v9 setUserTrackingMode:-[MapViewRestoreProperties userTrackingMode](self animated:{"userTrackingMode"), v4}];
  [v9 _setOfflineRegionVisibility:{-[MapViewRestoreProperties offlineRegionVisibility](self, "offlineRegionVisibility")}];
  [v9 _setApplicationState:self->_applicationState];
}

- (id)initFromMapView:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MapViewRestoreProperties;
  v5 = [(MapViewRestoreProperties *)&v16 init];
  if (v5)
  {
    v6 = [v4 preferredConfiguration];
    v7 = [v6 copy];
    preferredConfiguration = v5->_preferredConfiguration;
    v5->_preferredConfiguration = v7;

    v9 = [v4 camera];
    v10 = [v9 copy];
    camera = v5->_camera;
    v5->_camera = v10;

    v12 = [v4 cameraZoomRange];
    v13 = [v12 copy];
    cameraZoomRange = v5->_cameraZoomRange;
    v5->_cameraZoomRange = v13;

    v5->_zoomEnabled = [v4 isZoomEnabled];
    v5->_scrollEnabled = [v4 isScrollEnabled];
    v5->_rotateEnabled = [v4 isRotateEnabled];
    v5->_pitchEnabled = [v4 isPitchEnabled];
    v5->_userTrackingMode = [v4 userTrackingMode];
    v5->_offlineRegionVisibility = [v4 _offlineRegionVisibility];
    v5->_applicationState = [v4 _applicationState];
  }

  return v5;
}

@end