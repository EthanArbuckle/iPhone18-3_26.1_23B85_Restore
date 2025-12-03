@interface VisitLocationCorrectionSearchableViewController
- (_TtC4Maps47VisitLocationCorrectionSearchableViewController)initWithCoder:(id)coder;
- (_TtC4Maps47VisitLocationCorrectionSearchableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didDismissByGesture;
- (void)didResignCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
@end

@implementation VisitLocationCorrectionSearchableViewController

- (_TtC4Maps47VisitLocationCorrectionSearchableViewController)initWithCoder:(id)coder
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
  sub_100320F38();
}

- (void)didResignCurrent
{
  selfCopy = self;
  sub_100326144();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100326284();
}

- (void)didDismissByGesture
{
  selfCopy = self;
  sub_1003266CC();
}

- (_TtC4Maps47VisitLocationCorrectionSearchableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end