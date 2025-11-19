@interface CarPlayMetadataUpdater
+ (NSString)mapsExternalNavigationOwnershipUpdatedNotification;
- (BOOL)externalAccessoryIsNavigating;
- (void)navigationListener:(id)a3 didRerouteWithReason:(unsigned __int8)a4 routeInfo:(id)a5;
- (void)navigationListener:(id)a3 didStartNavigationWithRouteInfo:(id)a4;
- (void)navigationListener:(id)a3 didUpdatePreconditioningInfo:(id)a4;
- (void)navigationListener:(id)a3 didUpdateRouteGuidance:(id)a4;
- (void)navigationListener:(id)a3 didUpdateRouteLine:(id)a4;
- (void)navigationListenerDidStopNavigation:(id)a3;
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
  v2 = self;
  v3 = sub_100541910();
  v4 = [v3 owner];

  return v4 == 2;
}

- (void)navigationListener:(id)a3 didStartNavigationWithRouteInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100542B04(v7, "Calling startNavigation with routeInfo: %@", &selRef_startNavigationWithRouteInfo_);
}

- (void)navigationListener:(id)a3 didUpdateRouteLine:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100542B04(v7, "Setting routeLine: %@", &selRef_setRouteLine_);
}

- (void)navigationListener:(id)a3 didRerouteWithReason:(unsigned __int8)a4 routeInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_100542C88(a4, v9);
}

- (void)navigationListenerDidStopNavigation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100542E20();
}

- (void)navigationListener:(id)a3 didUpdateRouteGuidance:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100542F30(v7);
}

- (void)navigationListener:(id)a3 didUpdatePreconditioningInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100543130(a4);
}

@end