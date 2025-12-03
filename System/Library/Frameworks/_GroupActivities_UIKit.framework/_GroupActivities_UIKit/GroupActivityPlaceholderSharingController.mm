@interface GroupActivityPlaceholderSharingController
- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)init;
- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithCoder:(id)coder;
- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithRootViewController:(id)controller;
- (void)cancelButtonTapped:(id)tapped;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GroupActivityPlaceholderSharingController

- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)init
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_placeholderControllerDidCancel);
  *v3 = 0;
  v3[1] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_rootViewController) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for GroupActivityPlaceholderSharingController();
  return [(GroupActivityPlaceholderSharingController *)&v6 initWithRootViewController:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = objc_allocWithZone(MEMORY[0x277D751E0]);
  selfCopy = self;
  v7 = [v5 initWithBarButtonSystemItem:1 target:selfCopy action:sel_cancelButtonTapped_];
  navigationItem = [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_rootViewController) navigationItem];
  [navigationItem setRightBarButtonItem_];

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for GroupActivityPlaceholderSharingController();
  [(GroupActivityPlaceholderSharingController *)&v9 viewWillAppear:appearCopy];
}

- (void)viewDidLoad
{
  selfCopy = self;
  GroupActivityPlaceholderSharingController.viewDidLoad()();
}

- (void)cancelButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  specialized GroupActivityPlaceholderSharingController.cancelButtonTapped(_:)();
}

- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_placeholderControllerDidCancel);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end