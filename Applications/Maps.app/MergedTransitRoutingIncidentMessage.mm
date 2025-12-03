@interface MergedTransitRoutingIncidentMessage
- (MergedTransitRoutingIncidentMessage)initWithGEOComposedRouteAdvisory:(id)advisory transitIncidents:(id)incidents;
@end

@implementation MergedTransitRoutingIncidentMessage

- (MergedTransitRoutingIncidentMessage)initWithGEOComposedRouteAdvisory:(id)advisory transitIncidents:(id)incidents
{
  advisoryCopy = advisory;
  incidentsCopy = incidents;
  v20.receiver = self;
  v20.super_class = MergedTransitRoutingIncidentMessage;
  v9 = [(MergedTransitRoutingIncidentMessage *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_advisory, advisory);
    v11 = [incidentsCopy copy];
    transitIncidents = v10->_transitIncidents;
    v10->_transitIncidents = v11;

    if (v10->_advisory)
    {
      titleString = [advisoryCopy titleString];
      stringWithDefaultOptions = [titleString stringWithDefaultOptions];
    }

    else
    {
      if ([(NSArray *)v10->_transitIncidents count]== 1)
      {
        titleString = [(NSArray *)v10->_transitIncidents objectAtIndexedSubscript:0];
        title = [titleString title];
        v16 = [title copy];
        routingMessage = v10->_routingMessage;
        v10->_routingMessage = v16;

LABEL_8:
        goto LABEL_9;
      }

      v18 = +[NSBundle mainBundle];
      titleString = [v18 localizedStringForKey:@"Transit_Routing_Incident_Message_Multiple_Incidents_Synthesized_Title" value:@"localized string not found" table:0];

      stringWithDefaultOptions = [NSString stringWithFormat:titleString, [(NSArray *)v10->_transitIncidents count]];
    }

    title = v10->_routingMessage;
    v10->_routingMessage = stringWithDefaultOptions;
    goto LABEL_8;
  }

LABEL_9:

  return v10;
}

@end