@interface OrderNavigationModel
- (_TtC12FinanceKitUI20OrderNavigationModel)init;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
@end

@implementation OrderNavigationModel

- (_TtC12FinanceKitUI20OrderNavigationModel)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23867E224();

  return v2;
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v27 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13040, &qword_238773EC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = a3;
  swift_unknownObjectRetain();
  v19 = self;
  v20 = a5;
  v21 = a7;
  sub_23875F2E0();
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_23875BE50();

    v22 = sub_23875BE60();
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  }

  else
  {
    v23 = sub_23875BE60();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  }

  if (v21)
  {
    sub_23875BE50();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_23875BE60();
  (*(*(v25 - 8) + 56))(v14, v24, 1, v25);
  sub_238680E54(v28, v17, v27);

  sub_238439884(v14, &qword_27DF13040, &qword_238773EC8);
  sub_238439884(v17, &qword_27DF13040, &qword_238773EC8);
  __swift_destroy_boxed_opaque_existential_1(v28);
}

@end