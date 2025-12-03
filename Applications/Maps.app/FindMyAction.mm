@interface FindMyAction
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (BOOL)isCompatibleWithNavigation;
- (FindMyAction)initWithFindMyHandleIdentifier:(id)identifier coordinate:(id)coordinate;
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

- (FindMyAction)initWithFindMyHandleIdentifier:(id)identifier coordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = FindMyAction;
  v8 = [(FindMyAction *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    findMyHandleIdentifier = v8->_findMyHandleIdentifier;
    v8->_findMyHandleIdentifier = v9;

    v8->_coordinate.latitude = var0;
    v8->_coordinate.longitude = var1;
  }

  return v8;
}

@end