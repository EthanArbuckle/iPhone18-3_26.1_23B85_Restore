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
  sub_10026589C();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100265A00();
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100265C70(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  sub_100016F40(0, &qword_10094D040);
  v7 = a3;
  v8 = a4;
  v9 = self;
  if (sub_100770EEC())
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
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler);
  if (v3)
  {
    v4 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl);
    v5 = self;
    sub_10001CE50(v3);
    v3([v4 currentPage]);

    sub_1000167E0(v3);
  }
}

@end