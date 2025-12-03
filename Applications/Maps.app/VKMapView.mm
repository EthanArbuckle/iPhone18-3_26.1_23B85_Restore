@interface VKMapView
- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_jumpToBayArea;
- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_jumpToCupertino;
- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_jumpToTokyo;
- (void)_mapstest_jumpToCoords:(id)coords pitch:(double)pitch yaw:(double)yaw altitudeIsRegionSize:(BOOL)size;
@end

@implementation VKMapView

- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_jumpToCupertino
{
  VKLocationCoordinate3DMake();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [VKMapView _mapstest_jumpToCoords:"_mapstest_jumpToCoords:pitch:yaw:altitudeIsRegionSize:" pitch:1 yaw:? altitudeIsRegionSize:?];
  v9 = v4;
  v10 = v6;
  v11 = v8;
  result.var2 = v11;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_jumpToTokyo
{
  VKLocationCoordinate3DMake();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [VKMapView _mapstest_jumpToCoords:"_mapstest_jumpToCoords:pitch:yaw:altitudeIsRegionSize:" pitch:1 yaw:? altitudeIsRegionSize:?];
  v9 = v4;
  v10 = v6;
  v11 = v8;
  result.var2 = v11;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)_mapstest_jumpToBayArea
{
  VKLocationCoordinate3DMake();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [VKMapView _mapstest_jumpToCoords:"_mapstest_jumpToCoords:pitch:yaw:altitudeIsRegionSize:" pitch:1 yaw:? altitudeIsRegionSize:?];
  v9 = v4;
  v10 = v6;
  v11 = v8;
  result.var2 = v11;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (void)_mapstest_jumpToCoords:(id)coords pitch:(double)pitch yaw:(double)yaw altitudeIsRegionSize:(BOOL)size
{
  if (size)
  {
    v9 = [GEOMapRegion _mapstest_mapRegionAtCenterLocation:coords.var0, coords.var1, coords.var2];
    [(VKMapView *)self setMapRegion:v9 pitch:pitch yaw:yaw];
  }

  else
  {
    VKLocationCoordinate2DMake();

    [VKMapView setCenterCoordinate:"setCenterCoordinate:altitude:yaw:pitch:duration:timingCurve:completion:" altitude:0 yaw:0 pitch:? duration:? timingCurve:? completion:?];
  }
}

@end