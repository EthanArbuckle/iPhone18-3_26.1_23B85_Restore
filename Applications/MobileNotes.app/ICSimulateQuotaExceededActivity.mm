@interface ICSimulateQuotaExceededActivity
- (ICSimulateQuotaExceededActivity)init;
- (ICSimulateQuotaExceededActivity)initWithNote:(id)note;
- (ICSimulateQuotaExceededActivity)initWithPerformActivity:(id)activity;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICSimulateQuotaExceededActivity

- (ICSimulateQuotaExceededActivity)initWithNote:(id)note
{
  ObjectType = swift_getObjectType();
  *&self->ICActivity_opaque[OBJC_IVAR___ICSimulateQuotaExceededActivity_note] = note;
  v8.receiver = self;
  v8.super_class = ObjectType;
  noteCopy = note;
  return [(ICSimulateQuotaExceededActivity *)&v8 init];
}

- (NSString)activityTitle
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
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
    v5 = sub_10028D0C0;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1003D8790();
  sub_10000C840(v5);
}

- (ICSimulateQuotaExceededActivity)initWithPerformActivity:(id)activity
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICSimulateQuotaExceededActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end