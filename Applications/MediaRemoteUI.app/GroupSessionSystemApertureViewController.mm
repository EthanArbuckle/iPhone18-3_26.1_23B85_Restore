@interface GroupSessionSystemApertureViewController
- (BNPresentableContext)presentableContext;
- (NSString)associatedAppBundleIdentifier;
- (NSString)elementIdentifier;
- (void)viewDidLoad;
@end

@implementation GroupSessionSystemApertureViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100005754();
}

- (NSString)associatedAppBundleIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)elementIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BNPresentableContext)presentableContext
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end