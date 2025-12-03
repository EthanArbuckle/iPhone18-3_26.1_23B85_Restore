@interface UIKitIconPreferringButton
- (_TtC7SwiftUI25UIKitIconPreferringButton)initWithCoder:(id)coder;
- (_TtC7SwiftUI25UIKitIconPreferringButton)initWithFrame:(CGRect)frame;
- (void)setTitle:(id)title forState:(unint64_t)state;
@end

@implementation UIKitIconPreferringButton

- (void)setTitle:(id)title forState:(unint64_t)state
{
  ObjectType = swift_getObjectType();
  if (title)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    title = v9;
  }

  else
  {
    v8 = 0;
  }

  selfCopy = self;
  if (![(UIKitIconPreferringButton *)selfCopy changesSelectionAsPrimaryAction])
  {
LABEL_7:
    if (title)
    {
      v12 = MEMORY[0x18D00C850](v8, title);
    }

    else
    {
      v12 = 0;
    }

    v13.receiver = selfCopy;
    v13.super_class = ObjectType;
    [(UIKitIconPreferringButton *)&v13 setTitle:v12 forState:state];

    return;
  }

  v11 = [(UIKitIconPreferringButton *)selfCopy titleForState:state];
  if (v11)
  {

    goto LABEL_7;
  }
}

- (_TtC7SwiftUI25UIKitIconPreferringButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(UIKitButtonBase *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUI25UIKitIconPreferringButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(UIKitButtonBase *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end