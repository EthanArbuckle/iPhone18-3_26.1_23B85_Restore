@interface UIKitPickerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC7SwiftUIP33_6F6D7FC252FF6BD4B4AE026DA1B1779815UIKitPickerView)initWithCoder:(id)coder;
- (_TtC7SwiftUIP33_6F6D7FC252FF6BD4B4AE026DA1B1779815UIKitPickerView)initWithFrame:(CGRect)frame;
@end

@implementation UIKitPickerView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v5 = v14.receiver;
  height = [(UIKitPickerView *)&v14 sizeThatFits:width, height];
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x18D00BAD0](height);

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

- (_TtC7SwiftUIP33_6F6D7FC252FF6BD4B4AE026DA1B1779815UIKitPickerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(UIKitPickerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUIP33_6F6D7FC252FF6BD4B4AE026DA1B1779815UIKitPickerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(UIKitPickerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end