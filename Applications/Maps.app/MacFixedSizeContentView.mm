@interface MacFixedSizeContentView
- (void)didMoveToWindow;
@end

@implementation MacFixedSizeContentView

- (void)didMoveToWindow
{
  v14.receiver = self;
  v14.super_class = MacFixedSizeContentView;
  [(MacFixedSizeContentView *)&v14 didMoveToWindow];
  window = [(MacFixedSizeContentView *)self window];
  [window setCanResizeToFitContent:1];

  [(MacFixedSizeContentView *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v5 = v4;
  v7 = v6;
  window2 = [(MacFixedSizeContentView *)self window];
  windowScene = [window2 windowScene];
  sizeRestrictions = [windowScene sizeRestrictions];
  [sizeRestrictions setMinimumSize:{v5, v7}];

  window3 = [(MacFixedSizeContentView *)self window];
  windowScene2 = [window3 windowScene];
  sizeRestrictions2 = [windowScene2 sizeRestrictions];
  [sizeRestrictions2 setMaximumSize:{v5, v7}];
}

@end