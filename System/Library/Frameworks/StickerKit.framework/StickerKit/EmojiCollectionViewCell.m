@interface EmojiCollectionViewCell
- (_TtC10StickerKit23EmojiCollectionViewCell)initWithCoder:(id)a3;
- (void)handleTap;
- (void)layoutSubviews;
@end

@implementation EmojiCollectionViewCell

- (_TtC10StickerKit23EmojiCollectionViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_indexPath;
  v5 = sub_19A7A9094();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell____lazy_storage___hostingController) = 0;
  v6 = OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_viewModel;
  type metadata accessor for EmojiCellViewModel();
  swift_allocObject();
  *(&self->super.super.super.super.super.super.isa + v6) = sub_19A63FE08();
  result = sub_19A7ABE34();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(BaseEmojiAndStickerCollectionViewCell *)&v5 layoutSubviews];
  v3 = sub_19A79AFA0();
  v4 = [v3 view];

  if (v4)
  {
    [v2 bounds];
    [v4 setFrame_];

    sub_19A79B59C();
  }

  else
  {
    __break(1u);
  }
}

- (void)handleTap
{
  v2 = self;
  sub_19A79B838();
}

@end