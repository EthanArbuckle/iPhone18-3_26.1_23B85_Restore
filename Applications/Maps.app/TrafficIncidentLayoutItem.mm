@interface TrafficIncidentLayoutItem
+ (id)defaultDescriptionTextForType:(int)a3;
+ (id)defaultDisplayTextForType:(int)a3;
+ (id)styleAttributesForType:(int)a3;
- (NSString)secondaryString;
- (TrafficIncidentLayoutItem)initWithCoder:(id)a3;
- (TrafficIncidentLayoutItem)initWithTrafficIncidentType:(int)a3 displayOnMap:(BOOL)a4;
- (id)descriptionText;
- (id)displayImage;
- (id)displayText;
- (id)incidentTypeAsString;
- (id)preferredConfirmationTitle;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TrafficIncidentLayoutItem

- (NSString)secondaryString
{
  if (MapsFeature_IsEnabled_MoreReportTypes() && (+[MNNavigationService sharedService](MNNavigationService, "sharedService"), v2 = objc_claimAutoreleasedReturnValue(), [v2 lastLocation], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "roadName"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v2, v4))
  {
    v5 = +[MNNavigationService sharedService];
    v6 = [v5 lastLocation];
    v7 = [v6 roadName];
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v7 = [v5 localizedStringForKey:@"Report [Nav Tray value:Incident Report now]" table:{@"localized string not found", 0}];
  }

  return v7;
}

- (id)preferredConfirmationTitle
{
  v3 = +[MKTrafficSupport sharedTrafficSupport];
  v4 = [v3 localizedReportConfirmationForGEOTrafficIncidentType:{-[TrafficIncidentLayoutItem incidentType](self, "incidentType")}];

  return v4;
}

- (id)descriptionText
{
  v2 = [(TrafficIncidentLayoutItem *)self incidentType];

  return [TrafficIncidentLayoutItem defaultDescriptionTextForType:v2];
}

- (id)displayText
{
  v2 = [(TrafficIncidentLayoutItem *)self incidentType];

  return [TrafficIncidentLayoutItem defaultDisplayTextForType:v2];
}

- (id)displayImage
{
  v2 = [MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:[(TrafficIncidentLayoutItem *)self incidentType]];

  return sub_100955208(v2, 4);
}

+ (id)defaultDescriptionTextForType:(int)a3
{
  v3 = *&a3;
  v4 = +[MKTrafficSupport sharedTrafficSupport];
  v5 = [v4 localizedRAPDescriptionForGEOTrafficIncidentType:v3];

  return v5;
}

+ (id)defaultDisplayTextForType:(int)a3
{
  v3 = [MKTrafficSupport GEORouteIncidentTypeForGEOTrafficIncidentType:*&a3];
  v4 = +[MKTrafficSupport sharedTrafficSupport];
  v5 = [v4 localizedTitleForGEOIncidentType:v3 laneType:0 laneCount:0];

  return v5;
}

+ (id)styleAttributesForType:(int)a3
{
  v3 = [MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:*&a3];

  return [GEOFeatureStyleAttributes styleAttributesForTrafficIncidentType:v3];
}

- (id)incidentTypeAsString
{
  v2 = [(TrafficIncidentLayoutItem *)self incidentType];
  if (v2 >= 0x14)
  {
    v3 = [NSString stringWithFormat:@"(unknown: %i)", v2];
  }

  else
  {
    v3 = off_101657EE0[v2];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[TrafficIncidentLayoutItem incidentType](self forKey:{"incidentType"), @"incidentType"}];
  [v4 encodeBool:-[TrafficIncidentLayoutItem displayIncidentOnMap](self forKey:{"displayIncidentOnMap"), @"displayIncidentOnMap"}];
}

- (TrafficIncidentLayoutItem)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TrafficIncidentLayoutItem;
  v5 = [(TrafficIncidentLayoutItem *)&v7 init];
  if (v5)
  {
    -[TrafficIncidentLayoutItem setIncidentType:](v5, "setIncidentType:", [v4 decodeInt32ForKey:@"incidentType"]);
    -[TrafficIncidentLayoutItem setDisplayIncidentOnMap:](v5, "setDisplayIncidentOnMap:", [v4 decodeBoolForKey:@"displayIncidentOnMap"]);
  }

  return v5;
}

- (TrafficIncidentLayoutItem)initWithTrafficIncidentType:(int)a3 displayOnMap:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = TrafficIncidentLayoutItem;
  result = [(TrafficIncidentLayoutItem *)&v7 init];
  if (result)
  {
    result->_incidentType = a3;
    result->_displayIncidentOnMap = a4;
  }

  return result;
}

@end