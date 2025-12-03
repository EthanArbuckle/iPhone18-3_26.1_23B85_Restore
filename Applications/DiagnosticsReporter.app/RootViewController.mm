@interface RootViewController
- (_TtC19DiagnosticsReporter18RootViewController)initWithCoder:(id)coder;
- (_TtC19DiagnosticsReporter18RootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation RootViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100007AE0();
}

- (_TtC19DiagnosticsReporter18RootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = self + OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_diagnosticLog;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 4) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_feedbackController) = 0;
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = self + OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_diagnosticLog;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 4) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_feedbackController) = 0;
    bundleCopy2 = bundle;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(RootViewController *)&v14 initWithNibName:name bundle:bundle];

  return v12;
}

- (_TtC19DiagnosticsReporter18RootViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_diagnosticLog;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_feedbackController) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(RootViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end