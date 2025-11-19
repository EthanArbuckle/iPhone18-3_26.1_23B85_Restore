@interface NWConcrete_nw_ws_response
- (void)dealloc;
@end

@implementation NWConcrete_nw_ws_response

- (void)dealloc
{
  selected_subprotocol = self->selected_subprotocol;
  if (selected_subprotocol)
  {
    free(selected_subprotocol);
    self->selected_subprotocol = 0;
  }

  v4.receiver = self;
  v4.super_class = NWConcrete_nw_ws_response;
  [(NWConcrete_nw_ws_response *)&v4 dealloc];
}

@end