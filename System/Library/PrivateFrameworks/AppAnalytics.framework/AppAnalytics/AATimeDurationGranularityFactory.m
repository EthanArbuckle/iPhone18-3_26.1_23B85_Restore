@interface AATimeDurationGranularityFactory
+ (AATimeDurationGranularityFactory)shared;
- (AATimeDurationGranularityFactory)init;
- (AATimeDurationGranularityFactory)initWithName:(id)a3;
@end

@implementation AATimeDurationGranularityFactory

+ (AATimeDurationGranularityFactory)shared
{
  if (qword_1EB95AA00 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB95C7D0;

  return v3;
}

- (AATimeDurationGranularityFactory)initWithName:(id)a3
{
  sub_1B6AB92E0();
  v4 = self;
  v5 = _s12AppAnalytics37BridgedTimeDurationGranularityFactoryC04makedeF0yAA0cdeF0OSSF_0();

  return v5;
}

- (AATimeDurationGranularityFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AATimeDurationGranularityFactory *)&v3 init];
}

@end