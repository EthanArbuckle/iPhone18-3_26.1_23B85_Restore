@interface HighlightAlertsTileViewController
- (NSString)title;
- (_TtC15HighlightAlerts33HighlightAlertsTileViewController)initWithCoder:(id)a3;
- (_TtC15HighlightAlerts33HighlightAlertsTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)setTitle:(id)a3;
- (void)significantTimeChangeDidOccur;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation HighlightAlertsTileViewController

- (void)viewDidLoad
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_29DA2C768();
}

- (void)dealloc
{
  v3 = type metadata accessor for HighlightAlertsTileViewController();
  v4 = self;
  sub_29DA344F4();
  v5.receiver = v4;
  v5.super_class = v3;
  [(HighlightAlertsTileViewController *)&v5 dealloc];
}

- (void)updateViewConstraints
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_29DA2D4C0(0);
  v4.receiver = v3;
  v4.super_class = type metadata accessor for HighlightAlertsTileViewController();
  [(HighlightAlertsTileViewController *)&v4 updateViewConstraints];
}

- (void)significantTimeChangeDidOccur
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_29DA2E0A8(0);
}

- (_TtC15HighlightAlerts33HighlightAlertsTileViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = sub_29DA34854();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = sub_29DA30178(v6, a3, a4);

  return v9;
}

- (_TtC15HighlightAlerts33HighlightAlertsTileViewController)initWithCoder:(id)a3
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_29DA30340(a3);

  return v4;
}

- (NSString)title
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel);
  if (v3)
  {
    v4 = self;

    sub_29DA25680();

    v3 = sub_29DA34824();
  }

  else
  {
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

@end