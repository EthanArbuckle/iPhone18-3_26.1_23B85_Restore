@interface HighlightAlertsTileViewController
- (NSString)title;
- (_TtC15HighlightAlerts33HighlightAlertsTileViewController)initWithCoder:(id)coder;
- (_TtC15HighlightAlerts33HighlightAlertsTileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)setTitle:(id)title;
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

  selfCopy = self;
  sub_29DA2C768();
}

- (void)dealloc
{
  v3 = type metadata accessor for HighlightAlertsTileViewController();
  selfCopy = self;
  sub_29DA344F4();
  v5.receiver = selfCopy;
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

  selfCopy = self;
  sub_29DA2D4C0(0);
  v4.receiver = selfCopy;
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

  selfCopy = self;
  sub_29DA2E0A8(0);
}

- (_TtC15HighlightAlerts33HighlightAlertsTileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_29DA34854();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = sub_29DA30178(v6, name, bundle);

  return v9;
}

- (_TtC15HighlightAlerts33HighlightAlertsTileViewController)initWithCoder:(id)coder
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_29DA30340(coder);

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
    selfCopy = self;

    sub_29DA25680();

    v3 = sub_29DA34824();
  }

  else
  {
  }

  return v3;
}

- (void)setTitle:(id)title
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