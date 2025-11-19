@interface UserProfileContaineeViewController
+ (NSString)userProfileDidOpenProfilePageNotification;
- (_TtC4Maps34UserProfileContaineeViewController)initWithCoder:(id)a3;
- (_TtC4Maps34UserProfileContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps42UserProfileContaineeViewControllerDelegate_)actionDelegate;
- (int64_t)floatingControlsOptions;
- (void)didDismissByGesture;
- (void)handleDismissAction:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
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
  v2 = self;
  sub_1001237EC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MapsHostingContaineeViewController *)&v5 viewDidAppear:v3];
  sub_100124084();
}

- (void)handleDismissAction:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100123F08();

  sub_10004E3D0(&v5);
}

- (void)didDismissByGesture
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = self;
  if (Strong)
  {
    [Strong userProfileViewControllerDismissByGestureWithViewController:v5];
    swift_unknownObjectRelease();
  }

  v6.receiver = v5;
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

- (_TtC4Maps34UserProfileContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v8;
  }

  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC4Maps34UserProfileContaineeViewController_viewModel;
  type metadata accessor for UserProfileViewModel();
  swift_allocObject();
  v10 = a4;
  *(self + v9) = sub_100409918();
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(MapsHostingContaineeViewController *)&v14 initWithNibName:v11 bundle:v10];

  return v12;
}

- (_TtC4Maps34UserProfileContaineeViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC4Maps34UserProfileContaineeViewController_viewModel;
  type metadata accessor for UserProfileViewModel();
  swift_allocObject();
  v7 = a3;
  *(self + v6) = sub_100409918();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(MapsHostingContaineeViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end