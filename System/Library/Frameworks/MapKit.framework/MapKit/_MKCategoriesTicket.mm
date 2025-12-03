@interface _MKCategoriesTicket
- (_MKCategoriesTicket)initWithTicket:(id)ticket;
- (void)submitWithHandler:(id)handler networkActivity:(id)activity;
@end

@implementation _MKCategoriesTicket

- (void)submitWithHandler:(id)handler networkActivity:(id)activity
{
  handlerCopy = handler;
  activityCopy = activity;
  if (handlerCopy)
  {
    ticket = self->_ticket;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57___MKCategoriesTicket_submitWithHandler_networkActivity___block_invoke;
    v11[3] = &unk_1E76C8490;
    v12 = handlerCopy;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57___MKCategoriesTicket_submitWithHandler_networkActivity___block_invoke_3;
    v9[3] = &unk_1E76C9DD8;
    v10 = activityCopy;
    [(GEOMapServiceCategoriesTicket *)ticket submitWithHandler:v11 networkActivity:v9];
  }
}

- (_MKCategoriesTicket)initWithTicket:(id)ticket
{
  ticketCopy = ticket;
  v10.receiver = self;
  v10.super_class = _MKCategoriesTicket;
  v6 = [(_MKCategoriesTicket *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, ticket);
    v8 = v7;
  }

  return v7;
}

@end