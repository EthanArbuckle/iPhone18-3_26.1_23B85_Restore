@interface PlatformAccessibilityLocationDescriptor
- (CGPoint)point;
- (NSAttributedString)attributedName;
- (NSString)name;
- (UIView)view;
- (_TtC7SwiftUI39PlatformAccessibilityLocationDescriptor)init;
@end

@implementation PlatformAccessibilityLocationDescriptor

- (UIView)view
{
  selfCopy = self;
  v3 = PlatformAccessibilityLocationDescriptor.view.getter();

  return v3;
}

- (CGPoint)point
{
  selfCopy = self;
  v3 = PlatformAccessibilityLocationDescriptor.point.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (NSString)name
{
  selfCopy = self;
  v3 = PlatformAccessibilityLocationDescriptor.name.getter();
  v5 = v4;

  v6 = MEMORY[0x18D00C850](v3, v5);

  return v6;
}

- (NSAttributedString)attributedName
{
  selfCopy = self;
  v3 = PlatformAccessibilityLocationDescriptor.attributedName.getter();

  return v3;
}

- (_TtC7SwiftUI39PlatformAccessibilityLocationDescriptor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end