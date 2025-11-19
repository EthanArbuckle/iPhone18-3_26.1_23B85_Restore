@interface GroupActivityPlaceholderSharingController
- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)init;
- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithCoder:(id)a3;
- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithRootViewController:(id)a3;
- (void)cancelButtonTapped:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v6 = self;
  v7 = [v5 initWithBarButtonSystemItem:1 target:v6 action:sel_cancelButtonTapped_];
  v8 = [*(&v6->super.super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_rootViewController) navigationItem];
  [v8 setRightBarButtonItem_];

  v9.receiver = v6;
  v9.super_class = type metadata accessor for GroupActivityPlaceholderSharingController();
  [(GroupActivityPlaceholderSharingController *)&v9 viewWillAppear:v3];
}

- (void)viewDidLoad
{
  v2 = self;
  GroupActivityPlaceholderSharingController.viewDidLoad()();
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized GroupActivityPlaceholderSharingController.cancelButtonTapped(_:)();
}

- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_placeholderControllerDidCancel);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end