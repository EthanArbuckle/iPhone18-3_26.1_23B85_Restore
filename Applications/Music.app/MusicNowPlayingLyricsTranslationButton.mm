@interface MusicNowPlayingLyricsTranslationButton
- (MusicNowPlayingLyricsTranslationButton)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)layoutSubviews;
@end

@implementation MusicNowPlayingLyricsTranslationButton

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NowPlayingLyricsTranslationButton();
  v2 = v5.receiver;
  [(MusicNowPlayingLyricsTranslationButton *)&v5 layoutSubviews];
  v3 = sub_10065775C();
  layer = [v3 layer];

  [*&v2[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView] frame];
  [layer setCornerRadius:CGRectGetHeight(v6) * 0.5];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_100658BEC();

  return v7;
}

- (MusicNowPlayingLyricsTranslationButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end