@interface TrafficIncidentLayoutItem
- (TrafficIncidentLayoutItem)initWithCoder:(id)coder;
- (TrafficIncidentLayoutItem)initWithTrafficIncidentType:(int)type displayOnMap:(BOOL)map;
- (id)incidentTypeAsString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TrafficIncidentLayoutItem

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[TrafficIncidentLayoutItem incidentType](self forKey:{"incidentType"), @"incidentType"}];
  [coderCopy encodeBool:-[TrafficIncidentLayoutItem displayIncidentOnMap](self forKey:{"displayIncidentOnMap"), @"displayIncidentOnMap"}];
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
    v3 = off_1000082D0[incidentType];
  }

  return v3;
}

@end