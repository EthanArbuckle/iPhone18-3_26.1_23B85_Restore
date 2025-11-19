@interface SKTwoErrorEvent
- (NSString)eventName;
- (id)createPayload;
@end

@implementation SKTwoErrorEvent

- (NSString)eventName
{
  sub_1B24D0EB8();
  v2 = sub_1B256D98C();

  return v2;
}

- (id)createPayload
{
  v2 = self;
  v3 = sub_1B24D0ED4();

  if (v3)
  {
    sub_1B24D1250();
    v4 = sub_1B256D86C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end