@interface DeviationsFactorsConfirmationViewController
- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)cancel;
- (void)nextButtonTapped;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DeviationsFactorsConfirmationViewController

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_29E169198();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_29E16929C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(OBTableWelcomeController *)&v9 viewWillAppear:v3];
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 setNeedsLayout];

    v7 = [v4 view];
    if (v7)
    {
      v8 = v7;
      [v7 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)nextButtonTapped
{
  v2 = self;
  sub_29E16A3D0();
}

- (void)cancel
{
  v2 = self;
  sub_29E16A67C();
}

- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  sub_29E16ACDC(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_29E16BC40(a4);

  return v8;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  if (*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSource))
  {
    v5 = self;

    sub_29DF93508(a4);
    v7 = v6;

    if (v7)
    {

      v8 = *MEMORY[0x29EDC8230];
    }

    else
    {
      v8 = 0.0;
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_29E16B48C(v6, a4);

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = *MEMORY[0x29EDC8230];
  if (a4)
  {
    return 10.0;
  }

  return result;
}

@end