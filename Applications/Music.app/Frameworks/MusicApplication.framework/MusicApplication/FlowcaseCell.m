@interface FlowcaseCell
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSubtitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FlowcaseCell

- (void)setSubtitle:(id)a3
{
  if (a3)
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
  v9 = self;
  sub_8590C(v7, v8);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_873C8();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_87490();
}

- (void)clearArtworkCatalogs
{
  v2 = self;
  sub_88530();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_88634(a3);
}

@end