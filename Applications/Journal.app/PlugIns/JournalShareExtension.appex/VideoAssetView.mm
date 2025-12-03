@interface VideoAssetView
- (void)autoPlayEnabledStatusDidChange;
- (void)dealloc;
- (void)finishedPlayingWithNotification:(id)notification;
- (void)layoutSubviews;
@end

@implementation VideoAssetView

- (void)dealloc
{
  selfCopy = self;
  sub_10002B098();
  sub_10002F1B4();
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v4 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView);
  *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView) = 0;

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for VideoAssetView();
  [(VideoAssetView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10002DEFC();
}

- (void)autoPlayEnabledStatusDidChange
{
  selfCopy = self;
  sub_10002E2E8();
}

- (void)finishedPlayingWithNotification:(id)notification
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isAutoPlaying) = 0;
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_finishPlayingAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_100030340(v3);
    v3(v5);

    sub_10002FB80(v3);
  }
}

@end