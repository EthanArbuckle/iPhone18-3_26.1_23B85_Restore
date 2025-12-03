@interface MobileCalDayContainerAccessibilityElement
- (CGRect)accessibilityFrame;
- (UIView)dayGrid;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
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
  children = [(MobileCalDayContainerAccessibilityElement *)self children];
  v4 = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(children);
        }

        [*(*(&v10 + 1) + 8 * v7++) setAccessibilityContainer:0];
      }

      while (v5 != v7);
      v5 = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  dayGrid = [(MobileCalDayContainerAccessibilityElement *)self dayGrid];
  v4 = __UIAccessibilityCastAsSafeCategory();

  LODWORD(dayGrid) = [v4 accessibilityIsPreviewGridView];
  if (dayGrid)
  {
    v5 = accessibilityLocalizedString(@"event.preview.area");
  }

  else
  {
    date = [(MobileCalDayContainerAccessibilityElement *)self date];
    v5 = _AXGetYearlessStringForDay();
  }

  return v5;
}

- (CGRect)accessibilityFrame
{
  dayGrid = [(MobileCalDayContainerAccessibilityElement *)self dayGrid];
  [dayGrid bounds];
  superview = [dayGrid superview];
  v5 = [superview safeValueForKey:@"_dayStarts"];
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

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v32 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  _accessibilityParentView = [(MobileCalDayContainerAccessibilityElement *)self _accessibilityParentView];
  UIAccessibilityPointForPoint();
  v10 = v9;
  v12 = v11;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  children = [(MobileCalDayContainerAccessibilityElement *)self children];
  v14 = [children countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(children);
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
            _accessibilitySupplementaryHeaderViews = [v19 _accessibilitySupplementaryHeaderViews];
            v21 = [(MobileCalDayContainerAccessibilityElement *)self _accessibilityHitTestSupplementaryViews:_accessibilitySupplementaryHeaderViews point:eventCopy withEvent:x, y];

            if (v21)
            {
              v16 = v21;
            }

            else
            {
              _accessibilitySupplementaryFooterViews = [v19 _accessibilitySupplementaryFooterViews];
              v16 = [(MobileCalDayContainerAccessibilityElement *)self _accessibilityHitTestSupplementaryViews:_accessibilitySupplementaryFooterViews point:eventCopy withEvent:x, y];

              if (!v16)
              {
                v16 = v19;
              }
            }
          }

          else
          {
            v22 = [v19 _accessibilityHitTest:eventCopy withEvent:{x, y}];

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
      v24 = [children countByEnumeratingWithState:&v27 objects:v31 count:16];
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