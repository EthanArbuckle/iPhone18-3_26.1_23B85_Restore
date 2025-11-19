@interface InputPickerPresenterViewController.InputPickerContainerView
- (_TtCC5AVKit34InputPickerPresenterViewController24InputPickerContainerView)initWithCoder:(id)a3;
- (_TtCC5AVKit34InputPickerPresenterViewController24InputPickerContainerView)initWithFrame:(CGRect)a3;
@end

@implementation InputPickerPresenterViewController.InputPickerContainerView

- (_TtCC5AVKit34InputPickerPresenterViewController24InputPickerContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(InputPickerPresenterViewController.InputPickerContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC5AVKit34InputPickerPresenterViewController24InputPickerContainerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(InputPickerPresenterViewController.InputPickerContainerView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end