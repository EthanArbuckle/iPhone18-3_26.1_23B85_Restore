@interface CarPlayMetadataUpdater
+ (NSString)mapsExternalNavigationOwnershipUpdatedNotification;
- (BOOL)externalAccessoryIsNavigating;
- (void)navigationListener:(id)listener didRerouteWithReason:(unsigned __int8)reason routeInfo:(id)info;
- (void)navigationListener:(id)listener didStartNavigationWithRouteInfo:(id)info;
- (void)navigationListener:(id)listener didUpdatePreconditioningInfo:(id)info;
- (void)navigationListener:(id)listener didUpdateRouteGuidance:(id)guidance;
- (void)navigationListener:(id)listener didUpdateRouteLine:(id)line;
- (void)navigationListenerDidStopNavigation:(id)navigation;
@end

@implementation CarPlayMetadataUpdater

+ (NSString)mapsExternalNavigationOwnershipUpdatedNotification
{
  if (qword_101906938 != -1)
  {
    swift_once();
  }

  v3 = qword_1019605A8;

  return v3;
}

- (BOOL)externalAccessoryIsNavigating
{
  selfCopy = self;
  v3 = sub_100541910();
  owner = [v3 owner];

  return owner == 2;
}

- (void)navigationListener:(id)listener didStartNavigationWithRouteInfo:(id)info
{
  listenerCopy = listener;
  infoCopy = info;
  selfCopy = self;
  sub_100542B04(infoCopy, "Calling startNavigation with routeInfo: %@", &selRef_startNavigationWithRouteInfo_);
}

- (void)navigationListener:(id)listener didUpdateRouteLine:(id)line
{
  listenerCopy = listener;
  lineCopy = line;
  selfCopy = self;
  sub_100542B04(lineCopy, "Setting routeLine: %@", &selRef_setRouteLine_);
}

- (void)navigationListener:(id)listener didRerouteWithReason:(unsigned __int8)reason routeInfo:(id)info
{
  listenerCopy = listener;
  infoCopy = info;
  selfCopy = self;
  sub_100542C88(reason, infoCopy);
}

- (void)navigationListenerDidStopNavigation:(id)navigation
{
  navigationCopy = navigation;
  selfCopy = self;
  sub_100542E20();
}

- (void)navigationListener:(id)listener didUpdateRouteGuidance:(id)guidance
{
  listenerCopy = listener;
  guidanceCopy = guidance;
  selfCopy = self;
  sub_100542F30(guidanceCopy);
}

- (void)navigationListener:(id)listener didUpdatePreconditioningInfo:(id)info
{
  listenerCopy = listener;
  infoCopy = info;
  selfCopy = self;
  sub_100543130(info);
}

@end