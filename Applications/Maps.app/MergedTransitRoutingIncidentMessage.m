@interface MergedTransitRoutingIncidentMessage
- (MergedTransitRoutingIncidentMessage)initWithGEOComposedRouteAdvisory:(id)a3 transitIncidents:(id)a4;
@end

@implementation MergedTransitRoutingIncidentMessage

- (MergedTransitRoutingIncidentMessage)initWithGEOComposedRouteAdvisory:(id)a3 transitIncidents:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = MergedTransitRoutingIncidentMessage;
  v9 = [(MergedTransitRoutingIncidentMessage *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_advisory, a3);
    v11 = [v8 copy];
    transitIncidents = v10->_transitIncidents;
    v10->_transitIncidents = v11;

    if (v10->_advisory)
    {
      v13 = [v7 titleString];
      v14 = [v13 stringWithDefaultOptions];
    }

    else
    {
      if ([(NSArray *)v10->_transitIncidents count]== 1)
      {
        v13 = [(NSArray *)v10->_transitIncidents objectAtIndexedSubscript:0];
        v15 = [v13 title];
        v16 = [v15 copy];
        routingMessage = v10->_routingMessage;
        v10->_routingMessage = v16;

LABEL_8:
        goto LABEL_9;
      }

      v18 = +[NSBundle mainBundle];
      v13 = [v18 localizedStringForKey:@"Transit_Routing_Incident_Message_Multiple_Incidents_Synthesized_Title" value:@"localized string not found" table:0];

      v14 = [NSString stringWithFormat:v13, [(NSArray *)v10->_transitIncidents count]];
    }

    v15 = v10->_routingMessage;
    v10->_routingMessage = v14;
    goto LABEL_8;
  }

LABEL_9:

  return v10;
}

@end