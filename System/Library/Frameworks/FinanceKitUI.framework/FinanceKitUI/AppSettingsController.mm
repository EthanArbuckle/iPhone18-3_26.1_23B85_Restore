@interface AppSettingsController
- (_TtC12FinanceKitUI21AppSettingsController)initWithCoder:(id)coder;
- (_TtC12FinanceKitUI21AppSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)provider:(id)provider specifierDidChange:(id)change;
- (void)providerReloadSpecifiers:(id)specifiers;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation AppSettingsController

- (_TtC12FinanceKitUI21AppSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_23875EA80();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = sub_2387207A0(v6, name, bundle);

  return v9;
}

- (_TtC12FinanceKitUI21AppSettingsController)initWithCoder:(id)coder
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_accountSpecifiers) = MEMORY[0x277D84F90];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider) = 0;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_bundleIdentifier);
  *v4 = 0;
  v4[1] = 0;
  result = sub_23875F520();
  __break(1u);
  return result;
}

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
  sub_238720A18(appear);
}

- (id)specifiers
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v4 = sub_238720D80();

  if (v4)
  {
    v5 = sub_23875EC60();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)providerReloadSpecifiers:(id)specifiers
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  if (sub_2387212DC(specifiers))
  {
    [(AppSettingsController *)selfCopy reloadSpecifiers];
  }

  swift_unknownObjectRelease();
}

- (void)provider:(id)provider specifierDidChange:(id)change
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  changeCopy = change;
  selfCopy = self;
  if (sub_2387212DC(provider))
  {
    [(AppSettingsController *)selfCopy reloadSpecifier:changeCopy];
  }

  swift_unknownObjectRelease();
}

@end