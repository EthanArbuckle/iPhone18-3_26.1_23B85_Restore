@interface UIKitIconPreferringButton
- (_TtC7SwiftUI25UIKitIconPreferringButton)initWithCoder:(id)a3;
- (_TtC7SwiftUI25UIKitIconPreferringButton)initWithFrame:(CGRect)a3;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
@end

@implementation UIKitIconPreferringButton

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = self;
  if (![(UIKitIconPreferringButton *)v10 changesSelectionAsPrimaryAction])
  {
LABEL_7:
    if (a3)
    {
      v12 = MEMORY[0x18D00C850](v8, a3);
    }

    else
    {
      v12 = 0;
    }

    v13.receiver = v10;
    v13.super_class = ObjectType;
    [(UIKitIconPreferringButton *)&v13 setTitle:v12 forState:a4];

    return;
  }

  v11 = [(UIKitIconPreferringButton *)v10 titleForState:a4];
  if (v11)
  {

    goto LABEL_7;
  }
}

- (_TtC7SwiftUI25UIKitIconPreferringButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(UIKitButtonBase *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUI25UIKitIconPreferringButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(UIKitButtonBase *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end