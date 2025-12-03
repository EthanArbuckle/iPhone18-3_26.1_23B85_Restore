@interface ICShowActivityStreamActivity
- (ICShowActivityStreamActivity)init;
- (ICShowActivityStreamActivity)initWithObject:(id)object;
- (ICShowActivityStreamActivity)initWithPerformActivity:(id)activity;
- (ICViewControllerManager)viewControllerManager;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICShowActivityStreamActivity

- (ICShowActivityStreamActivity)initWithObject:(id)object
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___ICShowActivityStreamActivity_object) = object;
  v8.receiver = self;
  v8.super_class = ObjectType;
  objectCopy = object;
  return [(ICShowActivityStreamActivity *)&v8 init];
}

- (ICViewControllerManager)viewControllerManager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)activityTitle
{
  selfCopy = self;
  sub_1003F6170();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

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
  sub_1003F6410(v7, v6);
  sub_10000C840(v7);
}

- (ICShowActivityStreamActivity)initWithPerformActivity:(id)activity
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICShowActivityStreamActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end