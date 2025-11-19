@interface SOSCrashDetectionFeedbackController
- (_TtC11SOSSettings35SOSCrashDetectionFeedbackController)initWithDelegate:(id)a3 legalText:(id)a4;
- (_TtC11SOSSettings35SOSCrashDetectionFeedbackController)initWithDelegate:(id)a3 legalText:(id)a4 uuid:(id)a5;
@end

@implementation SOSCrashDetectionFeedbackController

- (_TtC11SOSSettings35SOSCrashDetectionFeedbackController)initWithDelegate:(id)a3 legalText:(id)a4 uuid:(id)a5
{
  v5 = a5;
  if (!a4)
  {
    v6 = 0;
    v8 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v6 = sub_146D4();
  v8 = v7;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = sub_146D4();
  v10 = v9;
LABEL_6:
  v11 = swift_unknownObjectRetain();
  v12 = sub_13D3C(v11, v6, v8, v5, v10);
  swift_unknownObjectRelease();
  return v12;
}

- (_TtC11SOSSettings35SOSCrashDetectionFeedbackController)initWithDelegate:(id)a3 legalText:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end