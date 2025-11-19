@interface AXUICompactView
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (_TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView)init;
- (_TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView)initWithCoder:(id)a3;
- (_TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView)initWithFrame:(CGRect)a3;
@end

@implementation AXUICompactView

- (_TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView)init
{
  __asm { FMOV            V0.2D, #19.0 }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView_compressedElementSize) = _Q0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AXUICompactView();
  return [(AXUICompactView *)&v8 initWithFrame:0.0, 0.0, 19.0, 19.0];
}

- (_TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView)initWithCoder:(id)a3
{
  __asm { FMOV            V0.2D, #19.0 }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView_compressedElementSize) = _Q0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for AXUICompactView();
  v9 = a3;
  v10 = [(AXUICompactView *)&v12 initWithCoder:v9];

  if (v10)
  {
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  v4 = self;
  v5 = [(AXUICompactView *)v4 subviews];
  sub_100004268(0, &qword_100016230, UIView_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = *(&v4->super.super.super.isa + OBJC_IVAR____TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView_compressedElementSize);
    v9 = *&v4->compressedElementSize[OBJC_IVAR____TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView_compressedElementSize];
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
  }

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end