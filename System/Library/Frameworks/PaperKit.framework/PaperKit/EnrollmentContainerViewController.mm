@interface EnrollmentContainerViewController
- (_TtC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254533EnrollmentContainerViewController)initWithCoder:(id)coder;
- (_TtC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254533EnrollmentContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)toolPickerWillShow:(id)show;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation EnrollmentContainerViewController

- (_TtC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254533EnrollmentContainerViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  EnrollmentContainerViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  EnrollmentContainerViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  EnrollmentContainerViewController.viewDidDisappear(_:)(disappear);
}

- (void)toolPickerWillShow:(id)show
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  EnrollmentContainerViewController.toolPickerWillShow(_:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC8PaperKitP33_54D3ACA847AFA52EC5CA5D25834A254533EnrollmentContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end