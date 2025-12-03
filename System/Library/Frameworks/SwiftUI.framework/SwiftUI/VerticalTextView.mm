@interface VerticalTextView
- (CGPoint)accessibilityActivationPoint;
- (_TtC7SwiftUI16VerticalTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (unint64_t)accessibilityTraits;
@end

@implementation VerticalTextView

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  accessibilityTraits = [(VerticalTextView *)&v6 accessibilityTraits];

  v4 = -1;
  if ((accessibilityTraits & 0x800000000000) != 0)
  {
    v4 = 0xFFFF7FFFFFFFFFFFLL;
  }

  return v4 & accessibilityTraits;
}

- (CGPoint)accessibilityActivationPoint
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(VerticalTextView *)&v10 accessibilityActivationPoint];
  v4 = v3;
  v5 = *&v2[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_activationPointPadding];
  v7 = v6 + *&v2[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_activationPointPadding + 8];

  v8 = v4 + v5;
  v9 = v7;
  result.y = v8;
  result.x = v9;
  return result;
}

- (_TtC7SwiftUI16VerticalTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v11 = self + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_upperLimit;
  *v11 = 0;
  v11[8] = 1;
  v12 = self + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_lowerLimit;
  *v12 = 0;
  v12[8] = 1;
  v13 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_activationPointPadding);
  containerCopy = container;
  static EdgeInsets.zero.getter();
  *v13 = v15;
  v13[1] = v16;
  v13[2] = v17;
  v13[3] = v18;
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_uiDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_isHandlingHWKeypress) = 0;
  v19 = OBJC_IVAR____TtC7SwiftUI16VerticalTextView_uiDefaultTextAttributes;
  *(&self->super.super.super.super.super.super.isa + v19) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v22.receiver = self;
  v22.super_class = ObjectType;
  height = [(UIKitTextView *)&v22 initWithFrame:containerCopy textContainer:x, y, width, height];

  return height;
}

@end