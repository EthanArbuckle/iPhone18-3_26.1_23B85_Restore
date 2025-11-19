@interface TipUIPopoverViewController.Container
- (UIEdgeInsets)safeAreaInsets;
- (_TtCC6TipKit26TipUIPopoverViewControllerP33_3C6E95058702E04B23C6D12101E9B7609Container)initWithFrame:(CGRect)a3;
@end

@implementation TipUIPopoverViewController.Container

- (UIEdgeInsets)safeAreaInsets
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_1A3618B50();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (_TtCC6TipKit26TipUIPopoverViewControllerP33_3C6E95058702E04B23C6D12101E9B7609Container)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_1A3618DD8(x, y, width, height);

  return v7;
}

@end