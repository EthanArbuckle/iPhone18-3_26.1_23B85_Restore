@interface LockScreenDataModel
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation LockScreenDataModel

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  _s20HomeWidgetLockScreen0cD9DataModelC25homeManagerDidUpdateHomesyySo06HMHomeH0CF_0(homesCopy);
}

@end