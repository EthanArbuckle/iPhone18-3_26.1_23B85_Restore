@interface UIKitAction
- (_TtC7SwiftUI11UIKitAction)initWithCoder:(id)coder;
@end

@implementation UIKitAction

- (_TtC7SwiftUI11UIKitAction)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(UIKitAction *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end