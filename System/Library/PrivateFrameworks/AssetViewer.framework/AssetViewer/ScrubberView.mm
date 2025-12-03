@interface ScrubberView
- (CGSize)sizeThatFits:(CGSize)result;
- (void)didScrub:(id)scrub;
- (void)handlePlayPauseButton:(id)button;
- (void)handleSkipBackButton:(id)button;
- (void)handleSkipForwardButton:(id)button;
- (void)layoutSubviews;
- (void)startScrubbing:(id)scrubbing;
- (void)stopScrubbing:(id)scrubbing;
- (void)updateTimeLabelFonts;
@end

@implementation ScrubberView

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = type metadata accessor for ScrubberView();
  v2 = v16.receiver;
  [(ScrubberView *)&v16 layoutSubviews];
  [v2 bounds];
  v3 = &v2[OBJC_IVAR____TtC11AssetViewer12ScrubberView_lastLayoutBounds];
  v4 = *&v2[OBJC_IVAR____TtC11AssetViewer12ScrubberView_lastLayoutBounds];
  v5 = *&v2[OBJC_IVAR____TtC11AssetViewer12ScrubberView_lastLayoutBounds + 8];
  v6 = *&v2[OBJC_IVAR____TtC11AssetViewer12ScrubberView_lastLayoutBounds + 16];
  v7 = *&v2[OBJC_IVAR____TtC11AssetViewer12ScrubberView_lastLayoutBounds + 24];
  *v3 = v8;
  *(v3 + 1) = v9;
  *(v3 + 2) = v10;
  *(v3 + 3) = v11;
  [v2 bounds];
  sub_24128385C(v12, v13, v14, v15, v4, v5, v6, v7);
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 48.0;
  if (result.width <= 414.0)
  {
    v3 = 94.0;
  }

  result.height = v3;
  return result;
}

- (void)handlePlayPauseButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_241286DD4();
}

- (void)handleSkipBackButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_241286E4C();
}

- (void)handleSkipForwardButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_241286FB0();
}

- (void)updateTimeLabelFonts
{
  selfCopy = self;
  sub_241284A74();
}

- (void)startScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  selfCopy = self;
  sub_24128710C();
}

- (void)didScrub:(id)scrub
{
  scrubCopy = scrub;
  selfCopy = self;
  sub_241284C8C(scrubCopy);
}

- (void)stopScrubbing:(id)scrubbing
{
  scrubbingCopy = scrubbing;
  selfCopy = self;
  sub_241287250();
}

@end