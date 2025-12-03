@interface DefaultHeaderContentView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
@end

@implementation DefaultHeaderContentView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_E573C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_E5BD0();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)music_inheritedLayoutInsetsDidChange
{
  selfCopy = self;
  sub_E5F1C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_E60D0();
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_E726C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v3 = sub_E74F0();

  return v3;
}

@end