@interface AXUICompactView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView)init;
- (_TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView)initWithCoder:(id)coder;
- (_TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView)initWithFrame:(CGRect)frame;
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

- (_TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView)initWithCoder:(id)coder
{
  __asm { FMOV            V0.2D, #19.0 }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView_compressedElementSize) = _Q0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for AXUICompactView();
  coderCopy = coder;
  v10 = [(AXUICompactView *)&v12 initWithCoder:coderCopy];

  if (v10)
  {
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  selfCopy = self;
  subviews = [(AXUICompactView *)selfCopy subviews];
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
    v8 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView_compressedElementSize);
    v9 = *&selfCopy->compressedElementSize[OBJC_IVAR____TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView_compressedElementSize];
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

- (_TtC21AccessibilityUIServerP33_9F30D313BCA3C76AB736A376629F565A15AXUICompactView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end