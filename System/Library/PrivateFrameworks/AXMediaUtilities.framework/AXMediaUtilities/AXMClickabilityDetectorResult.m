@interface AXMClickabilityDetectorResult
- (CGRect)resultBox;
- (_TtC16AXMediaUtilities29AXMClickabilityDetectorResult)init;
@end

@implementation AXMClickabilityDetectorResult

- (CGRect)resultBox
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_box);
  v3 = *&self->box[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_box];
  v4 = *&self->box[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_box + 8];
  v5 = *&self->box[OBJC_IVAR____TtC16AXMediaUtilities29AXMClickabilityDetectorResult_box + 16];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_TtC16AXMediaUtilities29AXMClickabilityDetectorResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end