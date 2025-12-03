@interface FlowcaseCell
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSubtitle:(id)subtitle;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FlowcaseCell

- (void)setSubtitle:(id)subtitle
{
  if (subtitle)
  {
    v4 = sub_AB92A0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle);
  v7 = *(self + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle);
  v8 = *(self + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle + 8);
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_8590C(v7, v8);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_873C8();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_87490();
}

- (void)clearArtworkCatalogs
{
  selfCopy = self;
  sub_88530();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_88634(change);
}

@end