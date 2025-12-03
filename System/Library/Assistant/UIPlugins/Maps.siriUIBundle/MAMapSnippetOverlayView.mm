@interface MAMapSnippetOverlayView
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (MAMapSnippetOverlayView)initWithFrame:(CGRect)frame;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
@end

@implementation MAMapSnippetOverlayView

- (MAMapSnippetOverlayView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MAMapSnippetOverlayView;
  v3 = [(MAMapSnippetOverlayView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(MAMapSnippetOverlayView *)v3 _mapkit_setBackgroundColor:v4];
  }

  return v3;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  v5 = [UIColor siriui_maskingHighlightColor:touch];
  [(MAMapSnippetOverlayView *)self setBackgroundColor:v5];

  return 1;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v5 = [UIColor clearColor:touch];
  [(MAMapSnippetOverlayView *)self setBackgroundColor:v5];
}

- (void)cancelTrackingWithEvent:(id)event
{
  v4 = +[UIColor clearColor];
  [(MAMapSnippetOverlayView *)self setBackgroundColor:v4];
}

@end