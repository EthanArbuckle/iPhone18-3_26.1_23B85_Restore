@interface MSTrackListHeaderViewAccessibility
- (id)_accessibilityChildren;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityElementAtIndex:(int64_t)index;
- (id)accessibilityLabel;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)element;
@end

@implementation MSTrackListHeaderViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(MSTrackListHeaderViewAccessibility *)self safeValueForKey:@"_albumLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(MSTrackListHeaderViewAccessibility *)self safeValueForKey:@"_artistLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = [(MSTrackListHeaderViewAccessibility *)self safeValueForKey:@"_releaseDateLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];

  string = [MEMORY[0x29EDBA050] string];
  if ([accessibilityLabel2 length])
  {
    [string appendFormat:@"%@, ", accessibilityLabel2];
  }

  if ([accessibilityLabel length])
  {
    [string appendFormat:@"%@, ", accessibilityLabel];
  }

  if ([accessibilityLabel3 length])
  {
    [string appendFormat:@"%@, ", accessibilityLabel3];
  }

  return string;
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
    accessibilityLabel = [(MSTrackListHeaderViewAccessibility *)self accessibilityLabel];
    [v7 setAccessibilityLabel:accessibilityLabel];

    accessibilityLanguage = [(MSTrackListHeaderViewAccessibility *)self accessibilityLanguage];
    [v7 setAccessibilityLanguage:accessibilityLanguage];

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

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  v23 = *MEMORY[0x29EDCA608];
  if ([event _gsEvent])
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
  _accessibilityChildren = [(MSTrackListHeaderViewAccessibility *)self _accessibilityChildren];
  reverseObjectEnumerator = [_accessibilityChildren reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v12 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(allObjects);
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

      v12 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  _accessibilityChildren = [(MSTrackListHeaderViewAccessibility *)self _accessibilityChildren];
  v3 = [_accessibilityChildren count];

  return v3;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  _accessibilityChildren = [(MSTrackListHeaderViewAccessibility *)self _accessibilityChildren];
  v5 = [_accessibilityChildren objectAtIndex:index];

  return v5;
}

- (int64_t)indexOfAccessibilityElement:(id)element
{
  elementCopy = element;
  _accessibilityChildren = [(MSTrackListHeaderViewAccessibility *)self _accessibilityChildren];
  v6 = [_accessibilityChildren indexOfObject:elementCopy];

  return v6;
}

@end