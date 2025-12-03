@interface _MKPlaceEVChargerTicket
- (_MKPlaceEVChargerTicket)initWithTicket:(id)ticket;
- (void)submitRefreshRequestWithHandler:(id)handler networkActivity:(id)activity;
@end

@implementation _MKPlaceEVChargerTicket

- (void)submitRefreshRequestWithHandler:(id)handler networkActivity:(id)activity
{
  handlerCopy = handler;
  ticket = self->_ticket;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75___MKPlaceEVChargerTicket_submitRefreshRequestWithHandler_networkActivity___block_invoke;
  v9[3] = &unk_1E76C8490;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(GEOMapServiceRefreshEVChargerTicket *)ticket submitRefreshRequestWithHandler:v9 networkActivity:activity];
}

- (_MKPlaceEVChargerTicket)initWithTicket:(id)ticket
{
  ticketCopy = ticket;
  v9.receiver = self;
  v9.super_class = _MKPlaceEVChargerTicket;
  v6 = [(_MKPlaceEVChargerTicket *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, ticket);
  }

  return v7;
}

@end