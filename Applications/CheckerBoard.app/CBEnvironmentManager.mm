@interface CBEnvironmentManager
+ (CBEnvironmentManager)sharedInstance;
- (CBEnvironmentManager)init;
- (uint64_t)currentEnvironment;
@end

@implementation CBEnvironmentManager

+ (CBEnvironmentManager)sharedInstance
{
  if (qword_100091CC0 != -1)
  {
    swift_once();
  }

  v3 = qword_100092860;

  return v3;
}

- (CBEnvironmentManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EnvironmentManager();
  return [(CBEnvironmentManager *)&v3 init];
}

- (uint64_t)currentEnvironment
{
  v0 = sub_100038C7C();
  if (!v1)
  {
    return 0;
  }

  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {

    return 0;
  }

  if (v0 == 0x74736F6E67616964 && v1 == 0xEB00000000736369)
  {

    return 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }
}

@end