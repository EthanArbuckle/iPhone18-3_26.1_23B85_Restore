@interface PodcastsUIApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityPlayer;
- (id)accessibilityPlaybackSpeed;
@end

@implementation PodcastsUIApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTPlayerController"];
  [v3 validateClass:@"MTPlayerController" hasClassMethod:@"defaultInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTPlayerController" hasInstanceMethod:@"mediaRemoteController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMMediaRemoteController" hasInstanceMethod:@"player" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMAVPlayer" hasInstanceMethod:@"playbackSpeed" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"IMAVPlayer" hasInstanceMethod:@"togglePlayPause" withFullSignature:{"B", 0}];
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
  v2 = [(PodcastsUIApplicationAccessibility *)self _accessibilityPlayer];
  v3 = [v2 safeUnsignedIntegerForKey:@"playbackSpeed"];

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