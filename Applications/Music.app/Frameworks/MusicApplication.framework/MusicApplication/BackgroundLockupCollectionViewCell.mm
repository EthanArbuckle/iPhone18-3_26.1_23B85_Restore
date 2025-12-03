@interface BackgroundLockupCollectionViewCell
- (CGRect)bounds;
- (CGRect)frame;
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BackgroundLockupCollectionViewCell

- (CGRect)frame
{
  sub_349634(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  BackgroundLockupCollectionViewCell.frame.setter(x, y, width, height);
}

- (CGRect)bounds
{
  sub_349634(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  BackgroundLockupCollectionViewCell.bounds.setter(x, y, width, height);
}

- (void)layoutSubviews
{
  selfCopy = self;
  BackgroundLockupCollectionViewCell.layoutSubviews()();
}

- (void)clearArtworkCatalogs
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
  v3 = v2[14];
  selfCopy = self;
  [v3 clearArtworkCatalogs];
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  v2[25] = 0;
  v2[26] = 0;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  BackgroundLockupCollectionViewCell.traitCollectionDidChange(_:)(v9);
}

@end