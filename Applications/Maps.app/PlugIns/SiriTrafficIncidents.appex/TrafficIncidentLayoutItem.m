@interface TrafficIncidentLayoutItem
- (TrafficIncidentLayoutItem)initWithCoder:(id)a3;
- (TrafficIncidentLayoutItem)initWithTrafficIncidentType:(int)a3 displayOnMap:(BOOL)a4;
- (id)incidentTypeAsString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TrafficIncidentLayoutItem

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[TrafficIncidentLayoutItem incidentType](self forKey:{"incidentType"), @"incidentType"}];
  [v4 encodeBool:-[TrafficIncidentLayoutItem displayIncidentOnMap](self forKey:{"displayIncidentOnMap"), @"displayIncidentOnMap"}];
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
    v3 = off_1000082D0[v2];
  }

  return v3;
}

@end