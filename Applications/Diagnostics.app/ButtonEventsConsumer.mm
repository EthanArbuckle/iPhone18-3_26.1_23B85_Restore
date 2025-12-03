@interface ButtonEventsConsumer
- (_TtC11Diagnostics20ButtonEventsConsumer)init;
- (void)consume:(unint64_t)consume;
@end

@implementation ButtonEventsConsumer

- (_TtC11Diagnostics20ButtonEventsConsumer)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler);
  v4 = type metadata accessor for ButtonEventsConsumer();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(ButtonEventsConsumer *)&v6 init];
}

- (void)consume:(unint64_t)consume
{
  selfCopy = self;
  sub_10010F060();
}

@end