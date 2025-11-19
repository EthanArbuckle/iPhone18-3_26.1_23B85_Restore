@interface MOSuggestionFallbackAssetView
- (_TtC16MomentsUIService29MOSuggestionFallbackAssetView)initWithCoder:(id)a3;
- (_TtC16MomentsUIService29MOSuggestionFallbackAssetView)initWithFrame:(CGRect)a3;
@end

@implementation MOSuggestionFallbackAssetView

- (_TtC16MomentsUIService29MOSuggestionFallbackAssetView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionFallbackAssetView_imageView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(UIImageView) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for MOSuggestionFallbackAssetView();
  v9 = [(MOSuggestionFallbackAssetView *)&v11 initWithFrame:x, y, width, height];
  [(MOSuggestionFallbackAssetView *)v9 setContentMode:2];
  if (one-time initialization token for BACKGROUND_COLOR != -1)
  {
    swift_once();
  }

  [(MOSuggestionFallbackAssetView *)v9 setBackgroundColor:static FallbackConstants.BACKGROUND_COLOR];

  return v9;
}

- (_TtC16MomentsUIService29MOSuggestionFallbackAssetView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionFallbackAssetView_imageView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIImageView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end