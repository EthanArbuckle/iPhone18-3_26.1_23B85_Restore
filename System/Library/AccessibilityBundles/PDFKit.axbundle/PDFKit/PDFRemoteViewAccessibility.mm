@interface PDFRemoteViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PDFRemoteViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v39 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  v37 = 0;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  superview = [v8 superview];
  [v8 frame];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  subviews = [superview subviews];
  v11 = [subviews countByEnumeratingWithState:&v33 objects:v38 count:16];
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
        objc_enumerationMutation(subviews);
      }

      v15 = *(*(&v33 + 1) + 8 * v14);
      MEMORY[0x29C2E4220](@"PDFExtensionTopView");
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [subviews countByEnumeratingWithState:&v33 objects:v38 count:16];
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

    if (!superview)
    {
      goto LABEL_14;
    }

    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [superview convertPoint:v8 fromView:{x, y}];
        v25 = v24;
        v27 = v26;
        [superview convertRect:v8 fromView:{v17, v19, v21, v23}];
        v41.x = v25;
        v41.y = v27;
        if (CGRectContainsPoint(v42, v41))
        {
          break;
        }
      }

      v9Superview = [superview superview];

      superview = v9Superview;
      if (!v9Superview)
      {
        goto LABEL_14;
      }
    }

    accessibilityElements = [(PDFRemoteViewAccessibility *)self accessibilityElements];
    lastObject = [accessibilityElements lastObject];
  }

  else
  {
LABEL_9:

LABEL_14:
    v32.receiver = self;
    v32.super_class = PDFRemoteViewAccessibility;
    lastObject = [(PDFRemoteViewAccessibility *)&v32 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  return lastObject;
}

@end