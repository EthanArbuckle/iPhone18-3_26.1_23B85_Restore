@interface PuffView
- (_TtC10StickerKit8PuffView)initWithCoder:(id)coder;
- (_TtC10StickerKit8PuffView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PuffView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_19A6BFB50();
}

- (_TtC10StickerKit8PuffView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit8PuffView_angle) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit8PuffView_favorsCenter) = 0;
  v3 = self + OBJC_IVAR____TtC10StickerKit8PuffView_delegate;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit8PuffView____lazy_storage___imageView) = 0;
  result = sub_19A7ABE34();
  __break(1u);
  return result;
}

- (_TtC10StickerKit8PuffView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end