@interface PHDeclineCallServiceFactory
- (id)makeWithCallCenter:(id)center;
@end

@implementation PHDeclineCallServiceFactory

- (id)makeWithCallCenter:(id)center
{
  centerCopy = center;
  selfCopy = self;
  v6 = sub_100201E38(centerCopy);

  return v6;
}

@end