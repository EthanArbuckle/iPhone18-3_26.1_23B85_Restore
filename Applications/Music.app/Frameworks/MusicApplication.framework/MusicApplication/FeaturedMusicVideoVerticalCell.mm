@interface FeaturedMusicVideoVerticalCell
+ (unint64_t)visualContentInsets;
- (CGRect)bounds;
- (CGRect)frame;
- (NSDate)releaseDate;
- (NSString)accessibilityDateReleasedText;
- (_TtC16MusicApplication30FeaturedMusicVideoVerticalCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setReleaseDate:(id)date;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FeaturedMusicVideoVerticalCell

- (_TtC16MusicApplication30FeaturedMusicVideoVerticalCell)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (self + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_releaseDate;
  v7 = sub_AB3430();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(self + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_badgeView) = 0;
  v8 = (self + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents);
  *v8 = sub_1735F8();
  v8[1] = v9;
  v8[2] = v10;
  v8[3] = v11;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (NSDate)releaseDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_releaseDate;
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

  v13 = OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(self + v13, v8);
  swift_beginAccess();
  selfCopy = self;
  sub_2F0A8(v10, self + v13);
  swift_endAccess();
  sub_172550(v8);
  sub_12E1C(v8, &unk_E01230);
  sub_12E1C(v10, &unk_E01230);
}

- (CGRect)frame
{
  sub_172ADC(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  sub_172ADC(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_172D7C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_17300C(change);
}

- (NSString)accessibilityDateReleasedText
{
  swift_beginAccess();

  v2 = sub_AB9260();

  return v2;
}

+ (unint64_t)visualContentInsets
{
  sub_1735F8();
  v1 = v0;
  if (qword_DE68F0 != -1)
  {
    swift_once();
  }

  if (v1 >> 62)
  {
    v2 = sub_ABB060();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
LABEL_12:
    }
  }

  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_14:
    sub_36003C(result, v1);
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_10:
    swift_beginAccess();

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

@end