@interface UILargeContentViewerItemBridge
- (NSString)largeContentTitle;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (UIEdgeInsets)largeContentImageInsets;
- (UIImage)largeContentImage;
- (_TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge)init;
@end

@implementation UILargeContentViewerItemBridge

- (UIEdgeInsets)largeContentImageInsets
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets);
  v3 = *&self->item[OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets];
  v4 = *&self->item[OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets + 8];
  v5 = *&self->item[OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets + 16];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (NSString)largeContentTitle
{
  v2 = *&self->item[OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_item];
  if (v2)
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_item);

    v4 = MEMORY[0x18D00C850](v3, v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIImage)largeContentImage
{
  v2 = self;
  v3 = UILargeContentViewerItemBridge.largeContentImage.getter();

  return v3;
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  v2 = self;
  v3 = UILargeContentViewerItemBridge.accessibilityHUDRepresentation.getter();

  return v3;
}

- (_TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end