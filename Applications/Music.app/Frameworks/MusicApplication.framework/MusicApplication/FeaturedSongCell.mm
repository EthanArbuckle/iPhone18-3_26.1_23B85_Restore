@interface FeaturedSongCell
- (void)clearArtworkCatalogs;
- (void)layoutSubviews;
- (void)setHeadline:(id)headline;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FeaturedSongCell

- (void)setHeadline:(id)headline
{
  v5 = sub_AB92A0();
  v6 = (self + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_headline);
  *v6 = v5;
  v6[1] = v7;
  headlineCopy = headline;
  selfCopy = self;

  v10 = *(selfCopy + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textComponents);

  v11 = String.trim()();

  swift_beginAccess();
  v10[7] = v11;

  sub_2EB704();
}

- (void)setTitle:(id)title
{
  v5 = sub_AB92A0();
  v6 = (self + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_title);
  *v6 = v5;
  v6[1] = v7;
  titleCopy = title;
  selfCopy = self;

  v10 = *(selfCopy + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textComponents + 8);

  v11 = String.trim()();

  swift_beginAccess();
  v10[7] = v11;

  sub_2EB704();
}

- (void)setSubtitle:(id)subtitle
{
  v5 = sub_AB92A0();
  v6 = (self + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_subtitle);
  *v6 = v5;
  v6[1] = v7;
  subtitleCopy = subtitle;
  selfCopy = self;

  v10 = *(selfCopy + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_textComponents + 16);

  v11 = String.trim()();

  swift_beginAccess();
  v10[7] = v11;

  sub_2EB704();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1DA9C8();
}

- (void)clearArtworkCatalogs
{
  v2 = *(self + OBJC_IVAR____TtC16MusicApplication16FeaturedSongCell_artworkComponent);
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
  sub_1DACD8(change);
}

@end