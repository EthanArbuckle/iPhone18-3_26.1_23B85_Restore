@interface UIKitTabBarItem
- (_TtC7SwiftUI15UIKitTabBarItem)init;
- (_TtC7SwiftUI15UIKitTabBarItem)initWithCoder:(id)coder;
- (void)updateAccessibility;
@end

@implementation UIKitTabBarItem

- (void)updateAccessibility
{
  selfCopy = self;
  UIKitTabBarItem.updateAccessibility()();
}

- (_TtC7SwiftUI15UIKitTabBarItem)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI15UIKitTabBarItem_resolvedAccessibilityLabel) = 0;
  v4 = (self + OBJC_IVAR____TtC7SwiftUI15UIKitTabBarItem_accessibility);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  v4[11] = 0u;
  v4[12] = 0u;
  v4[13] = 0u;
  v4[14] = 0u;
  v4[15] = 0u;
  v4[16] = 0u;
  v4[17] = 0u;
  *(v4 + 281) = 0u;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(UIKitTabBarItem *)&v6 init];
}

- (_TtC7SwiftUI15UIKitTabBarItem)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI15UIKitTabBarItem_resolvedAccessibilityLabel) = 0;
  v6 = (self + OBJC_IVAR____TtC7SwiftUI15UIKitTabBarItem_accessibility);
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  v6[8] = 0u;
  v6[9] = 0u;
  v6[10] = 0u;
  v6[11] = 0u;
  v6[12] = 0u;
  v6[13] = 0u;
  v6[14] = 0u;
  v6[15] = 0u;
  v6[16] = 0u;
  v6[17] = 0u;
  *(v6 + 281) = 0u;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(UIKitTabBarItem *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end