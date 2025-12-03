@interface ICRecentlyDeletedMathNotesActivity
- (ICRecentlyDeletedMathNotesActivity)init;
- (ICRecentlyDeletedMathNotesActivity)initWithPerformActivity:(id)activity;
- (ICRecentlyDeletedMathNotesActivity)initWithViewControllerManager:(id)manager;
- (ICViewControllerManager)viewControllerManager;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (id)menuWithCompletion:(id)completion;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICRecentlyDeletedMathNotesActivity

- (ICRecentlyDeletedMathNotesActivity)initWithViewControllerManager:(id)manager
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ICRecentlyDeletedMathNotesActivity *)&v6 init];
}

- (ICViewControllerManager)viewControllerManager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)activityTitle
{
  mainBundle = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [mainBundle localizedStringForKey:v3 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (UIImage)activityImage
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  return v3;
}

- (NSString)activityType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)performActivityWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1002CBA88;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1004A00B8(v5);
  sub_10000C840(v5);
}

- (id)menuWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_10028D0C0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v9 = sub_10049FD18(v7, v6);
  sub_10000C840(v7);

  return v9;
}

- (ICRecentlyDeletedMathNotesActivity)initWithPerformActivity:(id)activity
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICRecentlyDeletedMathNotesActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end