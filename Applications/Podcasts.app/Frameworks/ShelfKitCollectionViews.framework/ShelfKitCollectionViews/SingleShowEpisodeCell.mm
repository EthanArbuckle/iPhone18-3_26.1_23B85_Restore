@interface SingleShowEpisodeCell
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)didMoveToWindow;
- (void)prepareForReuse;
@end

@implementation SingleShowEpisodeCell

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_100E9C(attributesCopy);
  v7 = v6;

  return v7;
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(SingleShowEpisodeCell *)&v7 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_episodeInfoView];
  if (v3)
  {
    v4 = v3;
    EpisodeInfoView.endUpdates()();

    v5 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_artworkView];
    if (v5)
    {
      v6 = v5;
      sub_21CDE0();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v2 = v8.receiver;
  [(SingleShowEpisodeCell *)&v8 didMoveToWindow];
  window = [v2 window];
  if (window)
  {
    v4 = window;
    screen = [window screen];
    [screen scale];
    v7 = v6;

    *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_displayScale] = v7;
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  if (view)
  {
    v5 = view;
    objc_opt_self();
    view = swift_dynamicCastObjCClass();
    if (!view)
    {

      view = 0;
    }
  }

  v6 = view == 0;

  return v6;
}

@end