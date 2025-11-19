@interface ICClearActivityCachesActivity
- (ICClearActivityCachesActivity)init;
- (ICClearActivityCachesActivity)initWithNote:(id)a3;
- (ICClearActivityCachesActivity)initWithPerformActivity:(id)a3;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICClearActivityCachesActivity

- (ICClearActivityCachesActivity)initWithNote:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->ICActivity_opaque[OBJC_IVAR___ICClearActivityCachesActivity_note] = a3;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = a3;
  return [(ICClearActivityCachesActivity *)&v8 init];
}

- (UIImage)activityImage
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  return v3;
}

- (NSString)activityTitle
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
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
    v5 = sub_10028D0C0;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_10028CFFC();
  sub_10000C840(v5);
}

- (ICClearActivityCachesActivity)initWithPerformActivity:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICClearActivityCachesActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end