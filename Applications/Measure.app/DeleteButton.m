@interface DeleteButton
- (_TtC7Measure12DeleteButton)initWithCoder:(id)a3;
- (void)setDeleteButton:(id)a3;
- (void)tapDeleteFrom:(id)a3;
@end

@implementation DeleteButton

- (void)setDeleteButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure12DeleteButton_deleteButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure12DeleteButton_deleteButton) = a3;
  v3 = a3;
}

- (_TtC7Measure12DeleteButton)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC7Measure12DeleteButton_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure12DeleteButton_isEnabled) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)tapDeleteFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001B8A94();
}

@end