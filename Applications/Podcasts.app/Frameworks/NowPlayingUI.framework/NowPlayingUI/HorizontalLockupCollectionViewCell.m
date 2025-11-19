@interface HorizontalLockupCollectionViewCell
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HorizontalLockupCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_B4FEC();
}

- (void)clearArtworkCatalogs
{
  v2 = self;
  sub_B5A74();
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  v2 = v4.receiver;
  [(HorizontalLockupCollectionViewCell *)&v4 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
  v3 = *&v2[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
  if (v3)
  {

    v3(v2);

    sub_2173C(v3);
  }

  else
  {
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_B5BA8(a3);
}

- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)a3
{
  v4 = self;
  [(HorizontalLockupCollectionViewCell *)v4 setNeedsLayout];
  v3 = *&v4->_anon_0[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
  if (v3)
  {

    v3(v4);

    sub_2173C(v3);
  }

  else
  {
  }
}

@end