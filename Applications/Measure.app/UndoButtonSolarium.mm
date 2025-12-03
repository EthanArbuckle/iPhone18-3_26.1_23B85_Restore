@interface UndoButtonSolarium
- (_TtC7Measure18UndoButtonSolarium)init;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)undoFrom:(id)from;
@end

@implementation UndoButtonSolarium

- (_TtC7Measure18UndoButtonSolarium)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)undoFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_1001B3778();
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1001B38A8();

  return v9;
}

@end