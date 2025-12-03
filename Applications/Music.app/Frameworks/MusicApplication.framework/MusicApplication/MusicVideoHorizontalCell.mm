@interface MusicVideoHorizontalCell
- (_TtC16MusicApplication24MusicVideoHorizontalCell)initWithCoder:(id)coder;
- (void)setAdditionalDescription:(id)description;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation MusicVideoHorizontalCell

- (_TtC16MusicApplication24MusicVideoHorizontalCell)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_layoutStyle) = 0;
  v3 = (self + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (self + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_subtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (self + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_additionalDescription);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)setTitle:(id)title
{
  v5 = sub_AB92A0();
  v7 = v6;
  v8 = (self + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_title);
  *v8 = v5;
  v8[1] = v6;
  titleCopy = title;
  selfCopy = self;

  v11 = *(selfCopy + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents);
  swift_beginAccess();
  *(v11 + 112) = v5;
  *(v11 + 120) = v7;

  sub_2EB704();
}

- (void)setSubtitle:(id)subtitle
{
  v5 = sub_AB92A0();
  v7 = v6;
  v8 = (self + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_subtitle);
  *v8 = v5;
  v8[1] = v6;
  subtitleCopy = subtitle;
  selfCopy = self;

  v11 = *(selfCopy + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents + 8);
  swift_beginAccess();
  *(v11 + 112) = v5;
  *(v11 + 120) = v7;

  sub_2EB704();
}

- (void)setAdditionalDescription:(id)description
{
  v5 = sub_AB92A0();
  v7 = v6;
  v8 = (self + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_additionalDescription);
  *v8 = v5;
  v8[1] = v6;
  descriptionCopy = description;
  selfCopy = self;

  v11 = *(selfCopy + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents + 16);
  swift_beginAccess();
  *(v11 + 112) = v5;
  *(v11 + 120) = v7;

  sub_2EB704();
}

@end