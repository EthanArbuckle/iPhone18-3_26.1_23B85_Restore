@interface ScrubberView
- (CGSize)sizeThatFits:(CGSize)result;
- (void)didScrub:(id)a3;
- (void)handlePlayPauseButton:(id)a3;
- (void)handleSkipBackButton:(id)a3;
- (void)handleSkipForwardButton:(id)a3;
- (void)layoutSubviews;
- (void)startScrubbing:(id)a3;
- (void)stopScrubbing:(id)a3;
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

- (void)handlePlayPauseButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_241286DD4();
}

- (void)handleSkipBackButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_241286E4C();
}

- (void)handleSkipForwardButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_241286FB0();
}

- (void)updateTimeLabelFonts
{
  v2 = self;
  sub_241284A74();
}

- (void)startScrubbing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24128710C();
}

- (void)didScrub:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_241284C8C(v4);
}

- (void)stopScrubbing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_241287250();
}

@end