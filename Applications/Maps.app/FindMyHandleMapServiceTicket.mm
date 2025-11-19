@interface FindMyHandleMapServiceTicket
- (_TtC4Maps28FindMyHandleMapServiceTicket)init;
- (void)cancel;
@end

@implementation FindMyHandleMapServiceTicket

- (void)cancel
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_isCancelled) = 1;
  v3 = OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_ticket;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps28FindMyHandleMapServiceTicket_ticket);
  v5 = self;
  if (v4)
  {
    [v4 cancel];
  }

  *(&self->super.isa + v3) = 0;

  swift_unknownObjectRelease();
}

- (_TtC4Maps28FindMyHandleMapServiceTicket)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end