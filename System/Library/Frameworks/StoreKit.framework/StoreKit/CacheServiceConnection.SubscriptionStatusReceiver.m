@interface CacheServiceConnection.SubscriptionStatusReceiver
- (void)receivedStatusGroups:(id)a3;
- (void)receivedStatuses:(id)a3;
@end

@implementation CacheServiceConnection.SubscriptionStatusReceiver

- (void)receivedStatusGroups:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_1B256D22C();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B24E4F90(v3, v7);
  sub_1B2443AD0(v3, v7);
}

- (void)receivedStatuses:(id)a3
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000);
    v4 = sub_1B256DC5C();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1B24E54E0(v4);
}

@end