@interface UndoButton
- (_TtC7Measure10UndoButton)initWithCoder:(id)a3;
- (_TtC7Measure10UndoButton)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)setUndoButton:(id)a3;
- (void)undoFrom:(id)a3;
@end

@implementation UndoButton

- (void)setUndoButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure10UndoButton_undoButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure10UndoButton_undoButton) = a3;
  v3 = a3;
}

- (_TtC7Measure10UndoButton)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC7Measure10UndoButton_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure10UndoButton_undoButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure10UndoButton_isEnabled) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure10UndoButton_controlType) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Measure10UndoButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)undoFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CBE40();
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1001CBF70();

  return v9;
}

@end