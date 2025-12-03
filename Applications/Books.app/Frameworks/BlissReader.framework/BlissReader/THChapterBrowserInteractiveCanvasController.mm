@interface THChapterBrowserInteractiveCanvasController
- (BOOL)canHandleGesture:(id)gesture;
- (CGRect)visibleBoundsRect;
@end

@implementation THChapterBrowserInteractiveCanvasController

- (CGRect)visibleBoundsRect
{
  canvasView = [(THChapterBrowserInteractiveCanvasController *)self canvasView];

  [canvasView bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)canHandleGesture:(id)gesture
{
  objc_opt_class();
  result = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = TSWPImmediateSingleTap;
    if (v4 == [gesture gestureKind])
    {
      return 1;
    }
  }

  return result;
}

@end