@interface HeroCarouselView
- (BOOL)accessibilityScroll:(int64_t)a3;
- (void)layoutSubviews;
- (void)pageControlDidChange;
- (void)setAccessibilityTraits:(unint64_t)a3;
@end

@implementation HeroCarouselView

- (void)layoutSubviews
{
  v2 = self;
  sub_18E9CC();
}

- (void)pageControlDidChange
{
  v2 = self;
  sub_18F4D8();
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HeroCarouselView();
  [(HeroCarouselView *)&v4 setAccessibilityTraits:a3];
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v3 = 0;
  if (a3 == 2)
  {
    v4 = 1;
LABEL_5:
    v5 = self;
    sub_543FF8(v4);

    return 1;
  }

  return v3;
}

@end