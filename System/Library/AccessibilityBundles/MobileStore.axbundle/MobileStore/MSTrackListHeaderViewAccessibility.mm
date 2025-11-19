@interface MSTrackListHeaderViewAccessibility
- (id)_accessibilityChildren;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (id)accessibilityLabel;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)a3;
@end

@implementation MSTrackListHeaderViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(MSTrackListHeaderViewAccessibility *)self safeValueForKey:@"_albumLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(MSTrackListHeaderViewAccessibility *)self safeValueForKey:@"_artistLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = [(MSTrackListHeaderViewAccessibility *)self safeValueForKey:@"_releaseDateLabel"];
  v8 = [v7 accessibilityLabel];

  v9 = [MEMORY[0x29EDBA050] string];
  if ([v6 length])
  {
    [v9 appendFormat:@"%@, ", v6];
  }

  if ([v4 length])
  {
    [v9 appendFormat:@"%@, ", v4];
  }

  if ([v8 length])
  {
    [v9 appendFormat:@"%@, ", v8];
  }

  return v9;
}

- (id)_accessibilityChildren
{
  v3 = MEMORY[0x29EDC7620];
  v4 = [(MSTrackListHeaderViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
    [(MSTrackListHeaderViewAccessibility *)self _accessibilitySetRetainedValue:v6 forKey:*v3];
    v7 = [objc_allocWithZone(MSTrackAccessibilityElement) initWithAccessibilityContainer:self];
    v8 = [(MSTrackListHeaderViewAccessibility *)self accessibilityLabel];
    [v7 setAccessibilityLabel:v8];

    v9 = [(MSTrackListHeaderViewAccessibility *)self accessibilityLanguage];
    [v7 setAccessibilityLanguage:v9];

    [(MSTrackListHeaderViewAccessibility *)self accessibilityFrame];
    [v7 setAccessibilityFrame:?];
    [v6 addObject:v7];
    v10 = [(MSTrackListHeaderViewAccessibility *)self safeValueForKey:@"_offerButton"];
    if (v10)
    {
      [v6 addObject:v10];
    }

    v5 = v6;
  }

  return v5;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v23 = *MEMORY[0x29EDCA608];
  if ([a4 _gsEvent])
  {
    GSEventGetLocationInWindow();
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
    v6 = 0.0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(MSTrackListHeaderViewAccessibility *)self _accessibilityChildren];
  v10 = [v9 reverseObjectEnumerator];
  v11 = [v10 allObjects];

  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        [v15 accessibilityFrame];
        v25.x = v6;
        v25.y = v8;
        if (CGRectContainsPoint(v26, v25))
        {
          v12 = v15;
          goto LABEL_14;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v16 = *MEMORY[0x29EDCA608];

  return v12;
}

- (int64_t)accessibilityElementCount
{
  v2 = [(MSTrackListHeaderViewAccessibility *)self _accessibilityChildren];
  v3 = [v2 count];

  return v3;
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v4 = [(MSTrackListHeaderViewAccessibility *)self _accessibilityChildren];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v4 = a3;
  v5 = [(MSTrackListHeaderViewAccessibility *)self _accessibilityChildren];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

@end