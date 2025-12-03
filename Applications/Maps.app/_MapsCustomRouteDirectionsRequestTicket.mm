@interface _MapsCustomRouteDirectionsRequestTicket
- (_MapsCustomRouteDirectionsRequestTicket)initWithRequestDetails:(id)details;
- (void)submitWithHandler:(id)handler;
@end

@implementation _MapsCustomRouteDirectionsRequestTicket

- (void)submitWithHandler:(id)handler
{
  handlerCopy = handler;
  persistentData = [(MNDirectionsRequestDetails *)self->_directionsRequestDetails persistentData];
  v6 = [GEOComposedRoute _maps_composedRouteWithPersistentData:persistentData];

  traits = [(MNDirectionsRequestDetails *)self->_directionsRequestDetails traits];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100BC6048;
  v13[3] = &unk_10164CB50;
  v14 = handlerCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100BC6064;
  v11[3] = &unk_10164CB78;
  v12 = v14;
  v8 = v14;
  v9 = [v6 _maps_convertToNavigableRouteWithTraits:traits errorHandler:v13 completionHandler:v11];
  ticket = self->_ticket;
  self->_ticket = v9;
}

- (_MapsCustomRouteDirectionsRequestTicket)initWithRequestDetails:(id)details
{
  detailsCopy = details;
  v9.receiver = self;
  v9.super_class = _MapsCustomRouteDirectionsRequestTicket;
  v6 = [(_MapsCustomRouteDirectionsRequestTicket *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directionsRequestDetails, details);
  }

  return v7;
}

@end