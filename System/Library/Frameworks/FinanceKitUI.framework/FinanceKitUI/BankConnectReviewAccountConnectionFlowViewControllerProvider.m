@interface BankConnectReviewAccountConnectionFlowViewControllerProvider
+ (id)makeViewControllerWithInstitution:(id)a3 paymentPass:(id)a4 previousConsentUUID:(id)a5 completion:(id)a6;
- (_TtC12FinanceKitUI60BankConnectReviewAccountConnectionFlowViewControllerProvider)init;
@end

@implementation BankConnectReviewAccountConnectionFlowViewControllerProvider

+ (id)makeViewControllerWithInstitution:(id)a3 paymentPass:(id)a4 previousConsentUUID:(id)a5 completion:(id)a6
{
  v10 = type metadata accessor for BankConnectReviewAccountConnectionFlowView();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23875BCB0();
  v14 = *(v31 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v31);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v30[2] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = _Block_copy(a6);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  sub_23875BC90();
  v30[1] = objc_allocWithZone(type metadata accessor for BankConnectReviewAccountConnectionFlowViewController());
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_23875EFB0();
  v23 = v14;
  v24 = *(v14 + 16);
  v25 = v31;
  v24(&v13[v10[5]], v17, v31);
  *&v13[v10[6]] = v21;
  v26 = &v13[v10[7]];
  *v26 = sub_2384735C8;
  v26[1] = v19;
  v27 = v21;
  v28 = sub_23875D080();

  (*(v23 + 8))(v17, v25);

  return v28;
}

- (_TtC12FinanceKitUI60BankConnectReviewAccountConnectionFlowViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for BankConnectReviewAccountConnectionFlowViewControllerProvider();
  v3 = [(BankConnectReviewAccountConnectionFlowViewControllerProvider *)&v5 init];

  return v3;
}

@end