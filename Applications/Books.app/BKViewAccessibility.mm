@interface BKViewAccessibility
- (BOOL)_accessibilityServesAsContainingParentForOrdering;
- (CGRect)accessibilityFrame;
@end

@implementation BKViewAccessibility

- (BOOL)_accessibilityServesAsContainingParentForOrdering
{
  v3 = [(BKViewAccessibility *)self imaxIdentification];
  if ([v3 isEqualToString:@"ContainerParent"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TableSwitchSegment") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SwitcherToolbar") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SwitchContentView"))
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = BKViewAccessibility;
    v4 = [(BKViewAccessibility *)&v6 _accessibilityServesAsContainingParentForOrdering];
  }

  return v4;
}

- (CGRect)accessibilityFrame
{
  v33.receiver = self;
  v33.super_class = BKViewAccessibility;
  [(BKViewAccessibility *)&v33 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BKViewAccessibility *)self imaxIdentification];
  if (([v11 isEqualToString:@"BookTopLabel"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"TableSwitchSegment"))
  {
    v12 = [(BKViewAccessibility *)self imaxValueForKey:@"bounds"];
    [v12 rectValue];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [(BKViewAccessibility *)self imaxValueForKey:@"window"];
    v22 = [v21 windowScene];
    v23 = [v22 interfaceOrientation];

    if ((v23 - 1) > 1 || (v24 = -20.0, (isPad() & 1) == 0))
    {
      v24 = -10.0;
    }

    v34.origin.x = v14;
    v34.origin.y = v16;
    v34.size.width = v18;
    v34.size.height = v20;
    v35 = CGRectInset(v34, 0.0, v24);
    [(BKViewAccessibility *)self imaxFrameFromBounds:v35.origin.x, v35.origin.y, v35.size.width, v35.size.height];
    v4 = v25;
    v6 = v26;
    v8 = v27;
    v10 = v28;
  }

  v29 = v4;
  v30 = v6;
  v31 = v8;
  v32 = v10;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

@end