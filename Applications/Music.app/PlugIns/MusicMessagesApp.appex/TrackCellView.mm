@interface TrackCellView
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setIsExplicit:(BOOL)explicit;
- (void)setIsNowPlaying:(BOOL)playing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TrackCellView

- (void)setIsExplicit:(BOOL)explicit
{
  explicitCopy = explicit;
  v5 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel;
  v6 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel);
  selfCopy = self;
  if ([v6 isHidden] == explicitCopy)
  {
    [*(&self->super.super.super.super.super.super.isa + v5) setHidden:explicitCopy ^ 1u];
    [(TrackCellView *)selfCopy setNeedsLayout];
  }
}

- (void)setIsNowPlaying:(BOOL)playing
{
  playingCopy = playing;
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel);
  selfCopy = self;
  [v4 setHidden:!playingCopy];
  [*(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorDimmingView) setHidden:!playingCopy];
  [*(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView) setHidden:!playingCopy];
  [(TrackCellView *)selfCopy setNeedsLayout];
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for TrackCellView();
  [(TrackCellView *)&v6 dealloc];
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10001FF40();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100020294();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100020AC0(change);
}

@end