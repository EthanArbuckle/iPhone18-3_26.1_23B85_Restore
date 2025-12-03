@interface MiroMovieViewAccessibility
- (id)accessibilityValue;
@end

@implementation MiroMovieViewAccessibility

- (id)accessibilityValue
{
  LOBYTE(time.value) = 0;
  objc_opt_class();
  v3 = [(MiroMovieViewAccessibility *)self safeValueForKey:@"player"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 rate];
  if (v5 <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    currentItem = [v4 currentItem];
    v7 = currentItem;
    if (currentItem)
    {
      [currentItem currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    CMTimeGetSeconds(&time);
    v8 = AXDurationStringForDuration();
  }

  return v8;
}

@end