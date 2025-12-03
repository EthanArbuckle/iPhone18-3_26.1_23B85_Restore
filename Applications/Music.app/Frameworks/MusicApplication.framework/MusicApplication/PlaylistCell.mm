@interface PlaylistCell
- (_TtC16MusicApplication12PlaylistCell)initWithCoder:(id)coder;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)setIsDisabled:(BOOL)disabled;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PlaylistCell

- (_TtC16MusicApplication12PlaylistCell)initWithCoder:(id)coder
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

- (void)setIsDisabled:(BOOL)disabled
{
  selfCopy = self;
  sub_1AC36C(disabled);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6 = sub_1ACDCC(attributesCopy);

  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1AC654(change);
}

@end