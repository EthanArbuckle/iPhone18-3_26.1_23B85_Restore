@interface PABSRootContainerViewController
- (_TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController)initWithCoder:(id)coder;
- (_TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PABSRootContainerViewController

- (void)viewDidLoad
{
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_366C();
}

- (void)viewDidAppear:(BOOL)appear
{
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_3C38(appear);
}

- (_TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_9D64();
    v7 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController_wasAppBackgroundedObserver;
    v8 = sub_9EA4();
    (*(*(v8 - 8) + 56))(self + v7, 1, 1, v8);
    *(self + OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController) = 0;
    bundleCopy = bundle;
    v10 = sub_9D54();
  }

  else
  {
    v11 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController_wasAppBackgroundedObserver;
    v12 = sub_9EA4();
    (*(*(v12 - 8) + 56))(self + v11, 1, 1, v12);
    *(self + OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController) = 0;
    bundleCopy2 = bundle;
    v10 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for PABSRootContainerViewController();
  v14 = [(PABSRootContainerViewController *)&v16 initWithNibName:v10 bundle:bundle];

  return v14;
}

- (_TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController)initWithCoder:(id)coder
{
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController_wasAppBackgroundedObserver;
  v6 = sub_9EA4();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(self + OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PABSRootContainerViewController();
  coderCopy = coder;
  v8 = [(PABSRootContainerViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end