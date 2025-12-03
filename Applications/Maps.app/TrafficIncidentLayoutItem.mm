@interface TrafficIncidentLayoutItem
+ (id)defaultDescriptionTextForType:(int)type;
+ (id)defaultDisplayTextForType:(int)type;
+ (id)styleAttributesForType:(int)type;
- (NSString)secondaryString;
- (TrafficIncidentLayoutItem)initWithCoder:(id)coder;
- (TrafficIncidentLayoutItem)initWithTrafficIncidentType:(int)type displayOnMap:(BOOL)map;
- (id)descriptionText;
- (id)displayImage;
- (id)displayText;
- (id)incidentTypeAsString;
- (id)preferredConfirmationTitle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TrafficIncidentLayoutItem

- (NSString)secondaryString
{
  if (MapsFeature_IsEnabled_MoreReportTypes() && (+[MNNavigationService sharedService](MNNavigationService, "sharedService"), v2 = objc_claimAutoreleasedReturnValue(), [v2 lastLocation], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "roadName"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v2, v4))
  {
    v5 = +[MNNavigationService sharedService];
    lastLocation = [v5 lastLocation];
    roadName = [lastLocation roadName];
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    roadName = [v5 localizedStringForKey:@"Report [Nav Tray value:Incident Report now]" table:{@"localized string not found", 0}];
  }

  return roadName;
}

- (id)preferredConfirmationTitle
{
  v3 = +[MKTrafficSupport sharedTrafficSupport];
  v4 = [v3 localizedReportConfirmationForGEOTrafficIncidentType:{-[TrafficIncidentLayoutItem incidentType](self, "incidentType")}];

  return v4;
}

- (id)descriptionText
{
  incidentType = [(TrafficIncidentLayoutItem *)self incidentType];

  return [TrafficIncidentLayoutItem defaultDescriptionTextForType:incidentType];
}

- (id)displayText
{
  incidentType = [(TrafficIncidentLayoutItem *)self incidentType];

  return [TrafficIncidentLayoutItem defaultDisplayTextForType:incidentType];
}

- (id)displayImage
{
  v2 = [MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:[(TrafficIncidentLayoutItem *)self incidentType]];

  return sub_100955208(v2, 4);
}

+ (id)defaultDescriptionTextForType:(int)type
{
  v3 = *&type;
  v4 = +[MKTrafficSupport sharedTrafficSupport];
  v5 = [v4 localizedRAPDescriptionForGEOTrafficIncidentType:v3];

  return v5;
}

+ (id)defaultDisplayTextForType:(int)type
{
  v3 = [MKTrafficSupport GEORouteIncidentTypeForGEOTrafficIncidentType:*&type];
  v4 = +[MKTrafficSupport sharedTrafficSupport];
  v5 = [v4 localizedTitleForGEOIncidentType:v3 laneType:0 laneCount:0];

  return v5;
}

+ (id)styleAttributesForType:(int)type
{
  v3 = [MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:*&type];

  return [GEOFeatureStyleAttributes styleAttributesForTrafficIncidentType:v3];
}

- (id)incidentTypeAsString
{
  incidentType = [(TrafficIncidentLayoutItem *)self incidentType];
  if (incidentType >= 0x14)
  {
    v3 = [NSString stringWithFormat:@"(unknown: %i)", incidentType];
  }

  else
  {
    v3 = off_101657EE0[incidentType];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[TrafficIncidentLayoutItem incidentType](self forKey:{"incidentType"), @"incidentType"}];
  [coderCopy encodeBool:-[TrafficIncidentLayoutItem displayIncidentOnMap](self forKey:{"displayIncidentOnMap"), @"displayIncidentOnMap"}];
}

- (TrafficIncidentLayoutItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TrafficIncidentLayoutItem;
  v5 = [(TrafficIncidentLayoutItem *)&v7 init];
  if (v5)
  {
    -[TrafficIncidentLayoutItem setIncidentType:](v5, "setIncidentType:", [coderCopy decodeInt32ForKey:@"incidentType"]);
    -[TrafficIncidentLayoutItem setDisplayIncidentOnMap:](v5, "setDisplayIncidentOnMap:", [coderCopy decodeBoolForKey:@"displayIncidentOnMap"]);
  }

  return v5;
}

- (TrafficIncidentLayoutItem)initWithTrafficIncidentType:(int)type displayOnMap:(BOOL)map
{
  v7.receiver = self;
  v7.super_class = TrafficIncidentLayoutItem;
  result = [(TrafficIncidentLayoutItem *)&v7 init];
  if (result)
  {
    result->_incidentType = type;
    result->_displayIncidentOnMap = map;
  }

  return result;
}

@end