@interface _PKInlineDrawingScrollView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (id)_parentScrollView;
- (void)setContentOffset:(CGPoint)offset;
@end

@implementation _PKInlineDrawingScrollView

- (id)_parentScrollView
{
  superview = [(_PKInlineDrawingScrollView *)self superview];
  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
    }

    while (v2Superview);
  }

  return superview;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  panGestureRecognizer = [(_PKInlineDrawingScrollView *)self panGestureRecognizer];
  _parentScrollView = [(_PKInlineDrawingScrollView *)self _parentScrollView];
  panGestureRecognizer2 = [_parentScrollView panGestureRecognizer];

  v12 = panGestureRecognizer == recognizerCopy && panGestureRecognizer2 == gestureRecognizerCopy;
  return v12;
}

- (void)setContentOffset:(CGPoint)offset
{
  v3.receiver = self;
  v3.super_class = _PKInlineDrawingScrollView;
  [(_PKInlineDrawingScrollView *)&v3 setContentOffset:offset.x, 0.0];
}

@end