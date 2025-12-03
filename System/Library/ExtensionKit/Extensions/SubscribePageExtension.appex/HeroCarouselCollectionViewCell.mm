@interface HeroCarouselCollectionViewCell
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)applyLayoutAttributes:(id)attributes;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation HeroCarouselCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10048C6A8();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10048C80C();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_10048CA7C(attributesCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  sub_100016C60(0, &qword_1009327F0);
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  if (sub_100753FC4())
  {
    view = [touchCopy view];

    if (!view)
    {
      return 0;
    }

    type metadata accessor for HeroCarouselItemView();
    v11 = swift_dynamicCastClass() != 0;
    selfCopy = view;
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (void)handleTap:(id)tap
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler);
  if (v3)
  {
    v4 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl);
    selfCopy = self;
    sub_10001B5AC(v3);
    v3([v4 currentPage]);

    sub_1000164A8(v3);
  }
}

@end