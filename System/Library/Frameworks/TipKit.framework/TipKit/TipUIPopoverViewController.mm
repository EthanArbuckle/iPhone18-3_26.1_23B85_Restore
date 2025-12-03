@interface TipUIPopoverViewController
- (BOOL)_canShowWhileLocked;
- (UIPopoverPresentationController)popoverPresentationController;
- (_TtC6TipKit26TipUIPopoverViewController)initWithNibName:(id)name bundle:(id)bundle;
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

  selfCopy = self;
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

  selfCopy = self;
  canShowWhile = TipUIPopoverViewController._canShowWhileLocked()();

  return canShowWhile;
}

- (_TtC6TipKit26TipUIPopoverViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_1A3622B8C();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = TipUIPopoverViewController.init(nibName:bundle:)(v6, name, bundle);

  return v9;
}

@end