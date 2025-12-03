@interface MultiShowEpisodeCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)didMoveToWindow;
- (void)prepareForReuse;
@end

@implementation MultiShowEpisodeCell

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for MultiShowEpisodeCell();
  v2 = v8.receiver;
  [(MultiShowEpisodeCell *)&v8 didMoveToWindow];
  window = [v2 window];
  if (window)
  {
    v4 = window;
    screen = [window screen];
    [screen scale];
    v7 = v6;

    *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_displayScale] = v7;
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_FCB74(attributesCopy);
  v7 = v6;

  return v7;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MultiShowEpisodeCell();
  v2 = v5.receiver;
  [(MultiShowEpisodeCell *)&v5 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews20MultiShowEpisodeCell_episodeInfoView];
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