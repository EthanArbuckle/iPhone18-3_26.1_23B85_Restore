@interface DeleteButton
- (_TtC7Measure12DeleteButton)initWithCoder:(id)coder;
- (void)setDeleteButton:(id)button;
- (void)tapDeleteFrom:(id)from;
@end

@implementation DeleteButton

- (void)setDeleteButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure12DeleteButton_deleteButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure12DeleteButton_deleteButton) = button;
  buttonCopy = button;
}

- (_TtC7Measure12DeleteButton)initWithCoder:(id)coder
{
  *&self->delegate[OBJC_IVAR____TtC7Measure12DeleteButton_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure12DeleteButton_isEnabled) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)tapDeleteFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_1001B8A94();
}

@end