@interface PABSRootContainerViewController
- (_TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController)initWithCoder:(id)a3;
- (_TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
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

  v3 = self;
  sub_366C();
}

- (void)viewDidAppear:(BOOL)a3
{
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_3C38(a3);
}

- (_TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_9E14();
  sub_9E04();
  sub_9DC4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_9D64();
    v7 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController_wasAppBackgroundedObserver;
    v8 = sub_9EA4();
    (*(*(v8 - 8) + 56))(self + v7, 1, 1, v8);
    *(self + OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController) = 0;
    v9 = a4;
    v10 = sub_9D54();
  }

  else
  {
    v11 = OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController_wasAppBackgroundedObserver;
    v12 = sub_9EA4();
    (*(*(v12 - 8) + 56))(self + v11, 1, 1, v12);
    *(self + OBJC_IVAR____TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController____lazy_storage___contentViewController) = 0;
    v13 = a4;
    v10 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for PABSRootContainerViewController();
  v14 = [(PABSRootContainerViewController *)&v16 initWithNibName:v10 bundle:a4];

  return v14;
}

- (_TtC33PasscodeAndBiometricsSettingsPref31PABSRootContainerViewController)initWithCoder:(id)a3
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
  v7 = a3;
  v8 = [(PABSRootContainerViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end