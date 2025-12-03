@interface SearchLandingCell
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)setTitle:(id)title;
@end

@implementation SearchLandingCell

- (void)setTitle:(id)title
{
  v5 = sub_AB92A0();
  v6 = (self + OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_title);
  v6->_countAndFlagsBits = v5;
  v6->_object = v7;
  titleCopy = title;
  selfCopy = self;

  v9 = String.trim()();

  *v6 = v9;

  [(SearchLandingCell *)selfCopy setNeedsLayout];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_3E5718();
}

- (void)clearArtworkCatalogs
{
  v2 = *(self + OBJC_IVAR____TtC16MusicApplication17SearchLandingCell_artworkComponent);
  v3 = v2[14];
  selfCopy = self;
  [v3 clearArtworkCatalogs];
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  v2[25] = 0;
  v2[26] = 0;
}

@end