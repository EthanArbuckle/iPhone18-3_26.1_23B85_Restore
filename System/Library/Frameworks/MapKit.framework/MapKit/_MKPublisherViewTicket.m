@interface _MKPublisherViewTicket
- (_MKPublisherViewTicket)initWithTicket:(id)a3;
- (void)submitWithCallbackQueue:(id)a3 handler:(id)a4 networkActivity:(id)a5;
@end

@implementation _MKPublisherViewTicket

- (void)submitWithCallbackQueue:(id)a3 handler:(id)a4 networkActivity:(id)a5
{
  v8 = a3;
  v9 = a4;
  ticket = self->_ticket;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74___MKPublisherViewTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke;
  v13[3] = &unk_1E76C8580;
  v14 = v8;
  v15 = v9;
  v11 = v8;
  v12 = v9;
  [(GEOMapServicePublisherViewTicket *)ticket submitWithHandler:v13 networkActivity:a5];
}

- (_MKPublisherViewTicket)initWithTicket:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MKPublisherViewTicket;
  v6 = [(_MKPublisherViewTicket *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, a3);
  }

  return v7;
}

@end