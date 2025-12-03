@interface HeroCarouselScrollView
- (CGRect)frame;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setFrame:(CGRect)frame;
@end

@implementation HeroCarouselScrollView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for HeroCarouselScrollView();
  [(HeroCarouselScrollView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = type metadata accessor for HeroCarouselScrollView();
  v19.receiver = self;
  v19.super_class = v8;
  selfCopy = self;
  [(HeroCarouselScrollView *)&v19 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = selfCopy;
  v18.super_class = v8;
  [(HeroCarouselScrollView *)&v18 setFrame:x, y, width, height];
  [(HeroCarouselScrollView *)selfCopy frame];
  v21.origin.x = v11;
  v21.origin.y = v13;
  v21.size.width = v15;
  v21.size.height = v17;
  if (!CGRectEqualToRect(v20, v21))
  {
    *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout) = 1;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HeroCarouselScrollView();
  v2 = v3.receiver;
  [(HeroCarouselScrollView *)&v3 layoutSubviews];
  sub_10034A728();
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_10034C748();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_10034C8F8();
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    selfCopy = self;
    sub_10034BCA4(1);
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  selfCopy = self;
  sub_10034BCA4(1);
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  sub_10034BB70(animationCopy);
}

@end