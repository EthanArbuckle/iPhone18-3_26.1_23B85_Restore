@interface EngagementDeepLinkEvent
- (NSDictionary)engagementData;
@end

@implementation EngagementDeepLinkEvent

- (NSDictionary)engagementData
{
  if (EngagementDeepLinkEvent.engagementData.getter())
  {
    v2 = sub_1BB1DD2A8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end