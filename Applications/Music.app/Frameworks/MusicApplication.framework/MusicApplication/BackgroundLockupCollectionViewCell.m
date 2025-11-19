@interface BackgroundLockupCollectionViewCell
- (CGRect)bounds;
- (CGRect)frame;
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  BackgroundLockupCollectionViewCell.bounds.setter(x, y, width, height);
}

- (void)layoutSubviews
{
  v2 = self;
  BackgroundLockupCollectionViewCell.layoutSubviews()();
}

- (void)clearArtworkCatalogs
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication34BackgroundLockupCollectionViewCell_artworkComponent);
  v3 = v2[14];
  v4 = self;
  [v3 clearArtworkCatalogs];
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  v2[25] = 0;
  v2[26] = 0;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  BackgroundLockupCollectionViewCell.traitCollectionDidChange(_:)(v9);
}

@end