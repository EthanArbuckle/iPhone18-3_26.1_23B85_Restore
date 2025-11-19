@interface MOSuggestionSheetVideoPlaybackView
- (_TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)didReceiveInteruptionWithNote:(id)a3;
- (void)finishedPlayingWithNote:(id)a3;
- (void)touchMute:(id)a3;
@end

@implementation MOSuggestionSheetVideoPlaybackView

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for MOSuggestionSheetVideoPlaybackView();
  [(MOSuggestionSheetVideoPlaybackView *)&v6 dealloc];
}

- (void)didReceiveInteruptionWithNote:(id)a3
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x118);
  v4 = self;
  v3(0);
}

- (void)finishedPlayingWithNote:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized MOSuggestionSheetVideoPlaybackView.finishedPlaying(note:)();
}

- (void)touchMute:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized MOSuggestionSheetVideoPlaybackView.touchMute(_:)();
}

- (_TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end