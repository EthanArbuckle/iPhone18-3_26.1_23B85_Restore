@interface FindMyAction
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (BOOL)isCompatibleWithNavigation;
- (FindMyAction)initWithFindMyHandleIdentifier:(id)a3 coordinate:(id)a4;
@end

@implementation FindMyAction

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (BOOL)isCompatibleWithNavigation
{
  if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
  {
    return 1;
  }

  return MapsFeature_IsEnabled_Maps182();
}

- (FindMyAction)initWithFindMyHandleIdentifier:(id)a3 coordinate:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = FindMyAction;
  v8 = [(FindMyAction *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    findMyHandleIdentifier = v8->_findMyHandleIdentifier;
    v8->_findMyHandleIdentifier = v9;

    v8->_coordinate.latitude = var0;
    v8->_coordinate.longitude = var1;
  }

  return v8;
}

@end