@interface HorizontalLockupCollectionViewCell
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)category;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HorizontalLockupCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_B4FEC();
}

- (void)clearArtworkCatalogs
{
  selfCopy = self;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_B5BA8(change);
}

- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)category
{
  selfCopy = self;
  [(HorizontalLockupCollectionViewCell *)selfCopy setNeedsLayout];
  v3 = *&selfCopy->_anon_0[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
  if (v3)
  {

    v3(selfCopy);

    sub_2173C(v3);
  }

  else
  {
  }
}

@end