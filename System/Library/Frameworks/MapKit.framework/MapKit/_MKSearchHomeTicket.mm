@interface _MKSearchHomeTicket
- (_MKSearchHomeTicket)initWithTicket:(id)a3;
- (void)submitWithCallbackQueue:(id)a3 handler:(id)a4 networkActivity:(id)a5;
@end

@implementation _MKSearchHomeTicket

- (void)submitWithCallbackQueue:(id)a3 handler:(id)a4 networkActivity:(id)a5
{
  v8 = a3;
  v9 = a4;
  ticket = self->_ticket;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71___MKSearchHomeTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke;
  v13[3] = &unk_1E76C8558;
  v14 = v8;
  v15 = v9;
  v11 = v8;
  v12 = v9;
  [(GEOMapServiceSearchHomeTicket *)ticket submitWithHandler:v13 networkActivity:a5];
}

- (_MKSearchHomeTicket)initWithTicket:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MKSearchHomeTicket;
  v6 = [(_MKSearchHomeTicket *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, a3);
  }

  return v7;
}

@end