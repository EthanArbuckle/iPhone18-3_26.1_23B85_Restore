@interface WKIdentityDocumentPresentmentController
- (WKIdentityDocumentPresentmentController)init;
- (WKIdentityDocumentPresentmentDelegate)delegate;
- (void)cancelRequest;
- (void)performRequest:(WKIdentityDocumentPresentmentRequest *)a3 completionHandler:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation WKIdentityDocumentPresentmentController

- (WKIdentityDocumentPresentmentDelegate)delegate
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.isa + OBJC_IVAR___WKIdentityDocumentPresentmentController_base);
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.isa + OBJC_IVAR___WKIdentityDocumentPresentmentController_base);
  swift_unknownObjectWeakAssign();
}

- (void)performRequest:(WKIdentityDocumentPresentmentRequest *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23B59D910();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B59F718;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B59F728;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_23B56B930(0, 0, v10, &unk_23B59F738, v15);
}

- (void)cancelRequest
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(&self->super.isa + OBJC_IVAR___WKIdentityDocumentPresentmentController_base))[3])
  {
    v3 = self;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8D8, &unk_23B59F640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8E0, &qword_23B59F9C0);
    sub_23B59D930();
  }
}

- (WKIdentityDocumentPresentmentController)init
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR___WKIdentityDocumentPresentmentController_base;
  _s4BaseCMa();
  v4 = swift_allocObject();
  sub_23B57ADF0();
  *(&self->super.isa + v3) = v4;
  v7.receiver = self;
  v7.super_class = WKIdentityDocumentPresentmentController;
  v5 = [(WKIdentityDocumentPresentmentController *)&v7 init];

  return v5;
}

@end