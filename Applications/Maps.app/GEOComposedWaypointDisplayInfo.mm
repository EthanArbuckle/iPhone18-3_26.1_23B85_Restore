@interface GEOComposedWaypointDisplayInfo
- (void)_routeCreation_setEndWaypointCaption;
- (void)_routeCreation_setMyLocationName;
- (void)_routeCreation_setStartEndWaypointCaption;
- (void)_routeCreation_setStartWaypointCaption;
@end

@implementation GEOComposedWaypointDisplayInfo

- (void)_routeCreation_setMyLocationName
{
  v3 = MKLocalizedStringForCurrentLocation();
  [(GEOComposedWaypointDisplayInfo *)self setName:v3];
}

- (void)_routeCreation_setStartEndWaypointCaption
{
  v3 = +[NSBundle mainBundle];
  v5 = [v3 localizedStringForKey:@"[Route Creation] Combined Start End Anchor Caption" value:@"localized string not found" table:0];

  v4 = [[GEOComposedString alloc] initWithString:v5];
  [(GEOComposedWaypointDisplayInfo *)self setWaypointCaption:v4];
}

- (void)_routeCreation_setEndWaypointCaption
{
  v3 = +[NSBundle mainBundle];
  v5 = [v3 localizedStringForKey:@"[Route Creation] End Anchor Caption" value:@"localized string not found" table:0];

  v4 = [[GEOComposedString alloc] initWithString:v5];
  [(GEOComposedWaypointDisplayInfo *)self setWaypointCaption:v4];
}

- (void)_routeCreation_setStartWaypointCaption
{
  v3 = +[NSBundle mainBundle];
  v5 = [v3 localizedStringForKey:@"[Route Creation] Start Anchor Caption" value:@"localized string not found" table:0];

  v4 = [[GEOComposedString alloc] initWithString:v5];
  [(GEOComposedWaypointDisplayInfo *)self setWaypointCaption:v4];
}

@end