@interface CRLCommand
- (_TtC8Freeform10CRLCommand)init;
@end

@implementation CRLCommand

- (_TtC8Freeform10CRLCommand)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform10CRLCommand_committed) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform10CRLCommand_shouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLCommand();
  return [(CRLCommand *)&v3 init];
}

@end