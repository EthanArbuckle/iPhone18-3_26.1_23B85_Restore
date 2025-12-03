@interface PrivacySettingsStoreCoordinator
- (void)didChange:(id)change;
@end

@implementation PrivacySettingsStoreCoordinator

- (void)didChange:(id)change
{
  changeCopy = change;

  sub_1B71F7ED4(changeCopy);
}

@end