@interface MobileCalDayContainerAccessibilityElement
- (CGRect)accessibilityFrame;
- (UIView)dayGrid;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityLabel;
- (void)dealloc;
@end

@implementation MobileCalDayContainerAccessibilityElement

- (void)dealloc
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(MobileCalDayContainerAccessibilityElement *)self children];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) setAccessibilityContainer:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = MobileCalDayContainerAccessibilityElement;
  [(MobileCalDayContainerAccessibilityElement *)&v9 dealloc];
  v8 = *MEMORY[0x29EDCA608];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MobileCalDayContainerAccessibilityElement *)self dayGrid];
  v4 = __UIAccessibilityCastAsSafeCategory();

  LODWORD(v3) = [v4 accessibilityIsPreviewGridView];
  if (v3)
  {
    v5 = accessibilityLocalizedString(@"event.preview.area");
  }

  else
  {
    v6 = [(MobileCalDayContainerAccessibilityElement *)self date];
    v5 = _AXGetYearlessStringForDay();
  }

  return v5;
}

- (CGRect)accessibilityFrame
{
  v3 = [(MobileCalDayContainerAccessibilityElement *)self dayGrid];
  [v3 bounds];
  v4 = [v3 superview];
  v5 = [v4 safeValueForKey:@"_dayStarts"];
  [v5 count];

  [(MobileCalDayContainerAccessibilityElement *)self indexInArray];
  UIAccessibilityFrameForBounds();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v32 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = [(MobileCalDayContainerAccessibilityElement *)self _accessibilityParentView];
  UIAccessibilityPointForPoint();
  v10 = v9;
  v12 = v11;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [(MobileCalDayContainerAccessibilityElement *)self children];
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v28;
    do
    {
      v18 = 0;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v27 + 1) + 8 * v18);
        [v19 accessibilityFrame];
        v34.x = v10;
        v34.y = v12;
        if (CGRectContainsPoint(v35, v34))
        {
          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_22;
            }
          }

          if ([v19 isAccessibilityElement])
          {
            v20 = [v19 _accessibilitySupplementaryHeaderViews];
            v21 = [(MobileCalDayContainerAccessibilityElement *)self _accessibilityHitTestSupplementaryViews:v20 point:v7 withEvent:x, y];

            if (v21)
            {
              v16 = v21;
            }

            else
            {
              v23 = [v19 _accessibilitySupplementaryFooterViews];
              v16 = [(MobileCalDayContainerAccessibilityElement *)self _accessibilityHitTestSupplementaryViews:v23 point:v7 withEvent:x, y];

              if (!v16)
              {
                v16 = v19;
              }
            }
          }

          else
          {
            v22 = [v19 _accessibilityHitTest:v7 withEvent:{x, y}];

            v16 = v22;
          }
        }

        else if (v16)
        {
          goto LABEL_22;
        }

        ++v18;
      }

      while (v15 != v18);
      v24 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v15 = v24;
    }

    while (v24);
  }

  else
  {
    v16 = 0;
  }

LABEL_22:

  v25 = *MEMORY[0x29EDCA608];

  return v16;
}

- (UIView)dayGrid
{
  WeakRetained = objc_loadWeakRetained(&self->_dayGrid);

  return WeakRetained;
}

@end