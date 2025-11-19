@interface UIKitPickerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC7SwiftUIP33_6F6D7FC252FF6BD4B4AE026DA1B1779815UIKitPickerView)initWithCoder:(id)a3;
- (_TtC7SwiftUIP33_6F6D7FC252FF6BD4B4AE026DA1B1779815UIKitPickerView)initWithFrame:(CGRect)a3;
@end

@implementation UIKitPickerView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v5 = v14.receiver;
  v6 = [(UIKitPickerView *)&v14 sizeThatFits:width, height];
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x18D00BAD0](v6);

  if (v11)
  {
    v12 = width;
  }

  else
  {
    v12 = v8;
  }

  v13 = v10;
  result.height = v13;
  result.width = v12;
  return result;
}

- (_TtC7SwiftUIP33_6F6D7FC252FF6BD4B4AE026DA1B1779815UIKitPickerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(UIKitPickerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUIP33_6F6D7FC252FF6BD4B4AE026DA1B1779815UIKitPickerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(UIKitPickerView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end