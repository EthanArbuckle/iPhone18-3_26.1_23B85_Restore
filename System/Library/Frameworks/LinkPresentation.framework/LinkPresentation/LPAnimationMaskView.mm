@interface LPAnimationMaskView
- (LPAnimationMaskView)initWithFrame:(CGRect)frame;
- (void)internalLayoutSubviews;
- (void)setImage:(id)image;
@end

@implementation LPAnimationMaskView

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);

  [(LPAnimationMaskView *)self setNeedsLayout];
}

- (LPAnimationMaskView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = LPAnimationMaskView;
  v3 = [(LPAnimationMaskView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    imageView = [(LPAnimationMaskView *)v3 imageView];
    [(LPAnimationMaskView *)v3 addSubview:imageView];
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

  selfCopy = self;
  sub_1AE97856C();
}

@end