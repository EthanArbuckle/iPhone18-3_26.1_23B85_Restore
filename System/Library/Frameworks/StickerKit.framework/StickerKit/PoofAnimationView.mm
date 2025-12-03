@interface PoofAnimationView
- (_TtC10StickerKit17PoofAnimationView)initWithCoder:(id)coder;
- (_TtC10StickerKit17PoofAnimationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PoofAnimationView

- (_TtC10StickerKit17PoofAnimationView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit17PoofAnimationView_puffs) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit17PoofAnimationView_count) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit17PoofAnimationView_completionHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_19A7ABE34();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_19A6BEDFC();
}

- (_TtC10StickerKit17PoofAnimationView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end