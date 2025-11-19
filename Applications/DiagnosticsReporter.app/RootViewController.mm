@interface RootViewController
- (_TtC19DiagnosticsReporter18RootViewController)initWithCoder:(id)a3;
- (_TtC19DiagnosticsReporter18RootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation RootViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_100007AE0();
}

- (_TtC19DiagnosticsReporter18RootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = self + OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_diagnosticLog;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 4) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_feedbackController) = 0;
    v9 = a4;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = self + OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_diagnosticLog;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 4) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_feedbackController) = 0;
    v11 = a4;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(RootViewController *)&v14 initWithNibName:a3 bundle:a4];

  return v12;
}

- (_TtC19DiagnosticsReporter18RootViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_diagnosticLog;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_feedbackController) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(RootViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end