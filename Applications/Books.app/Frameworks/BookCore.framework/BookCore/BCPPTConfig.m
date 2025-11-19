@interface BCPPTConfig
+ (BOOL)shouldUseCachedTopPicksCards;
+ (BOOL)usePPTLaunchContent;
+ (NSString)launchTestKey;
+ (OS_os_log)os_log;
- (BCPPTConfig)init;
@end

@implementation BCPPTConfig

+ (NSString)launchTestKey
{
  v2 = sub_1EEED4();

  return v2;
}

+ (OS_os_log)os_log
{
  if (qword_33F988 != -1)
  {
    swift_once();
  }

  v3 = qword_341AD0;

  return v3;
}

+ (BOOL)usePPTLaunchContent
{
  if (qword_33F990 != -1)
  {
    swift_once();
  }

  if (byte_341AD8)
  {
    return 1;
  }

  if (qword_33F998 != -1)
  {
    swift_once();
  }

  return byte_341AD9;
}

+ (BOOL)shouldUseCachedTopPicksCards
{
  if (qword_33F9A0 != -1)
  {
    swift_once();
  }

  return byte_341ADA - 1 < 2;
}

- (BCPPTConfig)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PPTConfig();
  return [(BCPPTConfig *)&v3 init];
}

@end