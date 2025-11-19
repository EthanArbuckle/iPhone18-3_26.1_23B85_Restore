@interface LPAnimationMaskView
- (LPAnimationMaskView)initWithFrame:(CGRect)a3;
- (void)internalLayoutSubviews;
- (void)setImage:(id)a3;
@end

@implementation LPAnimationMaskView

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);

  [(LPAnimationMaskView *)self setNeedsLayout];
}

- (LPAnimationMaskView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = LPAnimationMaskView;
  v3 = [(LPAnimationMaskView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    v6 = [(LPAnimationMaskView *)v3 imageView];
    [(LPAnimationMaskView *)v3 addSubview:v6];
  }

  return v3;
}

- (void)internalLayoutSubviews
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_1AE97856C();
}

@end