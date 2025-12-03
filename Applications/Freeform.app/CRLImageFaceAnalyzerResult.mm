@interface CRLImageFaceAnalyzerResult
- (CGPoint)maskCenterForFacesWithImageSize:(CGSize)size maskSize:(CGSize)maskSize defaultCenter:(CGPoint)center;
- (CGRect)interestingFacesRect;
- (_TtC8Freeform26CRLImageFaceAnalyzerResult)init;
- (_TtC8Freeform26CRLImageFaceAnalyzerResult)initWithFaceRectValues:(id)values;
@end

@implementation CRLImageFaceAnalyzerResult

- (CGRect)interestingFacesRect
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform26CRLImageFaceAnalyzerResult_interestingFacesRect);
  v3 = *(&self->interestingFacesRect.origin.x + OBJC_IVAR____TtC8Freeform26CRLImageFaceAnalyzerResult_interestingFacesRect);
  v4 = *(&self->interestingFacesRect.origin.y + OBJC_IVAR____TtC8Freeform26CRLImageFaceAnalyzerResult_interestingFacesRect);
  v5 = *(&self->interestingFacesRect.size.width + OBJC_IVAR____TtC8Freeform26CRLImageFaceAnalyzerResult_interestingFacesRect);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_TtC8Freeform26CRLImageFaceAnalyzerResult)initWithFaceRectValues:(id)values
{
  if (values)
  {
    sub_10077804C();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return CRLImageFaceAnalyzerResult.init(faceRectValues:)(v3);
}

- (CGPoint)maskCenterForFacesWithImageSize:(CGSize)size maskSize:(CGSize)maskSize defaultCenter:(CGPoint)center
{
  height = maskSize.height;
  width = maskSize.width;
  v7 = size.height;
  v8 = size.width;
  selfCopy = self;
  CRLImageFaceAnalyzerResult.maskCenterForFaces(imageSize:maskSize:defaultCenter:)(v8, v7, width, height);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (_TtC8Freeform26CRLImageFaceAnalyzerResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end