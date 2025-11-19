@interface NWConcrete_nw_ws_ping_request
- (void)dealloc;
@end

@implementation NWConcrete_nw_ws_ping_request

- (void)dealloc
{
  contents = self->contents;
  self->contents = 0;

  client_queue = self->client_queue;
  self->client_queue = 0;

  pong_handler = self->pong_handler;
  self->pong_handler = 0;

  v6.receiver = self;
  v6.super_class = NWConcrete_nw_ws_ping_request;
  [(NWConcrete_nw_ws_ping_request *)&v6 dealloc];
}

@end