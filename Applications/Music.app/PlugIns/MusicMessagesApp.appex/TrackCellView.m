@interface TrackCellView
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setIsExplicit:(BOOL)a3;
- (void)setIsNowPlaying:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TrackCellView

- (void)setIsExplicit:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel;
  v6 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel);
  v7 = self;
  if ([v6 isHidden] == v3)
  {
    [*(&self->super.super.super.super.super.super.isa + v5) setHidden:v3 ^ 1u];
    [(TrackCellView *)v7 setNeedsLayout];
  }
}

- (void)setIsNowPlaying:(BOOL)a3
{
  v3 = a3;
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel);
  v5 = self;
  [v4 setHidden:!v3];
  [*(&v5->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorDimmingView) setHidden:!v3];
  [*(&v5->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView) setHidden:!v3];
  [(TrackCellView *)v5 setNeedsLayout];
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for TrackCellView();
  [(TrackCellView *)&v6 dealloc];
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10001FF40();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100020294();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100020AC0(a3);
}

@end