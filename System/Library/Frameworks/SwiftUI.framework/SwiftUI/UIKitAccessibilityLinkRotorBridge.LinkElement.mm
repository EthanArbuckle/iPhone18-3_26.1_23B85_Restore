@interface UIKitAccessibilityLinkRotorBridge.LinkElement
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (NSString)accessibilityIdentifier;
- (NSString)accessibilityLabel;
- (_TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement)init;
- (_TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement)initWithAccessibilityContainer:(id)container;
@end

@implementation UIKitAccessibilityLinkRotorBridge.LinkElement

- (CGRect)accessibilityFrame
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement_range);
    v5 = *(&self->super.super._responderFlags + OBJC_IVAR____TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement_range);
    v6 = Strong;
    [Strong _accessibilityBoundsForRange_];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  v3 = UIKitAccessibilityLinkRotorBridge.LinkElement.accessibilityLabel.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x18D00C850](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)accessibilityIdentifier
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement_link);
  v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement_link);

  v4 = MEMORY[0x18D00C850](v2, v3);

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  v3 = UIKitAccessibilityLinkRotorBridge.LinkElement.accessibilityActivationPoint.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (_TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement)initWithAccessibilityContainer:(id)container
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC7SwiftUI33UIKitAccessibilityLinkRotorBridge11LinkElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end