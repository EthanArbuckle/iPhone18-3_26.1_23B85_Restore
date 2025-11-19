@interface CallRecordingGlyphView
- (CGSize)intrinsicContentSize;
- (_TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView)initWithCoder:(id)a3;
- (_TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CallRecordingGlyphView

- (_TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView_package) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView_glyphState);
  v4 = sub_1087C();
  v5 = *(v4 + 1);
  *v3 = *v4;
  v3[1] = v5;
  result = sub_21D7C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_128CC();
}

- (CGSize)intrinsicContentSize
{
  v2 = *sub_10940();
  v3 = *sub_1094C();
  v4 = v2;
  result.height = v3;
  result.width = v4;
  return result;
}

- (_TtC25RPControlCenterModuleHQLR22CallRecordingGlyphView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end