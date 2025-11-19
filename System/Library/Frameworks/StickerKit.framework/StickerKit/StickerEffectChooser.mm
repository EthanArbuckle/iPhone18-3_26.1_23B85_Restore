@interface StickerEffectChooser
- (CGSize)intrinsicContentSize;
- (void)handleTap:(id)a3;
- (void)layoutSubviews;
@end

@implementation StickerEffectChooser

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A72E9A0(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_19A72ED1C();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
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