@interface SOSCrashDetectionFeedbackController
- (_TtC11SOSSettings35SOSCrashDetectionFeedbackController)initWithDelegate:(id)delegate legalText:(id)text;
- (_TtC11SOSSettings35SOSCrashDetectionFeedbackController)initWithDelegate:(id)delegate legalText:(id)text uuid:(id)uuid;
@end

@implementation SOSCrashDetectionFeedbackController

- (_TtC11SOSSettings35SOSCrashDetectionFeedbackController)initWithDelegate:(id)delegate legalText:(id)text uuid:(id)uuid
{
  uuidCopy = uuid;
  if (!text)
  {
    v6 = 0;
    v8 = 0;
    if (uuid)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v6 = sub_146D4();
  v8 = v7;
  if (!uuidCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  uuidCopy = sub_146D4();
  v10 = v9;
LABEL_6:
  v11 = swift_unknownObjectRetain();
  v12 = sub_13D3C(v11, v6, v8, uuidCopy, v10);
  swift_unknownObjectRelease();
  return v12;
}

- (_TtC11SOSSettings35SOSCrashDetectionFeedbackController)initWithDelegate:(id)delegate legalText:(id)text
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end