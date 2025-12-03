@interface HeroCarouselView
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (void)layoutSubviews;
- (void)pageControlDidChange;
- (void)setAccessibilityTraits:(unint64_t)traits;
@end

@implementation HeroCarouselView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100469048();
}

- (void)pageControlDidChange
{
  selfCopy = self;
  sub_100469B54();
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HeroCarouselView();
  [(HeroCarouselView *)&v4 setAccessibilityTraits:traits];
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v3 = 0;
  if (scroll == 2)
  {
    v4 = 1;
LABEL_5:
    selfCopy = self;
    sub_1005C519C(v4);

    return 1;
  }

  return v3;
}

@end