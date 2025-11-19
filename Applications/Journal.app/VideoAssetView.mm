@interface VideoAssetView
- (void)autoPlayEnabledStatusDidChange;
- (void)dealloc;
- (void)finishedPlayingWithNotification:(id)a3;
- (void)layoutSubviews;
@end

@implementation VideoAssetView

- (void)layoutSubviews
{
  v2 = self;
  sub_10009B908();
}

- (void)dealloc
{
  v2 = self;
  sub_100815D10();
  sub_1008167E0();
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v2];

  v4 = *(&v2->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  *(&v2->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView) = 0;

  v5.receiver = v2;
  v5.super_class = type metadata accessor for VideoAssetView();
  [(VideoAssetView *)&v5 dealloc];
}

- (void)autoPlayEnabledStatusDidChange
{
  v2 = self;
  sub_1008162CC();
}

- (void)finishedPlayingWithNotification:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14VideoAssetView_isAutoPlaying) = 0;
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction);
  if (v3)
  {
    v4 = self;
    v5 = sub_100021E80(v3);
    v3(v5);

    sub_100004DF8(v3);
  }
}

@end