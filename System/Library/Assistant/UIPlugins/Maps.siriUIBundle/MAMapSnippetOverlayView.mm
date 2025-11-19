@interface MAMapSnippetOverlayView
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (MAMapSnippetOverlayView)initWithFrame:(CGRect)a3;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
@end

@implementation MAMapSnippetOverlayView

- (MAMapSnippetOverlayView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MAMapSnippetOverlayView;
  v3 = [(MAMapSnippetOverlayView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(MAMapSnippetOverlayView *)v3 _mapkit_setBackgroundColor:v4];
  }

  return v3;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = [UIColor siriui_maskingHighlightColor:a3];
  [(MAMapSnippetOverlayView *)self setBackgroundColor:v5];

  return 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = [UIColor clearColor:a3];
  [(MAMapSnippetOverlayView *)self setBackgroundColor:v5];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4 = +[UIColor clearColor];
  [(MAMapSnippetOverlayView *)self setBackgroundColor:v4];
}

@end