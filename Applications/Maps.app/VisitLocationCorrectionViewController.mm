@interface VisitLocationCorrectionViewController
- (_TtC4Maps37VisitLocationCorrectionViewController)initWithCoder:(id)coder;
- (_TtC4Maps37VisitLocationCorrectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didDismissByGesture;
- (void)didResignCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
@end

@implementation VisitLocationCorrectionViewController

- (_TtC4Maps37VisitLocationCorrectionViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)willBecomeCurrent:(BOOL)current
{
  currentCopy = current;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ContaineeViewController *)&v5 willBecomeCurrent:currentCopy];
  sub_10034E624();
}

- (void)didResignCurrent
{
  selfCopy = self;
  sub_100316F74();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100317084();
}

- (void)didDismissByGesture
{
  selfCopy = self;
  sub_100317544();
}

- (_TtC4Maps37VisitLocationCorrectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end