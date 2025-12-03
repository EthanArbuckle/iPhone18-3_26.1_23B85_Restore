@interface ChartEpisodeCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)didMoveToWindow;
- (void)prepareForReuse;
@end

@implementation ChartEpisodeCell

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v2 = v8.receiver;
  [(ChartEpisodeCell *)&v8 didMoveToWindow];
  window = [v2 window];
  if (window)
  {
    v4 = window;
    screen = [window screen];
    [screen scale];
    v7 = v6;

    *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_displayScale] = v7;
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6 = sub_F7614(attributesCopy);

  return v6;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(ChartEpisodeCell *)&v5 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_episodeInfoView];
  if (v3)
  {
    v4 = v3;
    EpisodeInfoView.endUpdates()();
  }

  else
  {
    __break(1u);
  }
}

@end