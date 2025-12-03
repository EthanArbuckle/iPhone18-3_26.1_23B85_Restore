@interface FeaturedPlaylistCell
+ (UIEdgeInsets)visualContentInsets;
- (_TtC16MusicApplication20FeaturedPlaylistCell)initWithCoder:(id)coder;
@end

@implementation FeaturedPlaylistCell

- (_TtC16MusicApplication20FeaturedPlaylistCell)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_name);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (self + OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_descriptionText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_badgeView) = 0;
  v5 = (self + OBJC_IVAR____TtC16MusicApplication20FeaturedPlaylistCell_textComponents);
  *v5 = sub_F6A78();
  v5[1] = v6;
  v5[2] = v7;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

+ (UIEdgeInsets)visualContentInsets
{
  sub_F6A78();
  v3 = v2;
  if (qword_DE6AC0 != -1)
  {
    swift_once();
  }

  v4 = xmmword_E71560;
  v5 = qword_E71578;
  swift_beginAccess();
  v6 = *(v3 + 104);

  *&v8 = v4 >> 64;
  *&v7 = v4;
  v9 = v6;
  v10 = *&v5;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

@end