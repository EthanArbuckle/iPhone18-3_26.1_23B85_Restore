@interface THChapterBrowserInteractiveCanvasController
- (BOOL)canHandleGesture:(id)a3;
- (CGRect)visibleBoundsRect;
@end

@implementation THChapterBrowserInteractiveCanvasController

- (CGRect)visibleBoundsRect
{
  v2 = [(THChapterBrowserInteractiveCanvasController *)self canvasView];

  [v2 bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)canHandleGesture:(id)a3
{
  objc_opt_class();
  result = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = TSWPImmediateSingleTap;
    if (v4 == [a3 gestureKind])
    {
      return 1;
    }
  }

  return result;
}

@end