@interface TrafficAlertBannerItem
- (NSString)subtitle;
- (NSString)title;
- (TrafficAlertBannerItem)initWithGuidanceState:(id)state;
- (UIImage)icon;
- (void)updateFromGuidanceState:(id)state;
@end

@implementation TrafficAlertBannerItem

- (void)updateFromGuidanceState:(id)state
{
  stateCopy = state;
  trafficIncidentAlert = [stateCopy trafficIncidentAlert];

  if (trafficIncidentAlert)
  {
    v6.receiver = self;
    v6.super_class = TrafficAlertBannerItem;
    [(BannerItem *)&v6 updateFromGuidanceState:stateCopy];
  }
}

- (UIImage)icon
{
  guidanceState = [(BannerItem *)self guidanceState];
  trafficIncidentAlert = [guidanceState trafficIncidentAlert];
  incident = [trafficIncidentAlert incident];

  if ([incident hasType] && (v6 = +[VKTrafficIncidentFeature incidentTypeForGeoRouteIncident:](VKTrafficIncidentFeature, "incidentTypeForGeoRouteIncident:", incident), -[TrafficAlertBannerItem _hasIconForIncidentType:](self, "_hasIconForIncidentType:", v6)))
  {
    if (self->_incidentType != v6)
    {
      self->_incidentType = v6;
      v8 = +[MKSystemController sharedInstance];
      [v8 screenScale];
      v10 = sub_100955280(incident, v9);
      incidentIcon = self->_incidentIcon;
      self->_incidentIcon = v10;
    }

    v7 = self->_incidentIcon;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)subtitle
{
  guidanceState = [(BannerItem *)self guidanceState];
  trafficIncidentAlert = [guidanceState trafficIncidentAlert];
  subtitle = [trafficIncidentAlert subtitle];

  return subtitle;
}

- (NSString)title
{
  guidanceState = [(BannerItem *)self guidanceState];
  trafficIncidentAlert = [guidanceState trafficIncidentAlert];
  title = [trafficIncidentAlert title];

  return title;
}

- (TrafficAlertBannerItem)initWithGuidanceState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = TrafficAlertBannerItem;
  v5 = [(BannerItem *)&v9 initWithGuidanceState:stateCopy];
  if (v5)
  {
    v6 = [stateCopy uniqueIdForBannerType:1];
    uniqueId = v5->super._uniqueId;
    v5->super._uniqueId = v6;
  }

  return v5;
}

@end