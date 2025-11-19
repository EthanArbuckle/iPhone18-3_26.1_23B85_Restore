@interface AUDynamicsProcessorViewController
- (void)knobReleasedWithNotification:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AUDynamicsProcessorViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_237153BF0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_23715681C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_self();
  v6 = self;
  v7 = [v5 defaultCenter];
  [v7 removeObserver_];

  v8.receiver = v6;
  v8.super_class = type metadata accessor for AUDynamicsProcessorViewController();
  [(AUAppleViewControllerBase *)&v8 viewWillDisappear:v3];
}

- (void)knobReleasedWithNotification:(id)a3
{
  v4 = sub_23719631C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  v9 = self;
  v10 = sub_237195AE8();
  [v10 setMaximumFractionDigits_];

  v11 = *(&v9->super.super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView);
  sub_23717E58C();

  (*(v5 + 8))(v8, v4);
}

- (void)viewDidLayoutSubviews
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_viewContainer);
  if (v2)
  {
    v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit33AUDynamicsProcessorViewController_headerView);
    v8 = self;
    v4 = v2;
    v5 = v3;
    [v4 frame];
    sub_23717E908(v6, v7);
  }
}

@end