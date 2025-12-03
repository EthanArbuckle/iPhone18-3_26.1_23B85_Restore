@interface _MKExploreGuidesTicket
- (_MKExploreGuidesTicket)initWithTicket:(id)ticket;
- (void)submitWithCallbackQueue:(id)queue handler:(id)handler networkActivity:(id)activity;
@end

@implementation _MKExploreGuidesTicket

- (void)submitWithCallbackQueue:(id)queue handler:(id)handler networkActivity:(id)activity
{
  queueCopy = queue;
  handlerCopy = handler;
  ticket = self->_ticket;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74___MKExploreGuidesTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke;
  v13[3] = &unk_1E76C8670;
  v14 = queueCopy;
  v15 = handlerCopy;
  v11 = queueCopy;
  v12 = handlerCopy;
  [(GEOMapServiceExploreGuidesTicket *)ticket submitWithHandler:v13 networkActivity:activity];
}

- (_MKExploreGuidesTicket)initWithTicket:(id)ticket
{
  ticketCopy = ticket;
  v9.receiver = self;
  v9.super_class = _MKExploreGuidesTicket;
  v6 = [(_MKExploreGuidesTicket *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, ticket);
  }

  return v7;
}

@end