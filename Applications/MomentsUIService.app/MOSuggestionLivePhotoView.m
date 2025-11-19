@interface MOSuggestionLivePhotoView
- (_TtC16MomentsUIService25MOSuggestionLivePhotoView)initWithCoder:(id)a3;
- (_TtC16MomentsUIService25MOSuggestionLivePhotoView)initWithFrame:(CGRect)a3;
- (void)livePhotoView:(id)a3 didEndPlaybackWithStyle:(int64_t)a4;
- (void)livePhotoView:(id)a3 willBeginPlaybackWithStyle:(int64_t)a4;
@end

@implementation MOSuggestionLivePhotoView

- (_TtC16MomentsUIService25MOSuggestionLivePhotoView)initWithCoder:(id)a3
{
  *&self->livePhotoView[OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService25MOSuggestionLivePhotoView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)livePhotoView:(id)a3 willBeginPlaybackWithStyle:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  specialized MOSuggestionLivePhotoView.livePhotoView(_:willBeginPlaybackWith:)();
}

- (void)livePhotoView:(id)a3 didEndPlaybackWithStyle:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  specialized MOSuggestionLivePhotoView.livePhotoView(_:didEndPlaybackWith:)();
}

@end