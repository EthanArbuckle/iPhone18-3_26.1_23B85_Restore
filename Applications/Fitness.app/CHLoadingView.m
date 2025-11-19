@interface CHLoadingView
- (CHLoadingView)initWithFrame:(CGRect)a3;
@end

@implementation CHLoadingView

- (CHLoadingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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