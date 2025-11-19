@interface MTAWorldClockMapViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityElements;
- (void)_accessibilityAnnounceSolarRegionChange:(CGPoint)a3;
- (void)addCity:(id)a3;
- (void)removeCity:(id)a3;
@end

@implementation MTAWorldClockMapViewAccessibility

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  v4 = [(MTAWorldClockMapViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v4 || (v5 = accessibilityElements_wasRTL, v5 != [(MTAWorldClockMapViewAccessibility *)self _accessibilityIsRTL]))
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);

    [(MTAWorldClockMapViewAccessibility *)self _accessibilitySetRetainedValue:v6 forKey:*v3];
    v7 = [MEMORY[0x29EDBA0A8] predicateWithBlock:&__block_literal_global_0];
    v8 = [(MTAWorldClockMapViewAccessibility *)self safeValueForKey:@"subviews"];
    v9 = [v8 filteredArrayUsingPredicate:v7];

    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __58__MTAWorldClockMapViewAccessibility_accessibilityElements__block_invoke_2;
    v12[3] = &unk_29F2DAC08;
    v12[4] = self;
    v10 = [v9 sortedArrayUsingComparator:v12];
    [v6 addObjectsFromArray:v10];
    accessibilityElements_wasRTL = [(MTAWorldClockMapViewAccessibility *)self _accessibilityIsRTL];

    v4 = v6;
  }

  return v4;
}

uint64_t __58__MTAWorldClockMapViewAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E1AE0](@"MTAWorldClockMapCityView");
  v3 = [v2 isMemberOfClass:objc_opt_class()];

  return v3;
}

uint64_t __58__MTAWorldClockMapViewAccessibility_accessibilityElements__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 frame];
  v7 = v6;
  [v5 frame];
  v9 = v8;

  if ([*(a1 + 32) _accessibilityIsRTL] != v7 >= v9)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)addCity:(id)a3
{
  v4.receiver = self;
  v4.super_class = MTAWorldClockMapViewAccessibility;
  [(MTAWorldClockMapViewAccessibility *)&v4 addCity:a3];
  [(MTAWorldClockMapViewAccessibility *)self _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)removeCity:(id)a3
{
  v4.receiver = self;
  v4.super_class = MTAWorldClockMapViewAccessibility;
  [(MTAWorldClockMapViewAccessibility *)&v4 removeCity:a3];
  [(MTAWorldClockMapViewAccessibility *)self _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_accessibilityAnnounceSolarRegionChange:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(MTAWorldClockMapViewAccessibility *)self _accessibilityValueForKey:@"accessibilitySolarTerminatorPath"];
    if (!v6)
    {
      v7 = [MEMORY[0x29EDC7C40] mainScreen];
      [v7 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy__1;
      v24 = __Block_byref_object_dispose__1;
      v25 = 0;
      v19 = MEMORY[0x29EDCA5F8];
      AXPerformSafeBlock();
      v6 = v21[5];
      _Block_object_dispose(&v20, 8);

      [(MTAWorldClockMapViewAccessibility *)self _accessibilitySetRetainedValue:v6 forKey:@"accessibilitySolarTerminatorPath", v19, 3221225472, __77__MTAWorldClockMapViewAccessibility__accessibilityAnnounceSolarRegionChange___block_invoke, &unk_29F2DAC30, self, &v20, v9, v11, v13, v15];
    }

    v16 = [(MTAWorldClockMapViewAccessibility *)self _accessibilityValueForKey:@"accessibilitySolarRegion"];
    if ([v6 containsPoint:{x, y}])
    {
      v17 = @"world.map.solar.region.night";
    }

    else
    {
      v17 = @"world.map.solar.region.day";
    }

    v18 = accessibilityLocalizedString(v17);
    if (([v18 isEqualToString:v16] & 1) == 0)
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v18);
    }

    [(MTAWorldClockMapViewAccessibility *)self _accessibilitySetRetainedValue:v18 forKey:@"accessibilitySolarRegion"];
  }
}

void __77__MTAWorldClockMapViewAccessibility__accessibilityAnnounceSolarRegionChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [MEMORY[0x29EDB8DB0] date];
  v3 = [v2 terminatorPathForDayOfYear:accessibilityDayOfYear(v6) size:{*(a1 + 64), *(a1 + 72)}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v28 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = [(MTAWorldClockMapViewAccessibility *)self accessibilityElements];
  UIAccessibilityPointForPoint();
  v10 = v9;
  v12 = v11;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        [(MTAWorldClockMapViewAccessibility *)self convertPoint:v18 toView:x, y];
        if ([v18 pointInside:v7 withEvent:?])
        {
          [(MTAWorldClockMapViewAccessibility *)self _accessibilityRemoveValueForKey:@"accessibilitySolarRegion"];
          v19 = v18;

          goto LABEL_13;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  [(MTAWorldClockMapViewAccessibility *)self accessibilityFrame];
  v30.x = v10;
  v30.y = v12;
  if (CGRectContainsPoint(v31, v30))
  {
    [(MTAWorldClockMapViewAccessibility *)self _accessibilityAnnounceSolarRegionChange:x, y];
  }

  v22.receiver = self;
  v22.super_class = MTAWorldClockMapViewAccessibility;
  v19 = [(MTAWorldClockMapViewAccessibility *)&v22 _accessibilityHitTest:v7 withEvent:x, y];
LABEL_13:

  v20 = *MEMORY[0x29EDCA608];

  return v19;
}

@end