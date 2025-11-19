@interface AXMElementDetectorResult
- (CGRect)resultBox;
- (_TtC16AXMediaUtilities24AXMElementDetectorResult)init;
@end

@implementation AXMElementDetectorResult

- (CGRect)resultBox
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_box);
  v3 = *&self->box[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_box];
  v4 = *&self->box[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_box + 8];
  v5 = *&self->box[OBJC_IVAR____TtC16AXMediaUtilities24AXMElementDetectorResult_box + 16];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_TtC16AXMediaUtilities24AXMElementDetectorResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end