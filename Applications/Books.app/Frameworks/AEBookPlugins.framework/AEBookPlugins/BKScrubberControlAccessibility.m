@interface BKScrubberControlAccessibility
- (BOOL)_accessibilityIsRTL;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (double)bkaxProgress;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)bkaxDelegate;
- (id)bkaxTarget;
- (id)bkaxThumb;
- (int64_t)bkaxPageNumber;
- (unint64_t)accessibilityTraits;
- (void)_axTurnPage:(BOOL)a3;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation BKScrubberControlAccessibility

- (id)bkaxTarget
{
  objc_opt_class();
  v2 = __IMAccessibilityCastAsClass();

  return v2;
}

- (id)bkaxDelegate
{
  objc_opt_class();
  v3 = [(BKScrubberControlAccessibility *)self bkaxTarget];
  v4 = [v3 bkAccessibilityDelegate];
  v5 = __IMAccessibilityCastAsClass();

  return v5;
}

- (int64_t)bkaxPageNumber
{
  v2 = [(BKScrubberControlAccessibility *)self bkaxTarget];
  v3 = [v2 pageNumber];

  return v3;
}

- (double)bkaxProgress
{
  v2 = [(BKScrubberControlAccessibility *)self bkaxTarget];
  [v2 progress];
  v4 = v3;

  return v4;
}

- (id)bkaxThumb
{
  v2 = [(BKScrubberControlAccessibility *)self bkaxTarget];
  v3 = [v2 thumb];

  return v3;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(BKScrubberControlAccessibility *)self bkaxTarget];
  v8 = [v7 track];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v21.origin.x = v10;
  v21.origin.y = v12;
  v21.size.width = v14;
  v21.size.height = v16;
  v20.x = x;
  v20.y = y;
  if (CGRectContainsPoint(v21, v20))
  {
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_axTurnPage:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKScrubberControlAccessibility *)self bkaxDelegate];
  if (v5)
  {
    v16 = v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = [v16 hasSpreadPages];
    }

    else
    {
      v6 = 0;
    }

    objc_opt_class();
    if ((v6 | objc_opt_isKindOfClass()))
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = [(BKScrubberControlAccessibility *)self bkaxTarget];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(BKScrubberControlAccessibility *)self bkaxTarget];
      v11 = [v10 pageCount];
    }

    else
    {
      v11 = 0;
    }

    v12 = [(BKScrubberControlAccessibility *)self bkaxPageNumber];
    if (v3)
    {
      v13 = v7;
    }

    else
    {
      v13 = -v7;
    }

    v14 = v12 + v13;
    if (v14 >= v11)
    {
      v14 = v11;
    }

    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    [(BKScrubberControlAccessibility *)self sendActionsForControlEvents:1];
    if (objc_opt_respondsToSelector())
    {
      [(BKScrubberControlAccessibility *)self setPageNumber:v15];
    }

    if (objc_opt_respondsToSelector())
    {
      [(BKScrubberControlAccessibility *)self setValue:(v15 - 1) / (v11 - 1)];
    }

    [(BKScrubberControlAccessibility *)self sendActionsForControlEvents:4096];
    [(BKScrubberControlAccessibility *)self sendActionsForControlEvents:64];
    v5 = v16;
  }
}

- (BOOL)_accessibilityIsRTL
{
  v2 = [(BKScrubberControlAccessibility *)self bkaxTarget];
  v3 = [v2 track];
  v4 = [v3 layoutDirection] == &dword_0 + 1;

  return v4;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(BKScrubberControlAccessibility *)self bkaxDelegate];
  v3 = v2 != 0;

  return v3;
}

- (void)accessibilityIncrement
{
  v3 = [(BKScrubberControlAccessibility *)self bkaxPageNumber];
  [(BKScrubberControlAccessibility *)self _axTurnPage:1];
  if (v3 != [(BKScrubberControlAccessibility *)self bkaxPageNumber])
  {
    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, kAXAnnouncementTypeScrollSound);
    v4 = UIAccessibilityLayoutChangedNotification;

    UIAccessibilityPostNotification(v4, 0);
  }
}

- (void)accessibilityDecrement
{
  v3 = [(BKScrubberControlAccessibility *)self bkaxPageNumber];
  [(BKScrubberControlAccessibility *)self _axTurnPage:0];
  if (v3 != [(BKScrubberControlAccessibility *)self bkaxPageNumber])
  {
    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, kAXAnnouncementTypeScrollSound);
    v4 = UIAccessibilityLayoutChangedNotification;

    UIAccessibilityPostNotification(v4, 0);
  }
}

- (CGRect)accessibilityFrame
{
  v3 = [(BKScrubberControlAccessibility *)self bkaxThumb];
  if (v3)
  {
    v25.receiver = self;
    v25.super_class = BKScrubberControlAccessibility;
    [(BKScrubberControlAccessibility *)&v25 accessibilityFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v3 accessibilityFrame];
    v29.origin.x = v12;
    v29.origin.y = v13;
    v29.size.width = v14;
    v29.size.height = v15;
    v26.origin.x = v5;
    v26.origin.y = v7;
    v26.size.width = v9;
    v26.size.height = v11;
    v27 = CGRectUnion(v26, v29);
  }

  else
  {
    v24.receiver = self;
    v24.super_class = BKScrubberControlAccessibility;
    [(BKScrubberControlAccessibility *)&v24 accessibilityFrame];
  }

  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(BKScrubberControlAccessibility *)self _axIsLoading];
  v3 = &UIAccessibilityTraitUpdatesFrequently;
  if (!v2)
  {
    v3 = &UIAccessibilityTraitAdjustable;
  }

  return *v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(BKScrubberControlAccessibility *)self bkaxThumb];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityActivationPoint];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = BKScrubberControlAccessibility;
    [(BKScrubberControlAccessibility *)&v11 accessibilityActivationPoint];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (id)accessibilityHint
{
  if ([(BKScrubberControlAccessibility *)self _axIsLoading])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(BKScrubberControlAccessibility *)self bkaxTarget];
    v5 = [v4 orientation];

    if (v5)
    {
      v6 = @"page.control.hint.vertical";
    }

    else
    {
      v6 = @"page.control.hint";
    }

    v3 = AEAXLocString(v6);
  }

  return v3;
}

- (id)accessibilityValue
{
  if ([(BKScrubberControlAccessibility *)self _axIsLoading]|| (v3 = [(BKScrubberControlAccessibility *)self bkaxPageNumber], v3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = 0;
  }

  else
  {
    v5 = v3;
    v6 = AEAXLocString(@"page.num %@");
    v7 = [NSNumberFormatter imaxLocalizedUnsignedInteger:v5];
    v4 = [NSString stringWithFormat:v6, v7];
  }

  return v4;
}

- (id)accessibilityLabel
{
  if ([(BKScrubberControlAccessibility *)self _axIsLoading])
  {
    v3 = AEAXLocString(@"book.load.progress %@");
    [(BKScrubberControlAccessibility *)self bkaxProgress];
    v4 = [NSNumberFormatter imaxLocalizedPercentage:0 maximumNumberOfDigitsAfterDecimalSeparator:?];
    v5 = [NSString stringWithFormat:v3, v4];
  }

  else
  {
    v5 = AEAXLocString(@"page.control.type");
  }

  return v5;
}

@end