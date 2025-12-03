@interface OrderNavigationModel
- (_TtC12FinanceKitUI20OrderNavigationModel)init;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
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

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  typeCopy = type;
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

  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  pathCopy = path;
  indexPathCopy = indexPath;
  sub_23875F2E0();
  swift_unknownObjectRelease();
  if (pathCopy)
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

  if (indexPathCopy)
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
  sub_238680E54(v28, v17, typeCopy);

  sub_238439884(v14, &qword_27DF13040, &qword_238773EC8);
  sub_238439884(v17, &qword_27DF13040, &qword_238773EC8);
  __swift_destroy_boxed_opaque_existential_1(v28);
}

@end