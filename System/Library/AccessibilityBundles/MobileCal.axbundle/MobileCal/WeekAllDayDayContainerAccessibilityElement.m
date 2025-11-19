@interface WeekAllDayDayContainerAccessibilityElement
- (CGRect)accessibilityFrame;
- (UIView)allDayView;
- (WeekAllDayDayContainerAccessibilityElement)initWithAccessibilityContainer:(id)a3;
- (id)accessibilityLabel;
- (int64_t)accessibilityContainerType;
- (void)dealloc;
@end

@implementation WeekAllDayDayContainerAccessibilityElement

- (WeekAllDayDayContainerAccessibilityElement)initWithAccessibilityContainer:(id)a3
{
  v7.receiver = self;
  v7.super_class = WeekAllDayDayContainerAccessibilityElement;
  v3 = [(WeekAllDayDayContainerAccessibilityElement *)&v7 initWithAccessibilityContainer:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    children = v3->_children;
    v3->_children = v4;
  }

  return v3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(WeekAllDayDayContainerAccessibilityElement *)self children];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setAccessibilityContainer:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = WeekAllDayDayContainerAccessibilityElement;
  [(WeekAllDayDayContainerAccessibilityElement *)&v8 dealloc];
}

- (int64_t)accessibilityContainerType
{
  v3 = [(WeekAllDayDayContainerAccessibilityElement *)self children];
  if ([v3 count] == 1)
  {
    v4 = [(WeekAllDayDayContainerAccessibilityElement *)self children];
    v5 = [v4 firstObject];
    NSClassFromString(&cfstr_Weekalldaylabe.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      return 0;
    }

    else
    {
      return 4;
    }
  }

  else
  {

    return 4;
  }
}

- (id)accessibilityLabel
{
  v2 = [(WeekAllDayDayContainerAccessibilityElement *)self date];
  v3 = _AXGetStringsForDate(v2);

  return v3;
}

- (CGRect)accessibilityFrame
{
  v3 = [(WeekAllDayDayContainerAccessibilityElement *)self allDayView];
  [v3 bounds];
  v4 = [v3 safeValueForKey:@"_dayStarts"];
  [v4 count];

  [(WeekAllDayDayContainerAccessibilityElement *)self dayIndex];
  UIAccessibilityFrameForBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (UIView)allDayView
{
  WeakRetained = objc_loadWeakRetained(&self->_allDayView);

  return WeakRetained;
}

@end