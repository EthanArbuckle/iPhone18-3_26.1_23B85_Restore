@interface SingleToolbarItemContainerView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setBoundsWithToolbar:(id)toolbar;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation SingleToolbarItemContainerView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v20.receiver = self;
  v20.super_class = SingleToolbarItemContainerView;
  v8 = [(SingleToolbarItemContainerView *)&v20 hitTest:eventCopy withEvent:x, y];
  if (!v8)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    subviews = [(SingleToolbarItemContainerView *)self subviews];
    v10 = [subviews countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(subviews);
          }

          v14 = [*(*(&v16 + 1) + 8 * i) hitTest:eventCopy withEvent:{x, y}];
          if (v14)
          {
            v8 = v14;
            goto LABEL_12;
          }
        }

        v11 = [subviews countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_12:
  }

  return v8;
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SingleToolbarItemContainerView *)self setBoundsWithToolbar:superviewCopy];
  }
}

- (void)setBoundsWithToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  [toolbarCopy bounds];
  v6 = v5;
  v8 = v7;
  [toolbarCopy _contentMargin];
  v10 = v9;

  v16 = EKUIMainWindowForMultiwindowError();
  if ([v16 ekui_horizontalSizeClass] == 1 && objc_msgSend(v16, "ekui_horizontalSizeClass") == 2)
  {
    v10 = v10 + -1.5;
  }

  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = v6 - (v10 + v10);
  v14 = v8 + -6.0;
  [(SingleToolbarItemContainerView *)self bounds];
  v19.origin.x = v11;
  v19.origin.y = v12;
  v19.size.width = v13;
  v19.size.height = v14;
  if (!CGRectEqualToRect(v18, v19))
  {
    [(SingleToolbarItemContainerView *)self setBounds:v11, v12, v13, v14];
    superview = [(SingleToolbarItemContainerView *)self superview];
    [superview setNeedsLayout];
  }
}

@end