@interface PDFRemoteViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PDFRemoteViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v39 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v37 = 0;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v9 = [v8 superview];
  [v8 frame];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [v9 subviews];
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v34 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v33 + 1) + 8 * v14);
      MEMORY[0x29C2E4220](@"PDFExtensionTopView");
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    if (!v9)
    {
      goto LABEL_14;
    }

    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 convertPoint:v8 fromView:{x, y}];
        v25 = v24;
        v27 = v26;
        [v9 convertRect:v8 fromView:{v17, v19, v21, v23}];
        v41.x = v25;
        v41.y = v27;
        if (CGRectContainsPoint(v42, v41))
        {
          break;
        }
      }

      v28 = [v9 superview];

      v9 = v28;
      if (!v28)
      {
        goto LABEL_14;
      }
    }

    v31 = [(PDFRemoteViewAccessibility *)self accessibilityElements];
    v29 = [v31 lastObject];
  }

  else
  {
LABEL_9:

LABEL_14:
    v32.receiver = self;
    v32.super_class = PDFRemoteViewAccessibility;
    v29 = [(PDFRemoteViewAccessibility *)&v32 _accessibilityHitTest:v7 withEvent:x, y];
  }

  return v29;
}

@end