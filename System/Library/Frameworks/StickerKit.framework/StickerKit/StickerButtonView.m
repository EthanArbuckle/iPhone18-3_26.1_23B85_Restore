@interface StickerButtonView
- (_TtC10StickerKit17StickerButtonView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation StickerButtonView

- (_TtC10StickerKit17StickerButtonView)initWithCoder:(id)a3
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit17StickerButtonView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10StickerKit17StickerButtonView____lazy_storage___launchStickersButton) = 0;
  result = sub_19A7ABE34();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(StickerButtonView *)&v4 layoutSubviews];
  v3 = sub_19A6EEA94();
  [v2 bounds];
  [v3 setFrame_];
}

@end