@interface SFSecIdentityPreferencesController
@end

@implementation SFSecIdentityPreferencesController

void __87___SFSecIdentityPreferencesController_sharedPersistentSecIdentityPreferencesController__block_invoke()
{
  v0 = [[_SFSecIdentityPreferencesController alloc] _initUsingEphemeralStorage:0];
  v1 = sharedPersistentSecIdentityPreferencesController_sharedInstance;
  sharedPersistentSecIdentityPreferencesController_sharedInstance = v0;
}

@end