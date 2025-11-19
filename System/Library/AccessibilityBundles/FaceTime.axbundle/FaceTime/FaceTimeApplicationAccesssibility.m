@interface FaceTimeApplicationAccesssibility
- (BOOL)_accessibilityAllowsNotificationsDuringSuspension;
@end

@implementation FaceTimeApplicationAccesssibility

- (BOOL)_accessibilityAllowsNotificationsDuringSuspension
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformBlockSynchronouslyOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __86__FaceTimeApplicationAccesssibility__accessibilityAllowsNotificationsDuringSuspension__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29EDC6F78] sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 currentCallCount] != 0;
}

@end