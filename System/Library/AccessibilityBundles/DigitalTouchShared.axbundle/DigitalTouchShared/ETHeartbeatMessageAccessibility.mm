@interface ETHeartbeatMessageAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)stopPlaying;
@end

@implementation ETHeartbeatMessageAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETHeartbeatMessage"];
  [validationsCopy validateClass:@"ETHeartbeatMessage" isKindOfClass:@"ETMessage"];
  [validationsCopy validateClass:@"ETHeartbeatMessage" hasInstanceMethod:@"_displayInScene: useDuration: fastStart:" withFullSignature:{"v", "@", "B", "B", 0}];
  [validationsCopy validateClass:@"ETHeartbeatMessage" hasInstanceMethod:@"stopPlaying" withFullSignature:{"v", 0}];
}

uint64_t __73__ETHeartbeatMessageAccessibility__displayInScene_useDuration_fastStart___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 49);
  v5.receiver = *(a1 + 40);
  v5.super_class = ETHeartbeatMessageAccessibility;
  objc_msgSendSuper2(&v5, sel__displayInScene_useDuration_fastStart_, v1, v2, v3);
  return _axSetIsWaitingOnETMessageStart(0);
}

- (void)stopPlaying
{
  v2.receiver = self;
  v2.super_class = ETHeartbeatMessageAccessibility;
  [(ETHeartbeatMessageAccessibility *)&v2 stopPlaying];
  UIAccessibilityPostNotification(0x419u, 0);
}

@end