@interface AUDynamicsProcessorViewController
- (void)knobReleasedWithNotification:(id)notification;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AUDynamicsProcessorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_237153BF0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23715681C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter removeObserver_];

  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for AUDynamicsProcessorViewController();
  [(AUAppleViewControllerBase *)&v8 viewWillDisappear:disappearCopy];
}

- (void)knobReleasedWithNotification:(id)notification
{
  v4 = sub_23719631C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  selfCopy = self;
  v10 = sub_237195AE8();
  [v10 setMaximumFractionDigits_];

  v11 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView);
  sub_23717E58C();

  (*(v5 + 8))(v8, v4);
}

- (void)viewDidLayoutSubviews
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_viewContainer);
  if (v2)
  {
    v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView);
    selfCopy = self;
    v4 = v2;
    v5 = v3;
    [v4 frame];
    sub_23717E908(v6, v7);
  }
}

@end