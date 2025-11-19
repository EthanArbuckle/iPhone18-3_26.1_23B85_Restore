@interface MRUAmbientNowPlayingVolumeControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (void)_accessibilityIncreaseVolume:(BOOL)a3;
@end

@implementation MRUAmbientNowPlayingVolumeControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUAmbientNowPlayingVolumeControlsView" hasInstanceVariable:@"_volumeController" withType:"MRUVolumeController"];
  [v3 validateClass:@"MRUVolumeController" hasInstanceMethod:@"volumeValue" withFullSignature:{"f", 0}];
  [v3 validateClass:@"MRUVolumeController" hasInstanceMethod:@"setVolumeValue:" withFullSignature:{"v", "f", 0}];
}

- (id)accessibilityValue
{
  v2 = [(MRUAmbientNowPlayingVolumeControlsViewAccessibility *)self volumeController];
  [v2 safeFloatForKey:@"volumeValue"];
  v3 = AXFormatFloatWithPercentage();

  return v3;
}

- (void)_accessibilityIncreaseVolume:(BOOL)a3
{
  v3 = [(MRUAmbientNowPlayingVolumeControlsViewAccessibility *)self volumeController];
  [v3 safeFloatForKey:@"volumeValue"];

  AXPerformSafeBlock();
}

void __84__MRUAmbientNowPlayingVolumeControlsViewAccessibility__accessibilityIncreaseVolume___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) volumeController];
  LODWORD(v2) = *(a1 + 40);
  [v3 setVolumeValue:v2];
}

@end