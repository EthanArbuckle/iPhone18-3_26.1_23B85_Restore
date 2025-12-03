@interface D2DSetupBasePasscodeViewController
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation D2DSetupBasePasscodeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100012A88(selfCopy, type metadata accessor for D2DSetupBasePasscodeViewController, &OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000127D8(appear, selfCopy, type metadata accessor for D2DSetupBasePasscodeViewController, &selRef_viewWillAppear_, "D2D Setup %@ viewWillAppear");
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000127D8(disappear, selfCopy, type metadata accessor for D2DSetupBasePasscodeViewController, &selRef_viewDidDisappear_, "D2D Setup %@ viewDidDisappear");
}

@end