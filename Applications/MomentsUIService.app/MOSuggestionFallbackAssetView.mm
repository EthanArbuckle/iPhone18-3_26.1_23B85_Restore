@interface MOSuggestionFallbackAssetView
- (_TtC16MomentsUIService29MOSuggestionFallbackAssetView)initWithCoder:(id)coder;
- (_TtC16MomentsUIService29MOSuggestionFallbackAssetView)initWithFrame:(CGRect)frame;
@end

@implementation MOSuggestionFallbackAssetView

- (_TtC16MomentsUIService29MOSuggestionFallbackAssetView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionFallbackAssetView_imageView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(UIImageView) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for MOSuggestionFallbackAssetView();
  height = [(MOSuggestionFallbackAssetView *)&v11 initWithFrame:x, y, width, height];
  [(MOSuggestionFallbackAssetView *)height setContentMode:2];
  if (one-time initialization token for BACKGROUND_COLOR != -1)
  {
    swift_once();
  }

  [(MOSuggestionFallbackAssetView *)height setBackgroundColor:static FallbackConstants.BACKGROUND_COLOR];

  return height;
}

- (_TtC16MomentsUIService29MOSuggestionFallbackAssetView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionFallbackAssetView_imageView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIImageView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end