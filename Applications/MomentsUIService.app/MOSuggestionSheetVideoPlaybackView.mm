@interface MOSuggestionSheetVideoPlaybackView
- (_TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)didReceiveInteruptionWithNote:(id)note;
- (void)finishedPlayingWithNote:(id)note;
- (void)touchMute:(id)mute;
@end

@implementation MOSuggestionSheetVideoPlaybackView

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for MOSuggestionSheetVideoPlaybackView();
  [(MOSuggestionSheetVideoPlaybackView *)&v6 dealloc];
}

- (void)didReceiveInteruptionWithNote:(id)note
{
  v3 = *((swift_isaMask & self->super.super.super.isa) + 0x118);
  selfCopy = self;
  v3(0);
}

- (void)finishedPlayingWithNote:(id)note
{
  noteCopy = note;
  selfCopy = self;
  specialized MOSuggestionSheetVideoPlaybackView.finishedPlaying(note:)();
}

- (void)touchMute:(id)mute
{
  muteCopy = mute;
  selfCopy = self;
  specialized MOSuggestionSheetVideoPlaybackView.touchMute(_:)();
}

- (_TtC16MomentsUIService34MOSuggestionSheetVideoPlaybackView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end