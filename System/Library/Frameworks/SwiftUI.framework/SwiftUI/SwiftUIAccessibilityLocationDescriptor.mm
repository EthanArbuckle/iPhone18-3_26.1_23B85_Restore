@interface SwiftUIAccessibilityLocationDescriptor
- (SwiftUIAccessibilityLocationDescriptor)init;
@end

@implementation SwiftUIAccessibilityLocationDescriptor

- (SwiftUIAccessibilityLocationDescriptor)init
{
  v3.receiver = self;
  v3.super_class = SwiftUIAccessibilityLocationDescriptor;
  return [(SwiftUIAccessibilityLocationDescriptor *)&v3 initWithAttributedName:0 point:0 inView:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
}

@end