@interface OrderWelcomeViewController
- (_TtC12FinanceKitUI26OrderWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC12FinanceKitUI26OrderWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation OrderWelcomeViewController

- (void)viewDidAppear:(BOOL)appear
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_2386FFBF0(appear);
}

- (_TtC12FinanceKitUI26OrderWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_5;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  text = sub_23875EA80();
  v13 = v12;
  if (!name)
  {
    goto LABEL_7;
  }

LABEL_5:
  v14 = sub_23875EA80();
  v16 = v15;
LABEL_8:
  v17 = sub_23870077C(v9, v11, text, v13, v14, v16, layout);

  return v17;
}

- (_TtC12FinanceKitUI26OrderWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
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
  if (text)
  {
    sub_23875EA80();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUI26OrderWelcomeViewController_animationView) = 0;
  iconCopy = icon;
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
  v16 = [(OrderWelcomeViewController *)&v18 initWithTitle:v14 detailText:v15 icon:iconCopy contentLayout:layout];

  return v16;
}

@end