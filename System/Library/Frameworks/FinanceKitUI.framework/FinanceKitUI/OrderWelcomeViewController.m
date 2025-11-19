@interface OrderWelcomeViewController
- (_TtC12FinanceKitUI26OrderWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC12FinanceKitUI26OrderWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation OrderWelcomeViewController

- (void)viewDidAppear:(BOOL)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_2386FFBF0(a3);
}

- (_TtC12FinanceKitUI26OrderWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875EA80();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  a4 = sub_23875EA80();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v14 = sub_23875EA80();
  v16 = v15;
LABEL_8:
  v17 = sub_23870077C(v9, v11, a4, v13, v14, v16, a6);

  return v17;
}

- (_TtC12FinanceKitUI26OrderWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  ObjectType = swift_getObjectType();
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875EA80();
  if (a4)
  {
    sub_23875EA80();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUI26OrderWelcomeViewController_animationView) = 0;
  v13 = a5;
  v14 = sub_23875EA50();

  if (v12)
  {
    v15 = sub_23875EA50();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = self;
  v18.super_class = ObjectType;
  v16 = [(OrderWelcomeViewController *)&v18 initWithTitle:v14 detailText:v15 icon:v13 contentLayout:a6];

  return v16;
}

@end