@interface RouteAnnotationsMutableConfiguration
+ (id)_customSelectedRouteTextFromIncidentAlert:(id)alert;
+ (id)navConfigurationWithCurrentRoute:(id)route incidentAlert:(id)alert;
- (id)copyWithZone:(_NSZone *)zone;
- (void)clear;
- (void)filterTransitVehiclePositionsForTripsNotInSet:(id)set;
- (void)updateNavConfigurationWithCurrentRoute:(id)route incidentAlert:(id)alert;
@end

@implementation RouteAnnotationsMutableConfiguration

- (void)filterTransitVehiclePositionsForTripsNotInSet:(id)set
{
  setCopy = set;
  transitVehiclePositions = [(RouteAnnotationsConfiguration *)self transitVehiclePositions];
  v6 = [transitVehiclePositions mutableCopy];

  if ([v6 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    transitVehiclePositions2 = [(RouteAnnotationsConfiguration *)self transitVehiclePositions];
    v8 = [transitVehiclePositions2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(transitVehiclePositions2);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 tripID]);
          v14 = [setCopy containsObject:v13];

          if ((v14 & 1) == 0)
          {
            [v6 removeObject:v12];
          }
        }

        v9 = [transitVehiclePositions2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    self = selfCopy;
  }

  [(RouteAnnotationsConfiguration *)self setTransitVehiclePositions:v6];
}

- (void)clear
{
  v3 = objc_opt_new();
  [v3 _copyPropertiesTo:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[RouteAnnotationsConfiguration allocWithZone:?], "initWithRoute:", 0];
  [(RouteAnnotationsConfiguration *)self _copyPropertiesTo:v4];
  return v4;
}

- (void)updateNavConfigurationWithCurrentRoute:(id)route incidentAlert:(id)alert
{
  routeCopy = route;
  alertCopy = alert;
  v7 = objc_opt_new();
  v8 = v7;
  if (!routeCopy)
  {
    v10 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 2;
    goto LABEL_12;
  }

  [v7 addObject:?];
  if (alertCopy)
  {
    alternateRouteToDisplay = [alertCopy alternateRouteToDisplay];
    if (alternateRouteToDisplay)
    {
      [v8 addObject:alternateRouteToDisplay];
      v10 = [objc_opt_class() _customSelectedRouteTextFromIncidentAlert:alertCopy];
      if ([alertCopy isReroute])
      {
        v11 = [v8 count] - 1;
      }

      else
      {
        v11 = 0;
      }

      v12 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = +[MNNavigationService sharedService];
    alternateRouteToDisplay = [v13 alternateRoutes];

    [v8 addObjectsFromArray:alternateRouteToDisplay];
  }

  v10 = 0;
  v11 = 0;
  v12 = 2;
LABEL_11:

LABEL_12:
  [(RouteAnnotationsConfiguration *)self setStyle:v12];
  [(RouteAnnotationsConfiguration *)self setSelectedRouteCustomText:v10];
  [(RouteAnnotationsConfiguration *)self setRoutes:v8];
  [(RouteAnnotationsConfiguration *)self setSelectedRouteIndex:v11];
  [(RouteAnnotationsConfiguration *)self setRouteTrafficFeaturesActive:1];
}

+ (id)_customSelectedRouteTextFromIncidentAlert:(id)alert
{
  alertCopy = alert;
  v4 = alertCopy;
  if (alertCopy)
  {
    alertType = [alertCopy alertType];
    if (alertType == 4)
    {
      goto LABEL_5;
    }

    if (alertType == 3)
    {
      if ([v4 secondsSaved] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = +[NSString _navigation_stringWithSeconds:andAbbreviationType:](NSString, "_navigation_stringWithSeconds:andAbbreviationType:", [v4 secondsSaved], 1);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:@"<# min> faster [Route Label Marker For Traffic Incident Alert]" value:@"localized string not found" table:0];
        v9 = [NSString stringWithFormat:v12, v7];

        goto LABEL_7;
      }

      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"RouteCalloutText_faster";
LABEL_6:
      v9 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];
LABEL_7:

      goto LABEL_9;
    }

    if (alertType == 1)
    {
LABEL_5:
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"RouteCalloutText_New_Route";
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (id)navConfigurationWithCurrentRoute:(id)route incidentAlert:(id)alert
{
  alertCopy = alert;
  routeCopy = route;
  v7 = objc_alloc_init(RouteAnnotationsMutableConfiguration);
  [(RouteAnnotationsMutableConfiguration *)v7 updateNavConfigurationWithCurrentRoute:routeCopy incidentAlert:alertCopy];

  return v7;
}

@end