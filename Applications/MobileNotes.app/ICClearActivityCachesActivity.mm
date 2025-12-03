@interface ICClearActivityCachesActivity
- (ICClearActivityCachesActivity)init;
- (ICClearActivityCachesActivity)initWithNote:(id)note;
- (ICClearActivityCachesActivity)initWithPerformActivity:(id)activity;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICClearActivityCachesActivity

- (ICClearActivityCachesActivity)initWithNote:(id)note
{
  ObjectType = swift_getObjectType();
  *&self->ICActivity_opaque[OBJC_IVAR___ICClearActivityCachesActivity_note] = note;
  v8.receiver = self;
  v8.super_class = ObjectType;
  noteCopy = note;
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

- (void)performActivityWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_10028D0C0;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_10028CFFC();
  sub_10000C840(v5);
}

- (ICClearActivityCachesActivity)initWithPerformActivity:(id)activity
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