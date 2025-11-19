@interface TipUIPopoverViewController
- (BOOL)_canShowWhileLocked;
- (UIPopoverPresentationController)popoverPresentationController;
- (_TtC6TipKit26TipUIPopoverViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation TipUIPopoverViewController

- (UIPopoverPresentationController)popoverPresentationController
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  v4 = TipUIPopoverViewController.popoverPresentationController.getter();

  return v4;
}

- (BOOL)_canShowWhileLocked
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  canShowWhile = TipUIPopoverViewController._canShowWhileLocked()();

  return canShowWhile;
}

- (_TtC6TipKit26TipUIPopoverViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = sub_1A3622B8C();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = TipUIPopoverViewController.init(nibName:bundle:)(v6, a3, a4);

  return v9;
}

@end