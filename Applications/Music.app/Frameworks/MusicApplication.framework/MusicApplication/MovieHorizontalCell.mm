@interface MovieHorizontalCell
+ (UIEdgeInsets)visualContentInsets;
- (NSDate)releaseDate;
- (NSString)title;
- (_TtC16MusicApplication19MovieHorizontalCell)initWithCoder:(id)coder;
- (void)setReleaseDate:(id)date;
- (void)setTitle:(id)title;
@end

@implementation MovieHorizontalCell

- (_TtC16MusicApplication19MovieHorizontalCell)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_releaseDate;
  v6 = sub_AB3430();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_duration;
  *v7 = 0;
  v7[8] = 1;
  *(self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_contentRatingAndWhatever) = &_swiftEmptyArrayStorage;
  v8 = (self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_detailTextComponents);
  *v8 = sub_2ED38();
  v8[1] = v9;
  v8[2] = v10;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (NSString)title
{

  v2 = sub_AB9260();

  return v2;
}

- (void)setTitle:(id)title
{
  v5 = sub_AB92A0();
  v6 = (self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title);
  v7 = *(self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title);
  v8 = *(self + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title + 8);
  *v6 = v5;
  v6[1] = v9;
  titleCopy = title;
  selfCopy = self;
  sub_2DD6C(v7, v8);
}

- (NSDate)releaseDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(self + v6, v5);
  v7 = sub_AB3430();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = sub_AB3370().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setReleaseDate:(id)date
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  if (date)
  {
    sub_AB33F0();
    v11 = sub_AB3430();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_AB3430();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(self + v13, v8);
  swift_beginAccess();
  selfCopy = self;
  sub_2F0A8(v10, self + v13);
  swift_endAccess();
  sub_2E13C(v8);
  sub_12E1C(v8, &unk_E01230);
  sub_12E1C(v10, &unk_E01230);
}

+ (UIEdgeInsets)visualContentInsets
{
  v2 = 10.0;
  v3 = 0.0;
  v4 = 10.0;
  v5 = 10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end