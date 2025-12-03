@interface DeviationsFactorsConfirmationViewController
- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)cancel;
- (void)nextButtonTapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation DeviationsFactorsConfirmationViewController

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_29E169198();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E16929C();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(OBTableWelcomeController *)&v9 viewWillAppear:appearCopy];
  view = [v4 view];
  if (view)
  {
    v6 = view;
    [view setNeedsLayout];

    view2 = [v4 view];
    if (view2)
    {
      v8 = view2;
      [view2 layoutIfNeeded];

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
  selfCopy = self;
  sub_29E16A3D0();
}

- (void)cancel
{
  selfCopy = self;
  sub_29E16A67C();
}

- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  sub_29E16ACDC(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_29E16BC40(section);

  return v8;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  if (*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43DeviationsFactorsConfirmationViewController_dataSource))
  {
    selfCopy = self;

    sub_29DF93508(section);
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_29E16B48C(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = *MEMORY[0x29EDC8230];
  if (section)
  {
    return 10.0;
  }

  return result;
}

@end