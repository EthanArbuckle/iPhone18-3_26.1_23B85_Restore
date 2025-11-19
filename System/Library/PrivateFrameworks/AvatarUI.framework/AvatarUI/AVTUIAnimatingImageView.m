@interface AVTUIAnimatingImageView
- (AVTUIAnimatingImageView)initWithFrame:(CGRect)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setContinuousCornerRadius:(double)a3;
- (void)setImage:(id)a3 animated:(BOOL)a4;
@end

@implementation AVTUIAnimatingImageView

- (AVTUIAnimatingImageView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = AVTUIAnimatingImageView;
  v3 = [(AVTUIAnimatingImageView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_image != v7)
  {
    objc_storeStrong(&self->_image, a3);
    v8 = [(AVTUIAnimatingImageView *)self fadeInImageView];
    [v8 setImage:0];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __45__AVTUIAnimatingImageView_setImage_animated___block_invoke;
    v23[3] = &unk_1E7F3AD60;
    v23[4] = self;
    v9 = v7;
    v24 = v9;
    v10 = MEMORY[0x1BFB0DE80](v23);
    v11 = v10;
    if (v4)
    {
      v12 = [(AVTUIAnimatingImageView *)self imageView];
      v13 = [v12 image];

      if (v13)
      {
        v14 = [(AVTUIAnimatingImageView *)self fadeInImageView];
        [v14 setImage:v9];

        v15 = [(AVTUIAnimatingImageView *)self imageView];
        [v15 setAlpha:1.0];

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
        v17 = [(AVTUIAnimatingImageView *)self imageView];
        [v17 setAlpha:0.0];

        v18 = [(AVTUIAnimatingImageView *)self imageView];
        [v18 setImage:v9];

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

- (void)setContentMode:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = AVTUIAnimatingImageView;
  [(AVTUIAnimatingImageView *)&v7 setContentMode:?];
  v5 = [(AVTUIAnimatingImageView *)self imageView];
  [v5 setContentMode:a3];

  v6 = [(AVTUIAnimatingImageView *)self fadeInImageView];
  [v6 setContentMode:a3];
}

- (void)setContinuousCornerRadius:(double)a3
{
  v5 = a3 > 0.0;
  v6 = [(AVTUIAnimatingImageView *)self imageView];
  [v6 setClipsToBounds:v5];

  v7 = [(AVTUIAnimatingImageView *)self fadeInImageView];
  [v7 setClipsToBounds:v5];

  [(AVTUIAnimatingImageView *)self setClipsToBounds:v5];
  [(AVTUIAnimatingImageView *)self _setContinuousCornerRadius:a3];
  v8 = [(AVTUIAnimatingImageView *)self imageView];
  [v8 _setContinuousCornerRadius:a3];

  v9 = [(AVTUIAnimatingImageView *)self fadeInImageView];
  [v9 _setContinuousCornerRadius:a3];
}

@end