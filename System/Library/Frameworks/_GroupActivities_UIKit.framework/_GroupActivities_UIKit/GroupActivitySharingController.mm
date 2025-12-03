@interface GroupActivitySharingController
- (BOOL)startStagedActivity;
- (NSString)shareSheetSessionID;
- (_TtC22_GroupActivities_UIKit30GroupActivitySharingController)initWithNibName:(id)name bundle:(id)bundle;
- (void)directlyCreateActivity;
- (void)prepareForShareSheetSessionWithCompletion:(id)completion;
- (void)registerWithResultHandler:(id)handler;
- (void)setShareSheetSessionID:(id)d;
- (void)setStartStagedActivity:(BOOL)activity;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GroupActivitySharingController

- (NSString)shareSheetSessionID
{
  v2 = *((*MEMORY[0x277D85000] & **(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller)) + 0xD0);
  selfCopy = self;
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

- (void)setShareSheetSessionID:(id)d
{
  if (d)
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
  selfCopy = self;
  v7(v4, v6);
}

- (BOOL)startStagedActivity
{
  v2 = *((*MEMORY[0x277D85000] & **(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller)) + 0xE8);
  selfCopy = self;
  v4 = v2();

  return v4 & 1;
}

- (void)setStartStagedActivity:(BOOL)activity
{
  activityCopy = activity;
  v4 = *((*MEMORY[0x277D85000] & **(&self->super.super.super.isa + OBJC_IVAR____TtC22_GroupActivities_UIKit30GroupActivitySharingController_controller)) + 0xF0);
  selfCopy = self;
  v4(activityCopy);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  GroupActivitySharingController.viewWillAppear(_:)(appear);
}

- (void)viewDidLoad
{
  selfCopy = self;
  GroupActivitySharingController.viewDidLoad()();
}

- (_TtC22_GroupActivities_UIKit30GroupActivitySharingController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)registerWithResultHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  GroupActivitySharingController.registerResultHandler(_:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v5);
}

- (void)prepareForShareSheetSessionWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v3[2]();

  _Block_release(v3);
}

- (void)directlyCreateActivity
{
  selfCopy = self;
  GroupActivitySharingController.directlyCreateActivity()();
}

@end