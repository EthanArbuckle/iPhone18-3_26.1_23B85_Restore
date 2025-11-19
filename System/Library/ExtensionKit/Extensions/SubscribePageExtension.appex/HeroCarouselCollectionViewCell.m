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
  sub_10048C6A8();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10048C80C();
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10048CA7C(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  sub_100016C60(0, &qword_1009327F0);
  v7 = a3;
  v8 = a4;
  v9 = self;
  if (sub_100753FC4())
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
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler);
  if (v3)
  {
    v4 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl);
    v5 = self;
    sub_10001B5AC(v3);
    v3([v4 currentPage]);

    sub_1000164A8(v3);
  }
}

@end