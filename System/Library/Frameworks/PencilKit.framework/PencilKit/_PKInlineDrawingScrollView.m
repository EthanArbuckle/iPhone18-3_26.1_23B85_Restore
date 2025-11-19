@interface _PKInlineDrawingScrollView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (id)_parentScrollView;
- (void)setContentOffset:(CGPoint)a3;
@end

@implementation _PKInlineDrawingScrollView

- (id)_parentScrollView
{
  v2 = [(_PKInlineDrawingScrollView *)self superview];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_PKInlineDrawingScrollView *)self panGestureRecognizer];
  v9 = [(_PKInlineDrawingScrollView *)self _parentScrollView];
  v10 = [v9 panGestureRecognizer];

  v12 = v8 == v7 && v10 == v6;
  return v12;
}

- (void)setContentOffset:(CGPoint)a3
{
  v3.receiver = self;
  v3.super_class = _PKInlineDrawingScrollView;
  [(_PKInlineDrawingScrollView *)&v3 setContentOffset:a3.x, 0.0];
}

@end