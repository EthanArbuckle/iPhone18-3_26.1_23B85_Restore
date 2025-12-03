@interface MOSuggestionLivePhotoView
- (_TtC16MomentsUIService25MOSuggestionLivePhotoView)initWithCoder:(id)coder;
- (_TtC16MomentsUIService25MOSuggestionLivePhotoView)initWithFrame:(CGRect)frame;
- (void)livePhotoView:(id)view didEndPlaybackWithStyle:(int64_t)style;
- (void)livePhotoView:(id)view willBeginPlaybackWithStyle:(int64_t)style;
@end

@implementation MOSuggestionLivePhotoView

- (_TtC16MomentsUIService25MOSuggestionLivePhotoView)initWithCoder:(id)coder
{
  *&self->livePhotoView[OBJC_IVAR____TtC16MomentsUIService25MOSuggestionLivePhotoView_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16MomentsUIService25MOSuggestionLivePhotoView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)livePhotoView:(id)view willBeginPlaybackWithStyle:(int64_t)style
{
  viewCopy = view;
  selfCopy = self;
  specialized MOSuggestionLivePhotoView.livePhotoView(_:willBeginPlaybackWith:)();
}

- (void)livePhotoView:(id)view didEndPlaybackWithStyle:(int64_t)style
{
  viewCopy = view;
  selfCopy = self;
  specialized MOSuggestionLivePhotoView.livePhotoView(_:didEndPlaybackWith:)();
}

@end