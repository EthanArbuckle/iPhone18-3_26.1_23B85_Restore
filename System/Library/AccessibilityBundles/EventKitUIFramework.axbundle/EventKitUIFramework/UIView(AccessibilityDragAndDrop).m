@interface UIView(AccessibilityDragAndDrop)
- (id)_accessibilityDragAndDropTargetViewForDrop:()AccessibilityDragAndDrop eventGestureController:;
@end

@implementation UIView(AccessibilityDragAndDrop)

- (id)_accessibilityDragAndDropTargetViewForDrop:()AccessibilityDragAndDrop eventGestureController:
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = [a1 superview];
  if (v5)
  {
    v6 = v5;
    v20 = a4;
    v7 = 0uLL;
    do
    {
      v23 = v7;
      v24 = v7;
      v21 = v7;
      v22 = v7;
      v8 = [v6 interactions];
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 delegate];
            }

            else
            {
              v14 = 0;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v6;
              if (v20)
              {
                v17 = v14;
                *v20 = v14;
              }

              goto LABEL_19;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v15 = [v6 superview];

      v6 = v15;
      v7 = 0uLL;
    }

    while (v15);
  }

  v16 = 0;
LABEL_19:

  v18 = *MEMORY[0x29EDCA608];

  return v16;
}

@end