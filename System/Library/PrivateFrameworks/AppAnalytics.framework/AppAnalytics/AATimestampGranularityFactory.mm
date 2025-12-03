@interface AATimestampGranularityFactory
+ (AATimestampGranularityFactory)shared;
- (AATimestampGranularityFactory)init;
- (AATimestampGranularityFactory)initWithName:(id)name;
@end

@implementation AATimestampGranularityFactory

+ (AATimestampGranularityFactory)shared
{
  if (qword_1EDBC8118 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDBC8120;

  return v3;
}

- (AATimestampGranularityFactory)initWithName:(id)name
{
  sub_1B6AB92E0();
  selfCopy = self;
  v5 = _s12AppAnalytics34BridgedTimestampGranularityFactoryC04makedE0yAA0cdE0OSSF_0();

  return v5;
}

- (AATimestampGranularityFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AATimestampGranularityFactory *)&v3 init];
}

@end