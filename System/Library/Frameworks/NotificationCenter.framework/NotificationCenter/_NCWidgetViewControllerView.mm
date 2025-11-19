@interface _NCWidgetViewControllerView
- (void)didMoveToWindow;
@end

@implementation _NCWidgetViewControllerView

- (void)didMoveToWindow
{
  v2.receiver = self;
  v2.super_class = _NCWidgetViewControllerView;
  [(_NCWidgetViewControllerView *)&v2 didMoveToWindow];
}

@end