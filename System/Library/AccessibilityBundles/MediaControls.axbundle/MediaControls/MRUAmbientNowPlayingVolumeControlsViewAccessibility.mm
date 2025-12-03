@interface MRUAmbientNowPlayingVolumeControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (void)_accessibilityIncreaseVolume:(BOOL)volume;
@end

@implementation MRUAmbientNowPlayingVolumeControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MRUAmbientNowPlayingVolumeControlsView" hasInstanceVariable:@"_volumeController" withType:"MRUVolumeController"];
  [validationsCopy validateClass:@"MRUVolumeController" hasInstanceMethod:@"volumeValue" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"MRUVolumeController" hasInstanceMethod:@"setVolumeValue:" withFullSignature:{"v", "f", 0}];
}

- (id)accessibilityValue
{
  volumeController = [(MRUAmbientNowPlayingVolumeControlsViewAccessibility *)self volumeController];
  [volumeController safeFloatForKey:@"volumeValue"];
  v3 = AXFormatFloatWithPercentage();

  return v3;
}

- (void)_accessibilityIncreaseVolume:(BOOL)volume
{
  volumeController = [(MRUAmbientNowPlayingVolumeControlsViewAccessibility *)self volumeController];
  [volumeController safeFloatForKey:@"volumeValue"];

  AXPerformSafeBlock();
}

void __84__MRUAmbientNowPlayingVolumeControlsViewAccessibility__accessibilityIncreaseVolume___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) volumeController];
  LODWORD(v2) = *(a1 + 40);
  [v3 setVolumeValue:v2];
}

@end