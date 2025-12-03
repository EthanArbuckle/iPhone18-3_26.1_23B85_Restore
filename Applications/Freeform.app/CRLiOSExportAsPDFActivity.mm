@interface CRLiOSExportAsPDFActivity
- (NSString)activityTitle;
- (NSString)activityType;
- (_TtC8Freeform25CRLiOSExportAsPDFActivity)init;
- (void)performActivity;
@end

@implementation CRLiOSExportAsPDFActivity

- (NSString)activityType
{
  if (qword_1019F1A00 != -1)
  {
    swift_once();
  }

  v3 = qword_101A0A100;

  return v3;
}

- (NSString)activityTitle
{
  sub_100994C58();
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

- (void)performActivity
{
  selfCopy = self;
  sub_100992880();
}

- (_TtC8Freeform25CRLiOSExportAsPDFActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end