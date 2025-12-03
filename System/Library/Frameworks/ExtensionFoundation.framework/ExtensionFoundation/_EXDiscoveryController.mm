@interface _EXDiscoveryController
+ (_EXDiscoveryController)sharedInstance;
- (void)observerDidObserveDatabaseChange:(id)change;
@end

@implementation _EXDiscoveryController

+ (_EXDiscoveryController)sharedInstance
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static _EXDiscoveryController.shared;

  return v3;
}

- (void)observerDidObserveDatabaseChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  _EXDiscoveryController.observerDidObserveSettingsChange()();
}

@end