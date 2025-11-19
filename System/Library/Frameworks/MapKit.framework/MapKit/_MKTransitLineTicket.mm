@interface _MKTransitLineTicket
- (_MKTransitLineTicket)initWithTicket:(id)a3;
- (void)submitWithHandler:(id)a3 networkActivity:(id)a4;
@end

@implementation _MKTransitLineTicket

- (void)submitWithHandler:(id)a3 networkActivity:(id)a4
{
  v6 = a3;
  ticket = self->_ticket;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58___MKTransitLineTicket_submitWithHandler_networkActivity___block_invoke;
  v9[3] = &unk_1E76C8490;
  v10 = v6;
  v8 = v6;
  [(GEOMapServiceTransitLineTicket *)ticket submitWithHandler:v9 networkActivity:a4];
}

- (_MKTransitLineTicket)initWithTicket:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MKTransitLineTicket;
  v6 = [(_MKTransitLineTicket *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, a3);
  }

  return v7;
}

@end