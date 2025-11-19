@interface BankConnectConsentDeletionListener
- (_TtC12FinanceKitUI34BankConnectConsentDeletionListener)init;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
@end

@implementation BankConnectConsentDeletionListener

- (_TtC12FinanceKitUI34BankConnectConsentDeletionListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13040, &qword_238773EC8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v27 - v17;
  v19 = a3;
  swift_unknownObjectRetain();
  v20 = self;
  v21 = a5;
  v22 = a7;
  sub_23875F2E0();
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_23875BE50();

    v23 = sub_23875BE60();
    (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  }

  else
  {
    v24 = sub_23875BE60();
    (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  }

  if (v22)
  {
    sub_23875BE50();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_23875BE60();
  (*(*(v26 - 8) + 56))(v15, v25, 1, v26);
  sub_2385BC720(v27, v18, a6);

  sub_238439884(v15, &qword_27DF13040, &qword_238773EC8);
  sub_238439884(v18, &qword_27DF13040, &qword_238773EC8);
  __swift_destroy_boxed_opaque_existential_1(v27);
}

@end