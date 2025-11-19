@interface UndoButtonSolarium
- (_TtC7Measure18UndoButtonSolarium)init;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)undoFrom:(id)a3;
@end

@implementation UndoButtonSolarium

- (_TtC7Measure18UndoButtonSolarium)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)undoFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001B3778();
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1001B38A8();

  return v9;
}

@end