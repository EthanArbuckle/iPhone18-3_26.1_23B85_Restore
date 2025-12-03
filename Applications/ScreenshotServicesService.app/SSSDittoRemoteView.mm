@interface SSSDittoRemoteView
- (SSSDittoRemoteView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation SSSDittoRemoteView

- (SSSDittoRemoteView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SSSDittoRemoteView;
  v3 = [(SSSDittoRemoteView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (_SSIsScreenshotManagerDebuggingEnabled())
  {
    v4 = objc_alloc_init(SSSDebugScreenshotMangerView);
    debugScreenshotManagerView = v3->_debugScreenshotManagerView;
    v3->_debugScreenshotManagerView = v4;

    [(SSSDittoRemoteView *)v3 addSubview:v3->_debugScreenshotManagerView];
  }

  return v3;
}

- (void)layoutSubviews
{
  if (_SSIsScreenshotManagerDebuggingEnabled())
  {
    [(SSSDebugScreenshotMangerView *)self->_debugScreenshotManagerView intrinsicContentSize];
    v4 = v3;
    v6 = v5;
    [(SSSDittoRemoteView *)self bounds];
    debugScreenshotManagerView = self->_debugScreenshotManagerView;

    [(SSSDebugScreenshotMangerView *)debugScreenshotManagerView setFrame:v7 - v4 + 10.0, 10.0, v4, v6];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(SSSDittoRemoteView *)self acceptsTouches])
  {
    v10.receiver = self;
    v10.super_class = SSSDittoRemoteView;
    v8 = [(SSSDittoRemoteView *)&v10 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end