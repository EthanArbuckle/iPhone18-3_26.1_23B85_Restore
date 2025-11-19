@interface NetworkPerformanceDiagnosticViewController
- (NetworkPerformanceDiagnosticViewController)initWithCoder:(id)a3;
- (NetworkPerformanceDiagnosticViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)cancel;
- (void)presentSwiftUIView;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation NetworkPerformanceDiagnosticViewController

- (void)presentSwiftUIView
{
  v3 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v13 - v8);
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = self;
  sub_10000A17C(v9);
  sub_10000AD50(v9, v7);
  v11 = objc_allocWithZone(sub_10000239C(&qword_100031BD8, qword_100023160));
  v12 = sub_1000204E4();
  [v12 setModalInPresentation:1];
  [(NetworkPerformanceDiagnosticViewController *)v10 presentViewController:v12 animated:1 completion:0];

  sub_10000D120(v9);
}

- (void)viewDidAppear:(BOOL)a3
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_10000BCE4(a3);
}

- (unint64_t)supportedInterfaceOrientations
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 2;
}

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    type metadata accessor for NetworkPerformanceDiagnosticInputs();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *&self->DKDiagnosticViewController_opaque[OBJC_IVAR___NetworkPerformanceDiagnosticViewController_inputs];
  *&self->DKDiagnosticViewController_opaque[OBJC_IVAR___NetworkPerformanceDiagnosticViewController_inputs] = v6;
}

- (void)start
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)cancel
{
  v3 = sub_10000239C(&qword_1000321A0, &qword_1000233B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_100020944();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_100020914();
  v8 = self;
  v9 = sub_100020904();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_10000FEDC(0, 0, v6, &unk_100023158, v10);
}

- (NetworkPerformanceDiagnosticViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_100020874();
    *&self->DKDiagnosticViewController_opaque[OBJC_IVAR___NetworkPerformanceDiagnosticViewController_inputs] = 0;
    v7 = a4;
    a3 = sub_100020854();
  }

  else
  {
    *&self->DKDiagnosticViewController_opaque[OBJC_IVAR___NetworkPerformanceDiagnosticViewController_inputs] = 0;
    v8 = a4;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for NetworkPerformanceDiagnosticViewController();
  v9 = [(NetworkPerformanceDiagnosticViewController *)&v11 initWithNibName:a3 bundle:a4];

  return v9;
}

- (NetworkPerformanceDiagnosticViewController)initWithCoder:(id)a3
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&self->DKDiagnosticViewController_opaque[OBJC_IVAR___NetworkPerformanceDiagnosticViewController_inputs] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NetworkPerformanceDiagnosticViewController();
  v5 = a3;
  v6 = [(NetworkPerformanceDiagnosticViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end