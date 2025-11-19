@interface CrashPatternMatchResult
- (BOOL)needsUrgentSubmitWithReport:(id)a3;
- (NSString)errorMessage;
- (_TtC11ReportCrash23CrashPatternMatchResult)init;
- (void)setErrorMessage:(id)a3;
@end

@implementation CrashPatternMatchResult

- (NSString)errorMessage
{
  if (*(self + OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_errorMessage + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_errorMessage);
    v3 = *(self + OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_errorMessage + 8);

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setErrorMessage:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_errorMessage);
  v7 = *(self + OBJC_IVAR____TtC11ReportCrash23CrashPatternMatchResult_errorMessage + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (BOOL)needsUrgentSubmitWithReport:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10002AB34();

  return self & 1;
}

- (_TtC11ReportCrash23CrashPatternMatchResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end