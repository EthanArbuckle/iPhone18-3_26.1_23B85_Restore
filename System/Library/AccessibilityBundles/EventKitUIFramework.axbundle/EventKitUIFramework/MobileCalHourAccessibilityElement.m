@interface MobileCalHourAccessibilityElement
- (BOOL)isAccessibilityElement;
- (CGRect)_frameInDayGridView;
- (CGRect)accessibilityFrame;
- (CGRect)accessibilityFrameForScrolling;
- (UIView)dayGridView;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation MobileCalHourAccessibilityElement

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8D98] currentCalendar];
  v4 = [MEMORY[0x29EDB8DB0] date];
  v5 = [v3 components:62 fromDate:v4];

  v6 = [(MobileCalHourAccessibilityElement *)self hourDate];
  v7 = [v6 _accessibilityTimeString];

  v8 = [(MobileCalHourAccessibilityElement *)self hourDate];

  if (!v8)
  {
    v18 = self;
    _AXAssert();
  }

  v9 = [(MobileCalHourAccessibilityElement *)self hourDate];

  if (v9)
  {
    v10 = [(MobileCalHourAccessibilityElement *)self hourDate];
    v11 = [v3 components:62 fromDate:v10];

    v12 = [v11 year];
    if (v12 == [v5 year])
    {
      v13 = [v11 month];
      if (v13 == [v5 month])
      {
        v14 = [v11 day];
        if (v14 == [v5 day])
        {
          v15 = [v11 hour];
          if (v15 == [v5 hour])
          {
            v19 = accessibilityLocalizedString(@"in.progress");
            v16 = __UIAXStringForVariables();

            v7 = v16;
          }
        }
      }
    }
  }

  return v7;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(MobileCalHourAccessibilityElement *)self hourDate];
  v3 = [MEMORY[0x29EDB8D98] currentCalendar];
  v4 = [v3 components:62 fromDate:v2];

  if ([v4 hour] == 12 && !MEMORY[0x29C2D5120]())
  {
    v5 = accessibilityLocalizedString(@"noon");
  }

  else
  {
    v5 = MEMORY[0x29C2D5130]([v4 hour]);
  }

  v6 = v5;
  v7 = MEMORY[0x29C2D5180]();

  return v7;
}

- (CGRect)_frameInDayGridView
{
  v3 = [(MobileCalHourAccessibilityElement *)self accessibilityContainer];
  [v3 accessibilityFrame];

  v4 = [(MobileCalHourAccessibilityElement *)self dayGridView];
  UIAccessibilityFrameToBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(MobileCalHourAccessibilityElement *)self hourDate];
  v14 = [(MobileCalHourAccessibilityElement *)self hourDate];

  if (!v14)
  {
    v27 = self;
    _AXAssert();
  }

  v15 = [(MobileCalHourAccessibilityElement *)self hourDate];

  if (v15)
  {
    v16 = [MEMORY[0x29EDB8D98] currentCalendar];
    v17 = [v16 components:62 fromDate:v13];

    v18 = [v4 safeValueForKey:@"topPadding"];
    [v18 doubleValue];
    v20 = v19;

    v21 = [v4 safeValueForKey:@"hourHeight"];
    [v21 doubleValue];
    v12 = v22;

    v8 = v8 + v20 + v12 * [v17 hour];
  }

  v23 = v6;
  v24 = v8;
  v25 = v10;
  v26 = v12;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)accessibilityFrame
{
  v3 = [(MobileCalHourAccessibilityElement *)self dayGridView];
  [(MobileCalHourAccessibilityElement *)self _frameInDayGridView];
  UIAccessibilityFrameForBounds();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)isAccessibilityElement
{
  v8.receiver = self;
  v8.super_class = MobileCalHourAccessibilityElement;
  v3 = [(MobileCalHourAccessibilityElement *)&v8 isAccessibilityElement];
  objc_opt_class();
  v4 = [(MobileCalHourAccessibilityElement *)self dayGridView];
  v5 = __UIAccessibilityCastAsSafeCategory();

  if (v3)
  {
    if ([v5 accessibilityIsPreviewGridView])
    {
      [(MobileCalHourAccessibilityElement *)self accessibilityFrameForScrolling];
      v6 = !CGRectIsNull(v9);
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (CGRect)accessibilityFrameForScrolling
{
  v33.receiver = self;
  v33.super_class = MobileCalHourAccessibilityElement;
  [(MobileCalHourAccessibilityElement *)&v33 accessibilityFrameForScrolling];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v32 = 0;
  objc_opt_class();
  v11 = [(MobileCalHourAccessibilityElement *)self dayGridView];
  v12 = __UIAccessibilityCastAsSafeCategory();

  if ([v12 accessibilityIsPreviewGridView])
  {
    v13 = [(MobileCalHourAccessibilityElement *)self dayGridView];
    v14 = [v13 _accessibilityViewAncestorIsKindOf:objc_opt_class()];

    v31.receiver = self;
    v31.super_class = MobileCalHourAccessibilityElement;
    [(MobileCalHourAccessibilityElement *)&v31 accessibilityFrameForScrolling];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [v14 accessibilityFrame];
    v37.origin.x = v23;
    v37.origin.y = v24;
    v37.size.width = v25;
    v37.size.height = v26;
    v34.origin.x = v16;
    v34.origin.y = v18;
    v34.size.width = v20;
    v34.size.height = v22;
    v35 = CGRectIntersection(v34, v37);
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
  }

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (id)accessibilityDropPointDescriptors
{
  v2 = self;
  v3 = [(MobileCalHourAccessibilityElement *)self dayGridView];
  v28 = 0;
  v4 = [v3 _accessibilityDragAndDropTargetViewForDrop:1 eventGestureController:&v28];
  v5 = v28;

  if (v4)
  {
    v6 = [(MobileCalHourAccessibilityElement *)v2 dayGridView];
    [(MobileCalHourAccessibilityElement *)v2 _frameInDayGridView];
    [v6 convertRect:v4 toView:?];

    v7 = *MEMORY[0x29EDB9820];
    v26 = 0x3CuLL / *MEMORY[0x29EDB9820];
    v8 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:?];
    if (v7 <= 0x3C)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        v11 = [(MobileCalHourAccessibilityElement *)v2 hourDate];
        v12 = [v11 dateByAddingTimeInterval:v10 * v9 * 60.0];

        [v5 touchOffset];
        CalRoundPointToScreenScale();
        v14 = v13;
        v16 = v15;
        v17 = objc_alloc(MEMORY[0x29EDC7900]);
        v18 = v2;
        v19 = v5;
        v20 = MEMORY[0x29EDBA0F8];
        v21 = accessibilityLocalizedString(@"drop.event.time");
        v22 = [v12 _accessibilityTimeString];
        v23 = [v20 stringWithFormat:v21, v22];
        v24 = [v17 initWithName:v23 point:v4 inView:{v14, v16}];

        v5 = v19;
        v2 = v18;

        [v8 addObject:v24];
        ++v9;
      }

      while (v9 < v26);
    }
  }

  else
  {
    v27.receiver = v2;
    v27.super_class = MobileCalHourAccessibilityElement;
    v8 = [(MobileCalHourAccessibilityElement *)&v27 accessibilityDropPointDescriptors];
  }

  return v8;
}

- (UIView)dayGridView
{
  WeakRetained = objc_loadWeakRetained(&self->_dayGridView);

  return WeakRetained;
}

@end