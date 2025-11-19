@interface HeroCarouselCollectionViewCell
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (void)applyLayoutAttributes:(id)a3;
- (void)handleTap:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation HeroCarouselCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_10066B08C();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10066B1F0();
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10066B460(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  sub_100005744(0, &qword_100978360);
  v7 = a3;
  v8 = a4;
  v9 = self;
  if (static NSObject.== infix(_:_:)())
  {
    v10 = [v8 view];

    if (!v10)
    {
      return 0;
    }

    type metadata accessor for HeroCarouselItemView();
    v11 = swift_dynamicCastClass() != 0;
    v9 = v10;
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (void)handleTap:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler);
  if (v3)
  {
    v4 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl);
    v5 = self;
    sub_10000827C(v3);
    v3([v4 currentPage]);

    sub_10001F63C(v3);
  }
}

@end