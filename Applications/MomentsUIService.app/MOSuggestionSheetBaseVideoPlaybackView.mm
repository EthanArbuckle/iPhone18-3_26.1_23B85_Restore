@interface MOSuggestionSheetBaseVideoPlaybackView
+ (Class)layerClass;
- (_TtC16MomentsUIService38MOSuggestionSheetBaseVideoPlaybackView)initWithCoder:(id)coder;
- (_TtC16MomentsUIService38MOSuggestionSheetBaseVideoPlaybackView)initWithFrame:(CGRect)frame;
@end

@implementation MOSuggestionSheetBaseVideoPlaybackView

+ (Class)layerClass
{
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for AVPlayerLayer);

  return swift_getObjCClassFromMetadata();
}

- (_TtC16MomentsUIService38MOSuggestionSheetBaseVideoPlaybackView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOSuggestionSheetBaseVideoPlaybackView();
  return [(MOSuggestionSheetBaseVideoPlaybackView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MomentsUIService38MOSuggestionSheetBaseVideoPlaybackView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MOSuggestionSheetBaseVideoPlaybackView();
  coderCopy = coder;
  v5 = [(MOSuggestionSheetBaseVideoPlaybackView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end