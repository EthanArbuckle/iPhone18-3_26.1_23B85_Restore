@interface CHLoadingView
- (CHLoadingView)initWithFrame:(CGRect)frame;
@end

@implementation CHLoadingView

- (CHLoadingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = CHLoadingView;
  v7 = [(CHLoadingView *)&v12 initWithFrame:?];
  if (v7)
  {
    v8 = [[UIActivityIndicatorView alloc] initWithFrame:{x, y, width, height}];
    indicatorView = v7->_indicatorView;
    v7->_indicatorView = v8;

    v10 = +[UIColor systemBackgroundColor];
    [(CHLoadingView *)v7 setBackgroundColor:v10];

    [(CHLoadingView *)v7 addSubview:v7->_indicatorView];
  }

  return v7;
}

@end