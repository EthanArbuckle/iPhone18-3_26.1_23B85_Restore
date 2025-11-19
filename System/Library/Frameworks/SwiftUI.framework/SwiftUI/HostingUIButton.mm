@interface HostingUIButton
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3;
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (NSArray)automationElements;
- (_TtC7SwiftUI15HostingUIButton)initWithFrame:(CGRect)a3;
- (_UIGestureRecognizerContainer)_parentGestureRecognizerContainer;
- (id)contextMenuInteraction:(void *)a1 configuration:highlightPreviewForItemWithIdentifier:;
- (id)focusItemsInRect:(CGRect)a3;
- (id)swiftUI_accessibilityActivateBlock;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation HostingUIButton

- (_TtC7SwiftUI15HostingUIButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed;
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI15HostingUIButton_childLayoutComputer) = 0;
  swift_weakInit();
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC7SwiftUI15HostingUIButton_host) = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(UIKitButtonBase *)&v11 initWithFrame:x, y, width, height];
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(HostingUIButton *)&v3 isHighlighted];
}

- (id)contextMenuInteraction:(void *)a1 configuration:highlightPreviewForItemWithIdentifier:
{
  v1 = a1;
  v2 = HostingUIButton.makePreview()();

  return v2;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  HostingUIButton.isHighlighted.setter(a3);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  HostingUIButton.intrinsicContentSize.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = HostingUIButton._baselineOffsets(at:)(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (NSArray)automationElements
{
  v2 = self;
  v3 = [v2 accessibilityNodeForPlatformElement];
  if (v3 && (v4 = v3, v5 = [(AccessibilityNode *)v3 automationElements], v4, v5))
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = isa;
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (id)swiftUI_accessibilityActivateBlock
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = partial apply for closure #1 in HostingUIButton.swiftUI_accessibilityActivateBlock.getter;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
  v5[3] = &block_descriptor_73;
  v3 = _Block_copy(v5);

  return v3;
}

- (id)focusItemsInRect:(CGRect)a3
{
  type metadata accessor for [UIFocusItem]();
  v4 = self;
  static Update.ensure<A>(_:)();

  type metadata accessor for UIFocusItem();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (_UIGestureRecognizerContainer)_parentGestureRecognizerContainer
{
  v2 = self;
  v3 = HostingUIButton._parentContainer.getter();

  return v3;
}

@end