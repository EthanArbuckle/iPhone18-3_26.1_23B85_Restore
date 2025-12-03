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
  sub_2FC48();
  sub_31868();
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v4 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView);
  *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView) = 0;

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for VideoAssetView();
  [(VideoAssetView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_315A0();
}

- (void)autoPlayEnabledStatusDidChange
{
  selfCopy = self;
  sub_316C4();
}

- (void)finishedPlayingWithNotification:(id)notification
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_isAutoPlaying) = 0;
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_finishPlayingAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_322F0(v3);
    v3(v5);

    sub_31D8C(v3);
  }
}

@end