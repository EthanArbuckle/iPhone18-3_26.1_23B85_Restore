@interface GuidanceLaneViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateLanePaths;
@end

@implementation GuidanceLaneViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GuidanceLaneView" hasInstanceMethod:@"_updateLanePaths" withFullSignature:{"v", 0}];
  [v3 validateClass:@"GEOComposedRouteLaneInfo"];
  [v3 validateClass:@"GuidanceLaneView" hasInstanceVariable:@"_laneInfo" withType:"GEOComposedRouteLaneInfo"];
  [v3 validateClass:@"GEOComposedRouteLaneInfo" hasInstanceMethod:@"hasDirections" withFullSignature:{"B", 0}];
  [v3 validateClass:@"GEOComposedRouteLaneInfo" hasInstanceMethod:@"isPreferredLaneForManeuver" withFullSignature:{"B", 0}];
  [v3 validateClass:@"GEOComposedRouteLaneInfo" hasInstanceMethod:@"directions" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GEOComposedRouteLaneInfo"];
  [v3 validateClass:@"GEOComposedRouteLaneDirectionInfo" hasInstanceMethod:@"direction" withFullSignature:{"i", 0}];
}

- (void)_updateLanePaths
{
  v3.receiver = self;
  v3.super_class = GuidanceLaneViewAccessibility;
  [(GuidanceLaneViewAccessibility *)&v3 _updateLanePaths];
  [(GuidanceLaneViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = GuidanceLaneViewAccessibility;
  [(GuidanceLaneViewAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v3 = [(GuidanceLaneViewAccessibility *)self safeValueForKey:@"_laneInfo"];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDBA050]);
    if ([v3 safeBoolForKey:@"hasDirections"])
    {
      v5 = [v3 safeValueForKey:@"directions"];
      if ([v5 count])
      {
        for (i = 0; i < [v5 count]; ++i)
        {
          v7 = [v5 objectAtIndexedSubscript:i];
          v8 = [v7 direction];
          if (v8 > 15)
          {
            if (v8 <= 63)
            {
              if (v8 == 16)
              {
                v9 = @"U_TURN_LEFT";
                goto LABEL_28;
              }

              if (v8 == 32)
              {
                v9 = @"SHARP_LEFT";
                goto LABEL_28;
              }
            }

            else
            {
              switch(v8)
              {
                case 0x40:
                  v9 = @"LEFT";
                  goto LABEL_28;
                case 0x80:
                  v9 = @"SLIGHT_LEFT";
                  goto LABEL_28;
                case 0x100:
                  v9 = @"U_TURN_RIGHT";
                  goto LABEL_28;
              }
            }
          }

          else if (v8 <= 1)
          {
            v9 = @"NO_DIRECTIONS_INDICATED";
            if (!v8)
            {
              goto LABEL_28;
            }

            if (v8 == 1)
            {
              v9 = @"STRAIGHT";
              goto LABEL_28;
            }
          }

          else
          {
            switch(v8)
            {
              case 2:
                v9 = @"SLIGHT_RIGHT";
                goto LABEL_28;
              case 4:
                v9 = @"RIGHT";
                goto LABEL_28;
              case 8:
                v9 = @"SHARP_RIGHT";
                goto LABEL_28;
            }
          }

          v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", v8];
LABEL_28:
          [v4 appendString:v9];

          if ([v3 safeBoolForKey:@"isPreferredLaneForManeuver"] && !i)
          {
            [v4 appendString:{@", preferred"}];
          }

          [v4 appendString:@"; "];
        }
      }
    }

    [(GuidanceLaneViewAccessibility *)self setAccessibilityLabel:v4];
  }
}

@end