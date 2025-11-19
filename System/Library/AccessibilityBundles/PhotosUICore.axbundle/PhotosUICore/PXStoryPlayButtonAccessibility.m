@interface PXStoryPlayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PXStoryPlayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXStoryPlayButton" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXStoryViewModel" hasInstanceMethod:@"isAtPlaybackEnd" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PXStoryViewModel" hasInstanceMethod:@"desiredPlayState" withFullSignature:{"q", 0}];
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
    v6 = accessibilityPhotosUICoreLocalizedString(v5);
    if (v6)
    {
      goto LABEL_9;
    }
  }

  v8.receiver = self;
  v8.super_class = PXStoryPlayButtonAccessibility;
  v6 = [(PXStoryPlayButtonAccessibility *)&v8 accessibilityLabel];
LABEL_9:

  return v6;
}

@end