@interface StockGraphViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)_accessibilityChildren;
- (id)_accessibilityChildrenWithmaxChildrenCount:(int)a3 frame:(CGRect)a4;
- (id)_accessibilityNanoChildren;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)a3;
- (void)clearData;
- (void)dealloc;
@end

@implementation StockGraphViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"StockGraphView"];
  [v3 validateClass:@"StockGraphView" hasInstanceVariable:@"_chartData" withType:"StockChartData"];
  [v3 validateClass:@"StockGraphView" hasInstanceMethod:@"clearData" withFullSignature:{"v", 0}];
}

- (CGRect)accessibilityFrame
{
  v8.receiver = self;
  v8.super_class = StockGraphViewAccessibility;
  [(StockGraphViewAccessibility *)&v8 accessibilityFrame];
  v5 = v4 + 20.0;
  v7 = v6 + -40.0;
  result.size.height = v3;
  result.size.width = v7;
  result.origin.y = v2;
  result.origin.x = v5;
  return result;
}

- (void)clearData
{
  v3.receiver = self;
  v3.super_class = StockGraphViewAccessibility;
  [(StockGraphViewAccessibility *)&v3 clearData];
  [(StockGraphViewAccessibility *)self _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
}

- (void)dealloc
{
  [(StockGraphViewAccessibility *)self _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  v3.receiver = self;
  v3.super_class = StockGraphViewAccessibility;
  [(StockGraphViewAccessibility *)&v3 dealloc];
}

- (int64_t)accessibilityElementCount
{
  v3 = [(StockGraphViewAccessibility *)self safeValueForKey:@"alpha"];
  [v3 floatValue];
  v5 = v4;

  if (v5 == 0.0)
  {
    return 0;
  }

  v7 = [(StockGraphViewAccessibility *)self _accessibilityChildren];
  v8 = [v7 count];

  return v8;
}

- (id)_accessibilityChildren
{
  [(StockGraphViewAccessibility *)self bounds];

  return [(StockGraphViewAccessibility *)self _accessibilityChildrenWithmaxChildrenCount:10 frame:?];
}

- (id)_accessibilityNanoChildren
{
  [(StockGraphViewAccessibility *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [(StockGraphViewAccessibility *)self superview];
  [v9 size];
  v11 = v10;

  return [(StockGraphViewAccessibility *)self _accessibilityChildrenWithmaxChildrenCount:5 frame:v4, v6, v8, v11];
}

- (id)_accessibilityChildrenWithmaxChildrenCount:(int)a3 frame:(CGRect)a4
{
  v6 = MEMORY[0x29EDC7620];
  v7 = [(StockGraphViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v7)
  {
    v8 = [(StockGraphViewAccessibility *)self safeValueForKey:@"_chartData"];
    if (v8)
    {
      v9 = v8;
      v7 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
      [(StockGraphViewAccessibility *)self _accessibilitySetRetainedValue:v7 forKey:*v6];
      v30 = [v9 stockValues];
      v10 = [v9 safeValueForKey:@"stockValueCount"];
      v11 = [v10 unsignedIntegerValue];

      v12 = [(StockGraphViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Stockchartview.isa)];
      v27 = v12;
      if (v12)
      {
        v13 = [v12 safeIntegerForKey:@"_selectedInterval"] == 0;
      }

      else
      {
        v13 = 1;
      }

      v29 = v13;
      v28 = v9;
      v31 = [v9 safeValueForKey:@"marketTimeZone"];
      if (v11 >= a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = v11;
      }

      if (v14 >= 1)
      {
        v15 = 0;
        v16 = (v11 - 1) / (v14 - 1);
        do
        {
          v17 = [objc_allocWithZone(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
          v18 = (v30 + 24 * v16 * v15);
          v19 = MEMORY[0x29EDB8DB0];
          v20 = *v18;
          v21 = v31;
          v22 = [v19 dateWithTimeIntervalSince1970:v20];
          v23 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
          [v23 setTimeZone:v21];

          if (v29)
          {
            [v23 setTimeStyle:1];
          }

          else
          {
            [v23 setDateStyle:3];
          }

          v24 = [v23 stringFromDate:v22];
          v25 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@, %.02f", v24, *(v18 + 1)];

          [v17 setAccessibilityLabel:v25];
          UIAccessibilityFrameForBounds();
          [v17 setAccessibilityFrame:?];
          if ([*MEMORY[0x29EDC8008] _accessibilityApplicationIsRTL])
          {
            [v7 insertObject:v17 atIndex:0];
          }

          else
          {
            [v7 addObject:v17];
          }

          ++v15;
        }

        while (v14 != v15);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v4 = a3;
  v5 = [(StockGraphViewAccessibility *)self _accessibilityChildren];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v4 = [(StockGraphViewAccessibility *)self _accessibilityChildren];
  if ([v4 count] >= a3)
  {
    v5 = [v4 objectAtIndex:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end