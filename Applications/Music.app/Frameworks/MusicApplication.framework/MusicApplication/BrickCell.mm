@interface BrickCell
+ (UIEdgeInsets)visualContentInsets;
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BrickCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_410BCC();
}

- (void)clearArtworkCatalogs
{
  v2 = *(self + OBJC_IVAR____TtC16MusicApplication9BrickCell_artworkComponent);
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
  sub_41181C(change);
}

+ (UIEdgeInsets)visualContentInsets
{
  sub_4126C0();
  v3 = v2;
  swift_beginAccess();
  v4 = *(v3 + 104);

  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = v4;
  result.right = v7;
  result.bottom = v8;
  result.left = v6;
  result.top = v5;
  return result;
}

@end