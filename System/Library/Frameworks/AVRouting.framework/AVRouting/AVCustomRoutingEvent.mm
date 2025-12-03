@interface AVCustomRoutingEvent
- (AVCustomRoutingEvent)init;
- (id)description;
- (void)dealloc;
@end

@implementation AVCustomRoutingEvent

- (AVCustomRoutingEvent)init
{
  v3.receiver = self;
  v3.super_class = AVCustomRoutingEvent;
  return [(AVCustomRoutingEvent *)&v3 init];
}

- (void)dealloc
{
  self->_route = 0;
  v3.receiver = self;
  v3.super_class = AVCustomRoutingEvent;
  [(AVCustomRoutingEvent *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  reason = [(AVCustomRoutingEvent *)self reason];
  if (reason > AVCustomRoutingEventReasonReactivate)
  {
    v5 = @"?";
  }

  else
  {
    v5 = off_1E794F790[reason];
  }

  return [v3 stringWithFormat:@"<reason: %@, route: %@>", v5, -[AVCustomRoutingEvent route](self, "route")];
}

@end