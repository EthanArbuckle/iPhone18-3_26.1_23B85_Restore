@interface SyncFooterViewAccessibility
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)updateProgress:(id)progress dataSource:(id)source;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityElements;
@end

@implementation SyncFooterViewAccessibility

- (BOOL)updateProgress:(id)progress dataSource:(id)source
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __57__SyncFooterViewAccessibility_updateProgress_dataSource___block_invoke;
  v14[3] = &unk_29F29C9A0;
  v14[4] = self;
  sourceCopy = source;
  progressCopy = progress;
  v8 = MEMORY[0x29C2C7D90](v14);
  v9 = v8[2]();
  v13.receiver = self;
  v13.super_class = SyncFooterViewAccessibility;
  v10 = [(SyncFooterViewAccessibility *)&v13 updateProgress:progressCopy dataSource:sourceCopy];

  v11 = (v8[2])(v8);
  if (([v9 isEqualToSet:v11] & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  return v10;
}

id __57__SyncFooterViewAccessibility_updateProgress_dataSource___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [v3 subviews];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (([v10 isHidden] & 1) == 0)
          {
            if (!v7)
            {
              v7 = objc_opt_new();
            }

            [v7 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v11 = [MEMORY[0x29EDB8E50] setWithSet:v7];
      goto LABEL_19;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = 0;
LABEL_19:

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)accessibilityElements
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    subviews = [(SyncFooterViewAccessibility *)self subviews];
  }

  else
  {
    subviews = 0;
  }

  return subviews;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v7 = kIsHitTestingSyncFooterView;
  eventCopy = event;
  v9 = [(SyncFooterViewAccessibility *)self _accessibilityBoolValueForKey:v7];
  [(SyncFooterViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:kIsHitTestingSyncFooterView];
  v12.receiver = self;
  v12.super_class = SyncFooterViewAccessibility;
  v10 = [(SyncFooterViewAccessibility *)&v12 _accessibilityHitTest:eventCopy withEvent:x, y];

  [(SyncFooterViewAccessibility *)self _accessibilitySetBoolValue:v9 forKey:kIsHitTestingSyncFooterView];

  return v10;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v24 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  if ([(SyncFooterViewAccessibility *)self _accessibilityBoolValueForKey:kIsHitTestingSyncFooterView])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      [(SyncFooterViewAccessibility *)selfCopy subviews];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v22 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            [(SyncFooterViewAccessibility *)selfCopy convertPoint:v14 toView:x, y];
            if ([v14 pointInside:eventCopy withEvent:?])
            {

              v15 = 1;
              goto LABEL_13;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v18.receiver = self;
  v18.super_class = SyncFooterViewAccessibility;
  v15 = [(SyncFooterViewAccessibility *)&v18 pointInside:eventCopy withEvent:x, y];
LABEL_13:

  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

@end