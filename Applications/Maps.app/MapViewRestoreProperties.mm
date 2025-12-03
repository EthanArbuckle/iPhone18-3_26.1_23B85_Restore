@interface MapViewRestoreProperties
- (id)initFromMapView:(id)view;
- (void)applyToMapView:(id)view animated:(BOOL)animated;
@end

@implementation MapViewRestoreProperties

- (void)applyToMapView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  preferredConfiguration = [(MapViewRestoreProperties *)self preferredConfiguration];
  [viewCopy setPreferredConfiguration:preferredConfiguration];

  cameraZoomRange = [(MapViewRestoreProperties *)self cameraZoomRange];
  [viewCopy setCameraZoomRange:cameraZoomRange animated:animatedCopy];

  [viewCopy setZoomEnabled:{-[MapViewRestoreProperties isZoomEnabled](self, "isZoomEnabled")}];
  [viewCopy setScrollEnabled:{-[MapViewRestoreProperties isScrollEnabled](self, "isScrollEnabled")}];
  [viewCopy setRotateEnabled:{-[MapViewRestoreProperties isRotateEnabled](self, "isRotateEnabled")}];
  [viewCopy setPitchEnabled:{-[MapViewRestoreProperties isPitchEnabled](self, "isPitchEnabled")}];
  camera = [(MapViewRestoreProperties *)self camera];
  [viewCopy setCamera:camera animated:animatedCopy];

  [viewCopy setUserTrackingMode:-[MapViewRestoreProperties userTrackingMode](self animated:{"userTrackingMode"), animatedCopy}];
  [viewCopy _setOfflineRegionVisibility:{-[MapViewRestoreProperties offlineRegionVisibility](self, "offlineRegionVisibility")}];
  [viewCopy _setApplicationState:self->_applicationState];
}

- (id)initFromMapView:(id)view
{
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = MapViewRestoreProperties;
  v5 = [(MapViewRestoreProperties *)&v16 init];
  if (v5)
  {
    preferredConfiguration = [viewCopy preferredConfiguration];
    v7 = [preferredConfiguration copy];
    preferredConfiguration = v5->_preferredConfiguration;
    v5->_preferredConfiguration = v7;

    camera = [viewCopy camera];
    v10 = [camera copy];
    camera = v5->_camera;
    v5->_camera = v10;

    cameraZoomRange = [viewCopy cameraZoomRange];
    v13 = [cameraZoomRange copy];
    cameraZoomRange = v5->_cameraZoomRange;
    v5->_cameraZoomRange = v13;

    v5->_zoomEnabled = [viewCopy isZoomEnabled];
    v5->_scrollEnabled = [viewCopy isScrollEnabled];
    v5->_rotateEnabled = [viewCopy isRotateEnabled];
    v5->_pitchEnabled = [viewCopy isPitchEnabled];
    v5->_userTrackingMode = [viewCopy userTrackingMode];
    v5->_offlineRegionVisibility = [viewCopy _offlineRegionVisibility];
    v5->_applicationState = [viewCopy _applicationState];
  }

  return v5;
}

@end