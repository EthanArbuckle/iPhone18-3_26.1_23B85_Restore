@interface JSClientDemo
- (BOOL)inStoreDemoMode;
- (NSDictionary)options;
- (NSString)storeId;
- (int64_t)deviceType;
@end

@implementation JSClientDemo

- (int64_t)deviceType
{
  v2 = self;
  v3 = sub_1001063D4();

  return v3;
}

- (BOOL)inStoreDemoMode
{
  v2 = self;
  v3 = sub_100106734();

  return v3 & 1;
}

- (NSDictionary)options
{
  v2 = self;
  sub_1001067D4();

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSString)storeId
{
  v2 = self;
  sub_100106BD8();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end