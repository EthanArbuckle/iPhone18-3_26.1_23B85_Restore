@interface PodcastsUIApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityPlayer;
- (id)accessibilityPlaybackSpeed;
@end

@implementation PodcastsUIApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTPlayerController"];
  [validationsCopy validateClass:@"MTPlayerController" hasClassMethod:@"defaultInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTPlayerController" hasInstanceMethod:@"mediaRemoteController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMMediaRemoteController" hasInstanceMethod:@"player" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMAVPlayer" hasInstanceMethod:@"playbackSpeed" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"IMAVPlayer" hasInstanceMethod:@"togglePlayPause" withFullSignature:{"B", 0}];
}

- (id)_accessibilityPlayer
{
  v2 = [MEMORY[0x29C2E7850](@"MTPlayerController" a2)];
  v3 = [v2 safeValueForKey:@"mediaRemoteController"];

  v4 = [v3 safeValueForKey:@"player"];

  return v4;
}

- (id)accessibilityPlaybackSpeed
{
  _accessibilityPlayer = [(PodcastsUIApplicationAccessibility *)self _accessibilityPlayer];
  v3 = [_accessibilityPlayer safeUnsignedIntegerForKey:@"playbackSpeed"];

  if (v3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2EA278[v3]);
  }

  return v4;
}

@end