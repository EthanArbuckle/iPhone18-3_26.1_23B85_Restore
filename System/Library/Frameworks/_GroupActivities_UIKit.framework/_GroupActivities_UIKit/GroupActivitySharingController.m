@interface GroupActivitySharingController
- (BOOL)startStagedActivity;
- (NSString)shareSheetSessionID;
- (_TtC22_GroupActivities_UIKit30GroupActivitySharingController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)directlyCreateActivity;
- (void)prepareForShareSheetSessionWithCompletion:(id)a3;
- (void)registerWithResultHandler:(id)a3;
- (void)setShareSheetSessionID:(id)a3;
- (void)setStartStagedActivity:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GroupActivitySharingController

- (NSString)shareSheetSessionID
{
  v2 = *((*MEMORY[0x277D85000] & **(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller)) + 0xD0);
  v3 = self;
  v4 = v2();
  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x23EEA6320](v4, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setShareSheetSessionID:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller)) + 0xD8);
  v8 = self;
  v7(v4, v6);
}

- (BOOL)startStagedActivity
{
  v2 = *((*MEMORY[0x277D85000] & **(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller)) + 0xE8);
  v3 = self;
  v4 = v2();

  return v4 & 1;
}

- (void)setStartStagedActivity:(BOOL)a3
{
  v3 = a3;
  v4 = *((*MEMORY[0x277D85000] & **(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller)) + 0xF0);
  v5 = self;
  v4(v3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  GroupActivitySharingController.viewWillAppear(_:)(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  GroupActivitySharingController.viewDidLoad()();
}

- (_TtC22_GroupActivities_UIKit30GroupActivitySharingController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)registerWithResultHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  GroupActivitySharingController.registerResultHandler(_:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v5);
}

- (void)prepareForShareSheetSessionWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2]();

  _Block_release(v3);
}

- (void)directlyCreateActivity
{
  v2 = self;
  GroupActivitySharingController.directlyCreateActivity()();
}

@end