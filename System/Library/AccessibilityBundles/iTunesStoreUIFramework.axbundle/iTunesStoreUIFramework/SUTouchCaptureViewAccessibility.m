@interface SUTouchCaptureViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SUTouchCaptureViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v31 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v29.receiver = self;
  v29.super_class = SUTouchCaptureViewAccessibility;
  v8 = [(SUTouchCaptureViewAccessibility *)&v29 _accessibilityHitTest:v7 withEvent:x, y];
  v9 = v8;
  if (v8)
  {
    v10 = v8 == self;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = [(SUTouchCaptureViewAccessibility *)self safeValueForKey:@"passThroughViews", 0];
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          [v16 convertPoint:self fromView:{x, y}];
          v17 = [v16 _accessibilityHitTest:v7 withEvent:?];

          if (v17)
          {

            v9 = v17;
            goto LABEL_20;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    if (!v9)
    {
      if (![(SUTouchCaptureViewAccessibility *)self pointInside:v7 withEvent:x, y])
      {
LABEL_28:
        v9 = 0;
        goto LABEL_21;
      }

      v11 = [MEMORY[0x29EDC7A58] currentDevice];
      if (objc_opt_respondsToSelector())
      {
        v18 = [MEMORY[0x29EDC7A58] currentDevice];
        v19 = [v18 userInterfaceIdiom];

        if (v19 == 1)
        {
          v9 = self;
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      v9 = 0;
LABEL_20:
    }
  }

LABEL_21:
  if (v9 != self)
  {
LABEL_23:
    v9 = v9;
    v22 = v9;
    goto LABEL_24;
  }

LABEL_22:
  v20 = [(SUTouchCaptureViewAccessibility *)self subviews];
  v21 = [v20 count];

  if (v21)
  {
    goto LABEL_23;
  }

  v22 = 0;
LABEL_24:

  v23 = *MEMORY[0x29EDCA608];

  return v22;
}

@end