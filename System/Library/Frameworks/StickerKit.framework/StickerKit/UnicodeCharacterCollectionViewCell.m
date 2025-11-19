@interface UnicodeCharacterCollectionViewCell
- (void)handleTap;
- (void)layoutSubviews;
@end

@implementation UnicodeCharacterCollectionViewCell

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(BaseEmojiAndStickerCollectionViewCell *)&v5 layoutSubviews];
  v3 = sub_19A7994EC();
  v4 = [v3 view];

  if (v4)
  {
    [v2 bounds];
    [v4 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (void)handleTap
{
  v2 = self;
  sub_19A79988C();
}

@end