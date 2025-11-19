@interface MOSuggestionSheetBaseVideoPlaybackView
+ (Class)layerClass;
- (_TtC16MomentsUIService38MOSuggestionSheetBaseVideoPlaybackView)initWithCoder:(id)a3;
- (_TtC16MomentsUIService38MOSuggestionSheetBaseVideoPlaybackView)initWithFrame:(CGRect)a3;
@end

@implementation MOSuggestionSheetBaseVideoPlaybackView

+ (Class)layerClass
{
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for AVPlayerLayer);

  return swift_getObjCClassFromMetadata();
}

- (_TtC16MomentsUIService38MOSuggestionSheetBaseVideoPlaybackView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOSuggestionSheetBaseVideoPlaybackView();
  return [(MOSuggestionSheetBaseVideoPlaybackView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MomentsUIService38MOSuggestionSheetBaseVideoPlaybackView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MOSuggestionSheetBaseVideoPlaybackView();
  v4 = a3;
  v5 = [(MOSuggestionSheetBaseVideoPlaybackView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end