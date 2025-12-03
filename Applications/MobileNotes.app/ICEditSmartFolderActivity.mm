@interface ICEditSmartFolderActivity
- (ICEditSmartFolderActivity)init;
- (ICEditSmartFolderActivity)initWithPerformActivity:(id)activity;
- (ICEditSmartFolderActivity)initWithSmartFolder:(id)folder presentingViewController:(id)controller;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (UIViewController)presentingViewController;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICEditSmartFolderActivity

- (UIViewController)presentingViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ICEditSmartFolderActivity)initWithSmartFolder:(id)folder presentingViewController:(id)controller
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___ICEditSmartFolderActivity_smartFolder) = folder;
  swift_unknownObjectWeakAssign();
  v9.receiver = self;
  v9.super_class = ObjectType;
  folderCopy = folder;
  return [(ICEditSmartFolderActivity *)&v9 init];
}

- (UIImage)activityImage
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  return v3;
}

- (NSString)activityTitle
{
  sub_1004A51F4();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

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
    v5 = sub_1004A547C;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1004A52D0();
  sub_10000C840(v5);
}

- (ICEditSmartFolderActivity)initWithPerformActivity:(id)activity
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICEditSmartFolderActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end