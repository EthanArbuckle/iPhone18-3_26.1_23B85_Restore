@interface SingleShowEpisodeCell
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)didMoveToWindow;
- (void)prepareForReuse;
@end

@implementation SingleShowEpisodeCell

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100E9C(v4);
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
  v3 = [v2 window];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 screen];
    [v5 scale];
    v7 = v6;

    *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews21SingleShowEpisodeCell_displayScale] = v7;
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [a4 view];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {

      v4 = 0;
    }
  }

  v6 = v4 == 0;

  return v6;
}

@end