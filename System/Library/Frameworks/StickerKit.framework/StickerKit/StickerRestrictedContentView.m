@interface StickerRestrictedContentView
- (_TtC10StickerKit28StickerRestrictedContentView)initWithCoder:(id)a3;
- (void)handleRestrictedContentTap;
@end

@implementation StickerRestrictedContentView

- (_TtC10StickerKit28StickerRestrictedContentView)initWithCoder:(id)a3
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView_restrictedContentView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView____lazy_storage___tapGestureRecognizer) = 0;
  result = sub_19A7ABE34();
  __break(1u);
  return result;
}

- (void)handleRestrictedContentTap
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
    sub_19A6EE154();
    swift_unknownObjectRelease();
  }
}

@end