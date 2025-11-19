@interface PlaylistCell
- (_TtC16MusicApplication12PlaylistCell)initWithCoder:(id)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)setIsDisabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PlaylistCell

- (_TtC16MusicApplication12PlaylistCell)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC16MusicApplication12PlaylistCell_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (self + OBJC_IVAR____TtC16MusicApplication12PlaylistCell_subtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (self + OBJC_IVAR____TtC16MusicApplication12PlaylistCell_textComponents);
  *v5 = sub_1AC984();
  v5[1] = v6;
  v5[2] = v7;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)setIsDisabled:(BOOL)a3
{
  v4 = self;
  sub_1AC36C(a3);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1ACDCC(v4);

  return v6;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1AC654(a3);
}

@end