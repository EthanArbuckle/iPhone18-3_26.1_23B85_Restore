@interface AVTUIAnimatingImageView
- (AVTUIAnimatingImageView)initWithFrame:(CGRect)frame;
- (void)setContentMode:(int64_t)mode;
- (void)setContinuousCornerRadius:(double)radius;
- (void)setImage:(id)image animated:(BOOL)animated;
@end

@implementation AVTUIAnimatingImageView

- (AVTUIAnimatingImageView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = AVTUIAnimatingImageView;
  v3 = [(AVTUIAnimatingImageView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(AVTUIAnimatingImageView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v5;

    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(AVTUIAnimatingImageView *)v3 bounds];
    v8 = [v7 initWithFrame:?];
    fadeInImageView = v3->_fadeInImageView;
    v3->_fadeInImageView = v8;

    [(UIImageView *)v3->_imageView setAutoresizingMask:18];
    [(UIImageView *)v3->_fadeInImageView setAutoresizingMask:18];
    [(AVTUIAnimatingImageView *)v3 addSubview:v3->_fadeInImageView];
    [(AVTUIAnimatingImageView *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    objc_storeStrong(&self->_image, image);
    fadeInImageView = [(AVTUIAnimatingImageView *)self fadeInImageView];
    [fadeInImageView setImage:0];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __45__AVTUIAnimatingImageView_setImage_animated___block_invoke;
    v23[3] = &unk_1E7F3AD60;
    v23[4] = self;
    v9 = imageCopy;
    v24 = v9;
    v10 = MEMORY[0x1BFB0DE80](v23);
    v11 = v10;
    if (animatedCopy)
    {
      imageView = [(AVTUIAnimatingImageView *)self imageView];
      image = [imageView image];

      if (image)
      {
        fadeInImageView2 = [(AVTUIAnimatingImageView *)self fadeInImageView];
        [fadeInImageView2 setImage:v9];

        imageView2 = [(AVTUIAnimatingImageView *)self imageView];
        [imageView2 setAlpha:1.0];

        v16 = MEMORY[0x1E69DD250];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __45__AVTUIAnimatingImageView_setImage_animated___block_invoke_3;
        v21[3] = &unk_1E7F3A9B8;
        v21[4] = self;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __45__AVTUIAnimatingImageView_setImage_animated___block_invoke_4;
        v19[3] = &unk_1E7F3AC00;
        v20 = v11;
        [v16 animateWithDuration:v21 animations:v19 completion:0.18];
      }

      else
      {
        imageView3 = [(AVTUIAnimatingImageView *)self imageView];
        [imageView3 setAlpha:0.0];

        imageView4 = [(AVTUIAnimatingImageView *)self imageView];
        [imageView4 setImage:v9];

        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __45__AVTUIAnimatingImageView_setImage_animated___block_invoke_2;
        v22[3] = &unk_1E7F3A9B8;
        v22[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v22 animations:0.18];
      }
    }

    else
    {
      (*(v10 + 16))(v10);
    }
  }
}

void __45__AVTUIAnimatingImageView_setImage_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageView];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) imageView];
  [v4 setImage:v3];

  v5 = [*(a1 + 32) fadeInImageView];
  [v5 setImage:0];
}

void __45__AVTUIAnimatingImageView_setImage_animated___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) imageView];
  [v1 setAlpha:1.0];
}

void __45__AVTUIAnimatingImageView_setImage_animated___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) imageView];
  [v1 setAlpha:0.0];
}

uint64_t __45__AVTUIAnimatingImageView_setImage_animated___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)setContentMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = AVTUIAnimatingImageView;
  [(AVTUIAnimatingImageView *)&v7 setContentMode:?];
  imageView = [(AVTUIAnimatingImageView *)self imageView];
  [imageView setContentMode:mode];

  fadeInImageView = [(AVTUIAnimatingImageView *)self fadeInImageView];
  [fadeInImageView setContentMode:mode];
}

- (void)setContinuousCornerRadius:(double)radius
{
  v5 = radius > 0.0;
  imageView = [(AVTUIAnimatingImageView *)self imageView];
  [imageView setClipsToBounds:v5];

  fadeInImageView = [(AVTUIAnimatingImageView *)self fadeInImageView];
  [fadeInImageView setClipsToBounds:v5];

  [(AVTUIAnimatingImageView *)self setClipsToBounds:v5];
  [(AVTUIAnimatingImageView *)self _setContinuousCornerRadius:radius];
  imageView2 = [(AVTUIAnimatingImageView *)self imageView];
  [imageView2 _setContinuousCornerRadius:radius];

  fadeInImageView2 = [(AVTUIAnimatingImageView *)self fadeInImageView];
  [fadeInImageView2 _setContinuousCornerRadius:radius];
}

@end