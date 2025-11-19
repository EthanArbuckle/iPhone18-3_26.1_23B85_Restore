@interface TrafficAlertBannerItem
- (NSString)subtitle;
- (NSString)title;
- (TrafficAlertBannerItem)initWithGuidanceState:(id)a3;
- (UIImage)icon;
- (void)updateFromGuidanceState:(id)a3;
@end

@implementation TrafficAlertBannerItem

- (void)updateFromGuidanceState:(id)a3
{
  v4 = a3;
  v5 = [v4 trafficIncidentAlert];

  if (v5)
  {
    v6.receiver = self;
    v6.super_class = TrafficAlertBannerItem;
    [(BannerItem *)&v6 updateFromGuidanceState:v4];
  }
}

- (UIImage)icon
{
  v3 = [(BannerItem *)self guidanceState];
  v4 = [v3 trafficIncidentAlert];
  v5 = [v4 incident];

  if ([v5 hasType] && (v6 = +[VKTrafficIncidentFeature incidentTypeForGeoRouteIncident:](VKTrafficIncidentFeature, "incidentTypeForGeoRouteIncident:", v5), -[TrafficAlertBannerItem _hasIconForIncidentType:](self, "_hasIconForIncidentType:", v6)))
  {
    if (self->_incidentType != v6)
    {
      self->_incidentType = v6;
      v8 = +[MKSystemController sharedInstance];
      [v8 screenScale];
      v10 = sub_100955280(v5, v9);
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
  v2 = [(BannerItem *)self guidanceState];
  v3 = [v2 trafficIncidentAlert];
  v4 = [v3 subtitle];

  return v4;
}

- (NSString)title
{
  v2 = [(BannerItem *)self guidanceState];
  v3 = [v2 trafficIncidentAlert];
  v4 = [v3 title];

  return v4;
}

- (TrafficAlertBannerItem)initWithGuidanceState:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TrafficAlertBannerItem;
  v5 = [(BannerItem *)&v9 initWithGuidanceState:v4];
  if (v5)
  {
    v6 = [v4 uniqueIdForBannerType:1];
    uniqueId = v5->super._uniqueId;
    v5->super._uniqueId = v6;
  }

  return v5;
}

@end