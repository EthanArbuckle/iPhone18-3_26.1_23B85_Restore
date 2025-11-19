@interface FeedbackConfigurationHelper
+ (BOOL)useReportConcernUI;
- (_TtC21WritingToolsUIService27FeedbackConfigurationHelper)init;
@end

@implementation FeedbackConfigurationHelper

+ (BOOL)useReportConcernUI
{
  if (qword_10025A818 != -1)
  {
    swift_once();
  }

  if (byte_100264750 == 1)
  {
    v4[3] = &type metadata for WritingTools;
    v4[4] = sub_10002AC88();
    LOBYTE(v4[0]) = 14;
    v2 = isFeatureEnabled(_:)();
    sub_10000F4B4(v4);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

- (_TtC21WritingToolsUIService27FeedbackConfigurationHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FeedbackConfigurationHelper();
  return [(FeedbackConfigurationHelper *)&v3 init];
}

@end