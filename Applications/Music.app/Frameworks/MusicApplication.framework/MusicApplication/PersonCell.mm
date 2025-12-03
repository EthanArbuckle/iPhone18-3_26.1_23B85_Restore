@interface PersonCell
- (NSString)personName;
- (_TtC16MusicApplication10PersonCell)initWithCoder:(id)coder;
- (void)setPersonName:(id)name;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PersonCell

- (_TtC16MusicApplication10PersonCell)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC16MusicApplication10PersonCell_personName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkSize) = vdupq_n_s64(0x4049000000000000uLL);
  *(self + OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkSize) = vdupq_n_s64(0x404E000000000000uLL);
  v4 = (self + OBJC_IVAR____TtC16MusicApplication10PersonCell_compactArtworkEdgeInsets);
  *v4 = xmmword_B0EC40;
  v4[1] = xmmword_B0EC50;
  v5 = (self + OBJC_IVAR____TtC16MusicApplication10PersonCell_regularArtworkEdgeInsets);
  __asm { FMOV            V1.2D, #12.0 }

  *v5 = xmmword_AFF7B0;
  v5[1] = _Q1;
  v11 = (self + OBJC_IVAR____TtC16MusicApplication10PersonCell_textComponents);
  *v11 = sub_42A614();
  v11[1] = v12;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (NSString)personName
{

  v2 = sub_AB9260();

  return v2;
}

- (void)setPersonName:(id)name
{
  v5 = sub_AB92A0();
  v6 = (self + OBJC_IVAR____TtC16MusicApplication10PersonCell_personName);
  *v6 = v5;
  v6[1] = v7;
  nameCopy = name;
  selfCopy = self;

  v10 = *(selfCopy + OBJC_IVAR____TtC16MusicApplication10PersonCell_textComponents);

  v11 = String.trim()();

  swift_beginAccess();
  v10[7] = v11;

  sub_2EB704();
  [(PersonCell *)selfCopy setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  traitCollection = [(PersonCell *)selfCopy traitCollection];
  sub_42A7A8(traitCollection, *(selfCopy + OBJC_IVAR____TtC16MusicApplication10PersonCell_textComponents));
  sub_42A2EC();
}

@end