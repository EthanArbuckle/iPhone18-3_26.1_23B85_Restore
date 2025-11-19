@interface ICEditSmartFolderActivity
- (ICEditSmartFolderActivity)init;
- (ICEditSmartFolderActivity)initWithPerformActivity:(id)a3;
- (ICEditSmartFolderActivity)initWithSmartFolder:(id)a3 presentingViewController:(id)a4;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (UIViewController)presentingViewController;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICEditSmartFolderActivity

- (UIViewController)presentingViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ICEditSmartFolderActivity)initWithSmartFolder:(id)a3 presentingViewController:(id)a4
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___ICEditSmartFolderActivity_smartFolder) = a3;
  swift_unknownObjectWeakAssign();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = a3;
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

- (void)performActivityWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1004A547C;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1004A52D0();
  sub_10000C840(v5);
}

- (ICEditSmartFolderActivity)initWithPerformActivity:(id)a3
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