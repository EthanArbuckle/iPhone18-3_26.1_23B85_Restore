@interface BCCardStackTransitionCoverView
- (BCCardStackTransitionCoverView)initWithFrame:(CGRect)frame;
- (CGRect)_frameForImage:(id)image forDisplayingInContainerBounds:(CGRect)bounds;
- (UIImage)image;
- (void)setImage:(id)image;
- (void)setImage:(id)image animatedWithAnimator:(id)animator;
- (void)updateContentFrame;
@end

@implementation BCCardStackTransitionCoverView

- (BCCardStackTransitionCoverView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = BCCardStackTransitionCoverView;
  v3 = [(BCCardStackTransitionCoverView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UIImageView alloc] initWithImage:0];
    [(BCCardStackTransitionCoverView *)v3 addSubview:v4];
    imageView = v3->_imageView;
    v3->_imageView = v4;
  }

  return v3;
}

- (CGRect)_frameForImage:(id)image forDisplayingInContainerBounds:(CGRect)bounds
{
  imageCopy = image;
  [imageCopy size];
  CGRectMakeWithSize();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [imageCopy alignmentRectInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  BCNormalizedInsetsForRects(v6, v8, v10, v12, v6 + v16, v8 + v14, v10 - (v16 + v20), v12 - (v14 + v18));

  v33 = BCRectByUnapplyingNormalizedInsets(v21, v22, v23, v24, v25, v26, v27, v28, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, v29, v30, v31, v32);
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (void)updateContentFrame
{
  imageView = [(BCCardStackTransitionCoverView *)self imageView];
  image = [imageView image];

  [(BCCardStackTransitionCoverView *)self bounds];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  if (image)
  {
    [(BCCardStackTransitionCoverView *)self _frameForImage:image forDisplayingInContainerBounds:v4, v5, v6, v7];
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
  }

  imageView2 = [(BCCardStackTransitionCoverView *)self imageView];
  [imageView2 setFrame:{v8, v9, v10, v11}];
}

- (UIImage)image
{
  imageView = [(BCCardStackTransitionCoverView *)self imageView];
  image = [imageView image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(BCCardStackTransitionCoverView *)self image];

  v5 = imageCopy;
  if (image != imageCopy)
  {
    imageView = [(BCCardStackTransitionCoverView *)self imageView];
    [imageView setImage:imageCopy];

    [(BCCardStackTransitionCoverView *)self bounds];
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    if (imageCopy)
    {
      [(BCCardStackTransitionCoverView *)self _frameForImage:v7 forDisplayingInContainerBounds:v8, v9, v10];
      v11 = v15;
      v12 = v16;
      v13 = v17;
      v14 = v18;
    }

    imageView2 = [(BCCardStackTransitionCoverView *)self imageView];
    [imageView2 setFrame:{v11, v12, v13, v14}];

    v5 = imageCopy;
  }
}

- (void)setImage:(id)image animatedWithAnimator:(id)animator
{
  imageCopy = image;
  animatorCopy = animator;
  image = [(BCCardStackTransitionCoverView *)self image];

  if (image != imageCopy)
  {
    image2 = [(BCCardStackTransitionCoverView *)self image];

    if (imageCopy && image2)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_14F0D0;
      v10[3] = &unk_2C7BE8;
      v10[4] = self;
      v11 = imageCopy;
      [animatorCopy addAnimations:v10];
    }

    else
    {
      [(BCCardStackTransitionCoverView *)self setImage:imageCopy];
    }
  }
}

@end