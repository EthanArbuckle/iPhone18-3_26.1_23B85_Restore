@interface TransitDirectionsListItemIncident
- (TransitDirectionsListItemIncident)initWithIncidentMessage:(id)message;
@end

@implementation TransitDirectionsListItemIncident

- (TransitDirectionsListItemIncident)initWithIncidentMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = TransitDirectionsListItemIncident;
  v6 = [(TransitDirectionsListItem *)&v9 initWithInstructions:0];
  v7 = v6;
  if (v6)
  {
    [(TransitDirectionsListItem *)v6 setType:13];
    objc_storeStrong(&v7->_incidentMessage, message);
  }

  return v7;
}

@end