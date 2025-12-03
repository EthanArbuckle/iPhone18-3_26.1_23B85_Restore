@interface UserProfileContaineeViewController
+ (NSString)userProfileDidOpenProfilePageNotification;
- (_TtC4Maps34UserProfileContaineeViewController)initWithCoder:(id)coder;
- (_TtC4Maps34UserProfileContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps42UserProfileContaineeViewControllerDelegate_)actionDelegate;
- (int64_t)floatingControlsOptions;
- (void)didDismissByGesture;
- (void)handleDismissAction:(id)action;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation UserProfileContaineeViewController

+ (NSString)userProfileDidOpenProfilePageNotification
{
  if (qword_101906570 != -1)
  {
    swift_once();
  }

  v3 = qword_10195FAE0;

  return v3;
}

- (_TtP4Maps42UserProfileContaineeViewControllerDelegate_)actionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001237EC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MapsHostingContaineeViewController *)&v5 viewDidAppear:appearCopy];
  sub_100124084();
}

- (void)handleDismissAction:(id)action
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100123F08();

  sub_10004E3D0(&v5);
}

- (void)didDismissByGesture
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  selfCopy = self;
  if (Strong)
  {
    [Strong userProfileViewControllerDismissByGestureWithViewController:selfCopy];
    swift_unknownObjectRelease();
  }

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(ContaineeViewController *)&v6 didDismissByGesture];
}

- (int64_t)floatingControlsOptions
{
  if (sub_1000145C8(self))
  {
    return 4147;
  }

  else
  {
    return 0;
  }
}

- (_TtC4Maps34UserProfileContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    name = v8;
  }

  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC4Maps34UserProfileContaineeViewController_viewModel;
  type metadata accessor for UserProfileViewModel();
  swift_allocObject();
  bundleCopy = bundle;
  *(self + v9) = sub_100409918();
  if (name)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(MapsHostingContaineeViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC4Maps34UserProfileContaineeViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC4Maps34UserProfileContaineeViewController_viewModel;
  type metadata accessor for UserProfileViewModel();
  swift_allocObject();
  coderCopy = coder;
  *(self + v6) = sub_100409918();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(MapsHostingContaineeViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end