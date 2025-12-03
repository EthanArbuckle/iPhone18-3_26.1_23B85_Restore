@interface _MapViewState
- (_MapViewState)initWithMapView:(id)view;
- (void)restoreStateToMapView:(id)view;
@end

@implementation _MapViewState

- (void)restoreStateToMapView:(id)view
{
  showsTraffic = self->_showsTraffic;
  viewCopy = view;
  [viewCopy setShowsTraffic:showsTraffic];
  [viewCopy setShowsUserLocation:self->_showsUserLocation];
  _mapLayer = [viewCopy _mapLayer];
  [_mapLayer setStaysCenteredDuringPinch:0];

  _mapLayer2 = [viewCopy _mapLayer];
  [_mapLayer2 setStaysCenteredDuringRotation:0];

  [viewCopy setUserTrackingMode:0];
}

- (_MapViewState)initWithMapView:(id)view
{
  viewCopy = view;
  v7.receiver = self;
  v7.super_class = _MapViewState;
  v5 = [(_MapViewState *)&v7 init];
  if (v5)
  {
    v5->_showsTraffic = [viewCopy showsTraffic];
    v5->_showsUserLocation = [viewCopy showsUserLocation];
  }

  return v5;
}

@end