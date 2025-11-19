@interface WODataLinkWorkoutStateHelper
+ (id)descriptionFor:(int64_t)a3;
- (WODataLinkWorkoutStateHelper)init;
@end

@implementation WODataLinkWorkoutStateHelper

+ (id)descriptionFor:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (!a3 || a3 == 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (a3 != 2 && a3 != 3)
  {
    goto LABEL_12;
  }

LABEL_9:
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (WODataLinkWorkoutStateHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DataLinkWorkoutStateHelper();
  return [(WODataLinkWorkoutStateHelper *)&v3 init];
}

@end