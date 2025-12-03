@interface _MKCitySelectorViewTicket
- (_MKCitySelectorViewTicket)initWithTicket:(id)ticket;
- (void)submitWithHandler:(id)handler networkActivity:(id)activity;
@end

@implementation _MKCitySelectorViewTicket

- (void)submitWithHandler:(id)handler networkActivity:(id)activity
{
  handlerCopy = handler;
  ticket = self->_ticket;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63___MKCitySelectorViewTicket_submitWithHandler_networkActivity___block_invoke;
  v9[3] = &unk_1E76C8620;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(GEOMapServiceCitySelectorViewTicket *)ticket submitWithHandler:v9 networkActivity:activity];
}

- (_MKCitySelectorViewTicket)initWithTicket:(id)ticket
{
  ticketCopy = ticket;
  v9.receiver = self;
  v9.super_class = _MKCitySelectorViewTicket;
  v6 = [(_MKCitySelectorViewTicket *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, ticket);
  }

  return v7;
}

@end