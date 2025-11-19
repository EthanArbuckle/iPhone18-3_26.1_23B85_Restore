@interface AppSettingsController
- (_TtC12FinanceKitUI21AppSettingsController)initWithCoder:(id)a3;
- (_TtC12FinanceKitUI21AppSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)provider:(id)a3 specifierDidChange:(id)a4;
- (void)providerReloadSpecifiers:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation AppSettingsController

- (_TtC12FinanceKitUI21AppSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = sub_23875EA80();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = sub_2387207A0(v6, a3, a4);

  return v9;
}

- (_TtC12FinanceKitUI21AppSettingsController)initWithCoder:(id)a3
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
  sub_238720A18(a3);
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

  v3 = self;
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

- (void)providerReloadSpecifiers:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v5 = self;
  if (sub_2387212DC(a3))
  {
    [(AppSettingsController *)v5 reloadSpecifiers];
  }

  swift_unknownObjectRelease();
}

- (void)provider:(id)a3 specifierDidChange:(id)a4
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  if (sub_2387212DC(a3))
  {
    [(AppSettingsController *)v8 reloadSpecifier:v7];
  }

  swift_unknownObjectRelease();
}

@end