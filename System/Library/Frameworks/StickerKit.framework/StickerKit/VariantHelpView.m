@interface VariantHelpView
- (_TtC10StickerKit15VariantHelpView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation VariantHelpView

- (void)layoutSubviews
{
  v2 = self;
  sub_19A7577C0();
}

- (_TtC10StickerKit15VariantHelpView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC10StickerKit15VariantHelpView_delegate) = 0;
  swift_unknownObjectWeakInit();
  v9 = self + OBJC_IVAR____TtC10StickerKit15VariantHelpView_emoji;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 24) = 0;
  v10 = self + OBJC_IVAR____TtC10StickerKit15VariantHelpView_style;
  *v10 = 0;
  v10[8] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit15VariantHelpView_hostingController) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(VariantHelpView *)&v12 initWithFrame:x, y, width, height];
}

@end