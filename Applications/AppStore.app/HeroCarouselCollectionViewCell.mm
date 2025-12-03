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
  sub_10066B08C();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10066B1F0();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_10066B460(attributesCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  sub_100005744(0, &qword_100978360);
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  if (static NSObject.== infix(_:_:)())
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
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler);
  if (v3)
  {
    v4 = *(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl);
    selfCopy = self;
    sub_10000827C(v3);
    v3([v4 currentPage]);

    sub_10001F63C(v3);
  }
}

@end