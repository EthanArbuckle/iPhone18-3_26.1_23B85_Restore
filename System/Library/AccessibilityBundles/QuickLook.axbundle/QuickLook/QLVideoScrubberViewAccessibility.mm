@interface QLVideoScrubberViewAccessibility
- (BOOL)isUserInteractingWithScrubber;
@end

@implementation QLVideoScrubberViewAccessibility

- (BOOL)isUserInteractingWithScrubber
{
  v3 = [(QLVideoScrubberViewAccessibility *)self accessibilityIdentification];
  if (![v3 isEqualToString:@"MediaScrubber"])
  {

    goto LABEL_7;
  }

  v4 = [(QLVideoScrubberViewAccessibility *)self _axIsScrubbering];

  if (!v4)
  {
LABEL_7:
    v6.receiver = self;
    v6.super_class = QLVideoScrubberViewAccessibility;
    return [(QLVideoScrubberViewAccessibility *)&v6 isUserInteractingWithScrubber];
  }

  return [(QLVideoScrubberViewAccessibility *)self _axIsScrubbering];
}

@end