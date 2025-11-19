@interface RouteAnnotationsMutableConfiguration
+ (id)_customSelectedRouteTextFromIncidentAlert:(id)a3;
+ (id)navConfigurationWithCurrentRoute:(id)a3 incidentAlert:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)clear;
- (void)filterTransitVehiclePositionsForTripsNotInSet:(id)a3;
- (void)updateNavConfigurationWithCurrentRoute:(id)a3 incidentAlert:(id)a4;
@end

@implementation RouteAnnotationsMutableConfiguration

- (void)filterTransitVehiclePositionsForTripsNotInSet:(id)a3
{
  v4 = a3;
  v5 = [(RouteAnnotationsConfiguration *)self transitVehiclePositions];
  v6 = [v5 mutableCopy];

  if ([v6 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = self;
    v7 = [(RouteAnnotationsConfiguration *)self transitVehiclePositions];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 tripID]);
          v14 = [v4 containsObject:v13];

          if ((v14 & 1) == 0)
          {
            [v6 removeObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    self = v15;
  }

  [(RouteAnnotationsConfiguration *)self setTransitVehiclePositions:v6];
}

- (void)clear
{
  v3 = objc_opt_new();
  [v3 _copyPropertiesTo:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[RouteAnnotationsConfiguration allocWithZone:?], "initWithRoute:", 0];
  [(RouteAnnotationsConfiguration *)self _copyPropertiesTo:v4];
  return v4;
}

- (void)updateNavConfigurationWithCurrentRoute:(id)a3 incidentAlert:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7;
  if (!v14)
  {
    v10 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 2;
    goto LABEL_12;
  }

  [v7 addObject:?];
  if (v6)
  {
    v9 = [v6 alternateRouteToDisplay];
    if (v9)
    {
      [v8 addObject:v9];
      v10 = [objc_opt_class() _customSelectedRouteTextFromIncidentAlert:v6];
      if ([v6 isReroute])
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
    v9 = [v13 alternateRoutes];

    [v8 addObjectsFromArray:v9];
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

+ (id)_customSelectedRouteTextFromIncidentAlert:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 alertType];
    if (v5 == 4)
    {
      goto LABEL_5;
    }

    if (v5 == 3)
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

    if (v5 == 1)
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

+ (id)navConfigurationWithCurrentRoute:(id)a3 incidentAlert:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(RouteAnnotationsMutableConfiguration);
  [(RouteAnnotationsMutableConfiguration *)v7 updateNavConfigurationWithCurrentRoute:v6 incidentAlert:v5];

  return v7;
}

@end