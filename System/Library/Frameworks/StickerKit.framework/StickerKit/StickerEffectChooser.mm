@interface StickerEffectChooser
- (CGSize)intrinsicContentSize;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
@end

@implementation StickerEffectChooser

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_19A72E9A0(tapCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_19A72ED1C();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_19A72F484();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end