@interface VideoAssetView
- (void)autoPlayEnabledStatusDidChange;
- (void)dealloc;
- (void)finishedPlayingWithNotification:(id)a3;
- (void)layoutSubviews;
@end

@implementation VideoAssetView

- (void)dealloc
{
  v2 = self;
  sub_266D8();
  sub_282F8();
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v2];

  v4 = *(&v2->super.super.super.super.isa + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerView);
  *(&v2->super.super.super.super.isa + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_playerView) = 0;

  v5.receiver = v2;
  v5.super_class = type metadata accessor for VideoAssetView();
  [(VideoAssetView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_28030();
}

- (void)autoPlayEnabledStatusDidChange
{
  v2 = self;
  sub_28154();
}

- (void)finishedPlayingWithNotification:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_isAutoPlaying) = 0;
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20JournalNotifications14VideoAssetView_finishPlayingAction);
  if (v3)
  {
    v4 = self;
    v5 = sub_28E30(v3);
    v3(v5);

    sub_2881C(v3);
  }
}

@end