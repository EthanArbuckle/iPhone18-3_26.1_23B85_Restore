@interface ChartEpisodeCell
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
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
  v3 = [v2 window];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 screen];
    [v5 scale];
    v7 = v6;

    *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews16ChartEpisodeCell_displayScale] = v7;
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_F7614(v4);

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