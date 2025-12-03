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
  view = [v3 view];

  if (view)
  {
    [v2 bounds];
    [view setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (void)handleTap
{
  selfCopy = self;
  sub_19A79988C();
}

@end