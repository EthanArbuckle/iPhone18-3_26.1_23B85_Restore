@interface VOTUIMapsExplorationLocationView
- (VOTUIMapsExplorationLocationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation VOTUIMapsExplorationLocationView

- (VOTUIMapsExplorationLocationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v18.receiver = self;
  v18.super_class = VOTUIMapsExplorationLocationView;
  v5 = [(VOTUIMapsExplorationLocationView *)&v18 initWithFrame:frame.origin.x, frame.origin.y];
  layer = [(VOTUIMapsExplorationLocationView *)v5 layer];
  [layer setBorderWidth:1.0];

  layer2 = [(VOTUIMapsExplorationLocationView *)v5 layer];
  [layer2 setMasksToBounds:0];

  v8 = width * 0.5;
  layer3 = [(VOTUIMapsExplorationLocationView *)v5 layer];
  [layer3 setShadowOffset:{v8, height * 0.5}];

  layer4 = [(VOTUIMapsExplorationLocationView *)v5 layer];
  [layer4 setShadowRadius:v8];

  layer5 = [(VOTUIMapsExplorationLocationView *)v5 layer];
  LODWORD(v12) = 1.0;
  [layer5 setShadowOpacity:v12];

  v13 = +[UIColor lightGrayColor];
  cGColor = [v13 CGColor];
  layer6 = [(VOTUIMapsExplorationLocationView *)v5 layer];
  [layer6 setBorderColor:cGColor];

  v16 = +[UIColor whiteColor];
  [(VOTUIMapsExplorationLocationView *)v5 setBackgroundColor:v16];

  return v5;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = VOTUIMapsExplorationLocationView;
  [(VOTUIMapsExplorationLocationView *)&v25 layoutSubviews];
  [(VOTUIMapsExplorationLocationView *)self frame];
  v4 = v3 * 0.5;
  layer = [(VOTUIMapsExplorationLocationView *)self layer];
  [layer setCornerRadius:v4];

  [(VOTUIMapsExplorationLocationView *)self frame];
  v7 = v6 + -8.0;
  [(VOTUIMapsExplorationLocationView *)self frame];
  v9 = v8 + -8.0;
  imageView = [(VOTUIMapsExplorationLocationView *)self imageView];
  [imageView setBounds:{0.0, 0.0, v7, v9}];

  [(VOTUIMapsExplorationLocationView *)self frame];
  v12 = (v11 + -8.0) * 0.5;
  imageView2 = [(VOTUIMapsExplorationLocationView *)self imageView];
  layer2 = [imageView2 layer];
  [layer2 setCornerRadius:v12];

  [(VOTUIMapsExplorationLocationView *)self center];
  v16 = v15;
  v18 = v17;
  superview = [(VOTUIMapsExplorationLocationView *)self superview];
  [(VOTUIMapsExplorationLocationView *)self convertPoint:superview fromView:v16, v18];
  v21 = v20;
  v23 = v22;
  imageView3 = [(VOTUIMapsExplorationLocationView *)self imageView];
  [imageView3 setCenter:{v21, v23}];
}

@end