@interface StoryCardCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation StoryCardCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppInstallExtension.StoryCardCollectionViewCell" hasSwiftField:@"infoLayer" withSwiftType:"TodayCardInfoLayerView"];
  [validationsCopy validateClass:@"AppInstallExtension.TodayCardInfoLayerView" hasSwiftField:@"overlay" withSwiftType:"Optional<AnyTodayCardCellOverlay>"];
  [validationsCopy validateClass:@"AppInstallExtension.TodayCardInfoLayerView" hasSwiftField:@"labelsView" withSwiftType:"TodayCardLabelsView"];
  [validationsCopy validateClass:@"AppInstallExtension.StoryCardCollectionViewCell" hasSwiftField:@"mediaBackgroundView" withSwiftType:"StoryCardMediaView"];
  [validationsCopy validateClass:@"AppInstallExtension.StoryCardMediaView" hasSwiftField:@"revealingVideoView" withSwiftType:"RevealingVideoView"];
  [validationsCopy validateClass:@"AppInstallExtension.RevealingVideoView" hasSwiftField:@"videoView" withSwiftType:"Optional<TodayCardVideoView>"];
  [validationsCopy validateClass:@"AppInstallExtension.VideoView" hasSwiftField:@"playButton" withSwiftType:"PlayButton"];
  [validationsCopy validateClass:@"AVVolumeButtonControl"];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(StoryCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"mediaBackgroundView"];
  v5 = [v4 safeSwiftValueForKey:@"revealingVideoView"];
  v6 = [v5 safeSwiftValueForKey:@"videoView"];
  v7 = [v6 safeSwiftValueForKey:@"playButton"];
  [v7 safeCGFloatForKey:@"alpha"];
  if (v8 > 0.0)
  {
    [array axSafelyAddObject:v7];
  }

  v9 = [v6 _accessibilityDescendantOfType:MEMORY[0x29C2C8630](@"AVVolumeButtonControl")];
  [array axSafelyAddObject:v9];
  v10 = [(StoryCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"infoLayer"];
  v11 = [v10 safeSwiftValueForKey:@"labelsView"];
  [v11 setIsAccessibilityElement:1];
  [v11 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  [array axSafelyAddObject:v11];
  v12 = [v10 safeSwiftValueForKey:@"overlay"];
  [array axSafelyAddObject:v12];

  return array;
}

@end