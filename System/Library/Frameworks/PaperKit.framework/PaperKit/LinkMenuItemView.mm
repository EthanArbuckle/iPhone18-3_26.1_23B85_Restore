@interface LinkMenuItemView
- (_TtC8PaperKit16LinkMenuItemView)initWithCoder:(id)coder;
- (_TtC8PaperKit16LinkMenuItemView)initWithFrame:(CGRect)frame;
- (void)tapGestureHandler:(id)handler;
@end

@implementation LinkMenuItemView

- (_TtC8PaperKit16LinkMenuItemView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit16LinkMenuItemView____lazy_storage___imageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit16LinkMenuItemView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit16LinkMenuItemView____lazy_storage___subtitleLabel) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC8PaperKit16LinkMenuItemView_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)tapGestureHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  specialized LinkMenuItemView.tapGestureHandler(_:)();
}

- (_TtC8PaperKit16LinkMenuItemView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end