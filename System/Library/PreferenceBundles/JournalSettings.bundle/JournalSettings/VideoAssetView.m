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
  sub_2FC48();
  sub_31868();
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v2];

  v4 = *(&v2->super.super.super.super.isa + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView);
  *(&v2->super.super.super.super.isa + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_playerView) = 0;

  v5.receiver = v2;
  v5.super_class = type metadata accessor for VideoAssetView();
  [(VideoAssetView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_315A0();
}

- (void)autoPlayEnabledStatusDidChange
{
  v2 = self;
  sub_316C4();
}

- (void)finishedPlayingWithNotification:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_isAutoPlaying) = 0;
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15JournalSettings14VideoAssetView_finishPlayingAction);
  if (v3)
  {
    v4 = self;
    v5 = sub_322F0(v3);
    v3(v5);

    sub_31D8C(v3);
  }
}

@end