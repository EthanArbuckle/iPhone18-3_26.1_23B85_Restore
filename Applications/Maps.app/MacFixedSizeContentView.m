@interface MacFixedSizeContentView
- (void)didMoveToWindow;
@end

@implementation MacFixedSizeContentView

- (void)didMoveToWindow
{
  v14.receiver = self;
  v14.super_class = MacFixedSizeContentView;
  [(MacFixedSizeContentView *)&v14 didMoveToWindow];
  v3 = [(MacFixedSizeContentView *)self window];
  [v3 setCanResizeToFitContent:1];

  [(MacFixedSizeContentView *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v5 = v4;
  v7 = v6;
  v8 = [(MacFixedSizeContentView *)self window];
  v9 = [v8 windowScene];
  v10 = [v9 sizeRestrictions];
  [v10 setMinimumSize:{v5, v7}];

  v11 = [(MacFixedSizeContentView *)self window];
  v12 = [v11 windowScene];
  v13 = [v12 sizeRestrictions];
  [v13 setMaximumSize:{v5, v7}];
}

@end