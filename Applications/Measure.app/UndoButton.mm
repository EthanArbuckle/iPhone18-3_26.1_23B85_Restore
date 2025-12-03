@interface UndoButton
- (_TtC7Measure10UndoButton)initWithCoder:(id)coder;
- (_TtC7Measure10UndoButton)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)setUndoButton:(id)button;
- (void)undoFrom:(id)from;
@end

@implementation UndoButton

- (void)setUndoButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure10UndoButton_undoButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure10UndoButton_undoButton) = button;
  buttonCopy = button;
}

- (_TtC7Measure10UndoButton)initWithCoder:(id)coder
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

- (_TtC7Measure10UndoButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)undoFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_1001CBE40();
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1001CBF70();

  return v9;
}

@end