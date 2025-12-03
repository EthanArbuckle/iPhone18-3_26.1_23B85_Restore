@interface QLVideoScrubberViewAccessibility
- (BOOL)isUserInteractingWithScrubber;
@end

@implementation QLVideoScrubberViewAccessibility

- (BOOL)isUserInteractingWithScrubber
{
  accessibilityIdentification = [(QLVideoScrubberViewAccessibility *)self accessibilityIdentification];
  if (![accessibilityIdentification isEqualToString:@"MediaScrubber"])
  {

    goto LABEL_7;
  }

  _axIsScrubbering = [(QLVideoScrubberViewAccessibility *)self _axIsScrubbering];

  if (!_axIsScrubbering)
  {
LABEL_7:
    v6.receiver = self;
    v6.super_class = QLVideoScrubberViewAccessibility;
    return [(QLVideoScrubberViewAccessibility *)&v6 isUserInteractingWithScrubber];
  }

  return [(QLVideoScrubberViewAccessibility *)self _axIsScrubbering];
}

@end