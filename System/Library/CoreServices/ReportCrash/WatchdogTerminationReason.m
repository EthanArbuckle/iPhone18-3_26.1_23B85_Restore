@interface WatchdogTerminationReason
+ (id)descriptionFromCode:(int)a3;
- (_TtC11ReportCrash25WatchdogTerminationReason)init;
@end

@implementation WatchdogTerminationReason

+ (id)descriptionFromCode:(int)a3
{
  type metadata accessor for WatchdogExitReasonHelper();
  static WatchdogExitReasonHelper.descriptionFromCode(_:)();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtC11ReportCrash25WatchdogTerminationReason)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WatchdogTerminationReason();
  return [(WatchdogTerminationReason *)&v3 init];
}

@end