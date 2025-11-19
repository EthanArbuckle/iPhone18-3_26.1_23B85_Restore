@interface VisitLocationCorrectionViewController
- (_TtC4Maps37VisitLocationCorrectionViewController)initWithCoder:(id)a3;
- (_TtC4Maps37VisitLocationCorrectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didDismissByGesture;
- (void)didResignCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
@end

@implementation VisitLocationCorrectionViewController

- (_TtC4Maps37VisitLocationCorrectionViewController)initWithCoder:(id)a3
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
  sub_10034E624();
}

- (void)didResignCurrent
{
  v2 = self;
  sub_100316F74();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100317084();
}

- (void)didDismissByGesture
{
  v2 = self;
  sub_100317544();
}

- (_TtC4Maps37VisitLocationCorrectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end