@interface SingleAccountSharingChoiceController
- (_TtC12FinanceKitUI36SingleAccountSharingChoiceController)initWithCoder:(id)a3;
- (_TtC12FinanceKitUI36SingleAccountSharingChoiceController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)didMoveToParentViewController:(id)a3;
- (void)emptySetter:(id)a3;
- (void)menuUpdated;
- (void)setStartDate:(id)a3;
- (void)updateStartSharingTime;
@end

@implementation SingleAccountSharingChoiceController

- (void)didMoveToParentViewController:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  SingleAccountSharingChoiceController.didMove(toParent:)(a3);
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
  v4 = SingleAccountSharingChoiceController.specifiers()();

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

- (_TtC12FinanceKitUI36SingleAccountSharingChoiceController)initWithNibName:(id)a3 bundle:(id)a4
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
  v9 = SingleAccountSharingChoiceController.init(nibName:bundle:)(v6, a3, a4);

  return v9;
}

- (_TtC12FinanceKitUI36SingleAccountSharingChoiceController)initWithCoder:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = SingleAccountSharingChoiceController.init(coder:)(a3);

  return v4;
}

- (void)menuUpdated
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_2386C8160();
}

- (void)emptySetter:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)updateStartSharingTime
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  sub_23875ED50();
  sub_23875ED40();
  v7 = MEMORY[0x277D85700];
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875ED80();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = self;
  v10 = sub_23875ED40();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v7;
  v11[4] = v9;
  sub_2386C3BA4(0, 0, v6, &unk_23877FC38, v11);
}

- (void)setStartDate:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_2386CA15C(v5);
}

@end