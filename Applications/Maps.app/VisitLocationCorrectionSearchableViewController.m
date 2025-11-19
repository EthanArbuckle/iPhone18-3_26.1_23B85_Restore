@interface VisitLocationCorrectionSearchableViewController
- (_TtC4Maps47VisitLocationCorrectionSearchableViewController)initWithCoder:(id)a3;
- (_TtC4Maps47VisitLocationCorrectionSearchableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didDismissByGesture;
- (void)didResignCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
@end

@implementation VisitLocationCorrectionSearchableViewController

- (_TtC4Maps47VisitLocationCorrectionSearchableViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ContaineeViewController *)&v5 willBecomeCurrent:v3];
  sub_100320F38();
}

- (void)didResignCurrent
{
  v2 = self;
  sub_100326144();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100326284();
}

- (void)didDismissByGesture
{
  v2 = self;
  sub_1003266CC();
}

- (_TtC4Maps47VisitLocationCorrectionSearchableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end