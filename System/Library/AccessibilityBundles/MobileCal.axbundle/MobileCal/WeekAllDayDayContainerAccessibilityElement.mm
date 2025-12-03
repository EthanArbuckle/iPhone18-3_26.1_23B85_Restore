@interface WeekAllDayDayContainerAccessibilityElement
- (CGRect)accessibilityFrame;
- (UIView)allDayView;
- (WeekAllDayDayContainerAccessibilityElement)initWithAccessibilityContainer:(id)container;
- (id)accessibilityLabel;
- (int64_t)accessibilityContainerType;
- (void)dealloc;
@end

@implementation WeekAllDayDayContainerAccessibilityElement

- (WeekAllDayDayContainerAccessibilityElement)initWithAccessibilityContainer:(id)container
{
  v7.receiver = self;
  v7.super_class = WeekAllDayDayContainerAccessibilityElement;
  v3 = [(WeekAllDayDayContainerAccessibilityElement *)&v7 initWithAccessibilityContainer:container];
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
  children = [(WeekAllDayDayContainerAccessibilityElement *)self children];
  v4 = [children countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(children);
        }

        [*(*(&v9 + 1) + 8 * v7++) setAccessibilityContainer:0];
      }

      while (v5 != v7);
      v5 = [children countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = WeekAllDayDayContainerAccessibilityElement;
  [(WeekAllDayDayContainerAccessibilityElement *)&v8 dealloc];
}

- (int64_t)accessibilityContainerType
{
  children = [(WeekAllDayDayContainerAccessibilityElement *)self children];
  if ([children count] == 1)
  {
    children2 = [(WeekAllDayDayContainerAccessibilityElement *)self children];
    firstObject = [children2 firstObject];
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
  date = [(WeekAllDayDayContainerAccessibilityElement *)self date];
  v3 = _AXGetStringsForDate(date);

  return v3;
}

- (CGRect)accessibilityFrame
{
  allDayView = [(WeekAllDayDayContainerAccessibilityElement *)self allDayView];
  [allDayView bounds];
  v4 = [allDayView safeValueForKey:@"_dayStarts"];
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