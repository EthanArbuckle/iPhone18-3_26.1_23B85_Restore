@interface InputPickerPresenterViewController.InputPickerContainerView
- (_TtCC5AVKit34InputPickerPresenterViewController24InputPickerContainerView)initWithCoder:(id)coder;
- (_TtCC5AVKit34InputPickerPresenterViewController24InputPickerContainerView)initWithFrame:(CGRect)frame;
@end

@implementation InputPickerPresenterViewController.InputPickerContainerView

- (_TtCC5AVKit34InputPickerPresenterViewController24InputPickerContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(InputPickerPresenterViewController.InputPickerContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC5AVKit34InputPickerPresenterViewController24InputPickerContainerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(InputPickerPresenterViewController.InputPickerContainerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end