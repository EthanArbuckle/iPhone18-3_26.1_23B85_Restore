@interface MacPhotoCreditView
- (void)didMoveToWindow;
@end

@implementation MacPhotoCreditView

- (void)didMoveToWindow
{
  v14.receiver = self;
  v14.super_class = MacPhotoCreditView;
  [(MacPhotoCreditView *)&v14 didMoveToWindow];
  window = [(MacPhotoCreditView *)self window];
  [window setCanResizeToFitContent:1];

  [(MacPhotoCreditView *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v5 = v4;
  v7 = v6;
  window2 = [(MacPhotoCreditView *)self window];
  windowScene = [window2 windowScene];
  sizeRestrictions = [windowScene sizeRestrictions];
  [sizeRestrictions setMinimumSize:{v5, v7}];

  window3 = [(MacPhotoCreditView *)self window];
  windowScene2 = [window3 windowScene];
  sizeRestrictions2 = [windowScene2 sizeRestrictions];
  [sizeRestrictions2 setMaximumSize:{v5, v7}];
}

@end