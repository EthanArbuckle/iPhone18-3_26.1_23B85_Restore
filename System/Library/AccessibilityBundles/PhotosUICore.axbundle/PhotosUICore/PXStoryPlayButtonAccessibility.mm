@interface PXStoryPlayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PXStoryPlayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXStoryPlayButton" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXStoryViewModel" hasInstanceMethod:@"isAtPlaybackEnd" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PXStoryViewModel" hasInstanceMethod:@"desiredPlayState" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PXStoryPlayButtonAccessibility *)self safeValueForKey:@"viewModel"];
  v4 = [v3 safeIntegerForKey:@"desiredPlayState"];
  if (v4 == 1)
  {
    v5 = @"story.pause";
    goto LABEL_7;
  }

  if (!v4)
  {
    if ([v3 safeBoolForKey:@"isAtPlaybackEnd"])
    {
      v5 = @"story.replay";
    }

    else
    {
      v5 = @"story.play";
    }

LABEL_7:
    accessibilityLabel = accessibilityPhotosUICoreLocalizedString(v5);
    if (accessibilityLabel)
    {
      goto LABEL_9;
    }
  }

  v8.receiver = self;
  v8.super_class = PXStoryPlayButtonAccessibility;
  accessibilityLabel = [(PXStoryPlayButtonAccessibility *)&v8 accessibilityLabel];
LABEL_9:

  return accessibilityLabel;
}

@end