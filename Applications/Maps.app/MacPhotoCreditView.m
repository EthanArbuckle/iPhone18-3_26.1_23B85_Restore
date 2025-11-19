@interface MacPhotoCreditView
- (void)didMoveToWindow;
@end

@implementation MacPhotoCreditView

- (void)didMoveToWindow
{
  v14.receiver = self;
  v14.super_class = MacPhotoCreditView;
  [(MacPhotoCreditView *)&v14 didMoveToWindow];
  v3 = [(MacPhotoCreditView *)self window];
  [v3 setCanResizeToFitContent:1];

  [(MacPhotoCreditView *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v5 = v4;
  v7 = v6;
  v8 = [(MacPhotoCreditView *)self window];
  v9 = [v8 windowScene];
  v10 = [v9 sizeRestrictions];
  [v10 setMinimumSize:{v5, v7}];

  v11 = [(MacPhotoCreditView *)self window];
  v12 = [v11 windowScene];
  v13 = [v12 sizeRestrictions];
  [v13 setMaximumSize:{v5, v7}];
}

@end