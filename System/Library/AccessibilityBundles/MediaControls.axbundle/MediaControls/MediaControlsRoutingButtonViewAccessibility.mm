@interface MediaControlsRoutingButtonViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MediaControlsRoutingButtonViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(MediaControlsRoutingButtonViewAccessibility *)self safeIntegerForKey:@"currentMode"];
  if (v2 < 2)
  {
    v3 = @"playback.destination.button.label";
LABEL_5:
    v4 = accessibilityLocalizedString(v3);
    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v3 = @"media.controls.container.label";
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end