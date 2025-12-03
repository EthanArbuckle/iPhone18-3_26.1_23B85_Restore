@interface PosterCell
- (NSString)accessibilityAltText;
- (NSString)description;
- (UIImage)materialImage;
- (void)layoutSubviews;
- (void)setNeedsLayout;
- (void)setOverlayTitleText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PosterCell

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_3758C(change);
}

- (void)setOverlayTitleText:(id)text
{
  v5 = sub_AB92A0();
  v6 = (self + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText);
  v7 = *(self + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText);
  v8 = *(self + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8);
  *v6 = v5;
  v6[1] = v9;
  textCopy = text;
  selfCopy = self;
  sub_38048(v7, v8);
}

- (UIImage)materialImage
{
  if (*(self + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) == 2)
  {
    image = [*(*(self + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) image];
  }

  else
  {
    image = 0;
  }

  return image;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_3A5A8();
}

- (void)setNeedsLayout
{
  sub_13C80(0, &qword_DE8ED0);
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  selfCopy = self;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3F970, v3);
}

- (NSString)description
{
  selfCopy = self;
  sub_3BF18();

  v3 = sub_AB9260();

  return v3;
}

- (NSString)accessibilityAltText
{

  v2 = sub_AB9260();

  return v2;
}

@end