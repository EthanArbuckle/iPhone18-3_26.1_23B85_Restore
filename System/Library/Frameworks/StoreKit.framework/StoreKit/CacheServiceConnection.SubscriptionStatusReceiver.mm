@interface CacheServiceConnection.SubscriptionStatusReceiver
- (void)receivedStatusGroups:(id)groups;
- (void)receivedStatuses:(id)statuses;
@end

@implementation CacheServiceConnection.SubscriptionStatusReceiver

- (void)receivedStatusGroups:(id)groups
{
  groupsCopy = groups;
  if (groups)
  {
    selfCopy = self;
    v5 = groupsCopy;
    groupsCopy = sub_1B256D22C();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B24E4F90(groupsCopy, v7);
  sub_1B2443AD0(groupsCopy, v7);
}

- (void)receivedStatuses:(id)statuses
{
  if (statuses)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000);
    v4 = sub_1B256DC5C();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1B24E54E0(v4);
}

@end