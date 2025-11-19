@interface AVTImageTransitioningContainerView
+ (CGRect)imageViewRectForContentRect:(CGRect)a3 liveViewRect:(CGRect)a4 imageSize:(CGSize)a5 scale:(double)a6;
+ (CGRect)liveViewRectForContentRect:(CGRect)a3 aspectRatio:(CGSize)a4 layoutMode:(int64_t)a5 scale:(double)a6;
- (AVTImageTransitioningContainerView)initWithFrame:(CGRect)a3 layoutMode:(int64_t)a4;
- (CGSize)aspectRatio;
- (void)layoutSubviews;
- (void)setAspectRatio:(CGSize)a3;
- (void)setLiveView:(id)a3;
- (void)setStaticImage:(id)a3 animated:(BOOL)a4;
- (void)setStaticViewVisible:(BOOL)a3;
- (void)transitionLiveViewToFront;
- (void)transitionStaticViewToFront;
@end

@implementation AVTImageTransitioningContainerView

+ (CGRect)liveViewRectForContentRect:(CGRect)a3 aspectRatio:(CGSize)a4 layoutMode:(int64_t)a5 scale:(double)a6
{
  if (a5 == 1)
  {
    _UIScaleTransformForAspectFitOfSizeInTargetSize();
  }

  else
  {
    _UIScaleTransformForAspectFillOfSizeInTargetSize();
  }

  UIRectGetCenter();
  UIRectCenteredAboutPointScale();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGRect)imageViewRectForContentRect:(CGRect)a3 liveViewRect:(CGRect)a4 imageSize:(CGSize)a5 scale:(double)a6
{
  _UIScaleTransformForAspectFitOfSizeInTargetSize();
  UIRectGetCenter();
  UIRectCenteredAboutPointScale();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (AVTImageTransitioningContainerView)initWithFrame:(CGRect)a3 layoutMode:(int64_t)a4
{
  v43.receiver = self;
  v43.super_class = AVTImageTransitioningContainerView;
  v5 = [(AVTImageTransitioningContainerView *)&v43 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v5->_aspectRatio = _Q0;
    v5->_layoutMode = a4;
    v12 = objc_opt_class();
    [(AVTImageTransitioningContainerView *)v6 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(AVTImageTransitioningContainerView *)v6 bounds];
    [v12 imageViewRectForContentRect:v14 liveViewRect:v16 imageSize:v18 scale:{v20, v21, v22, v23, v24, 0x3FF0000000000000, 0x3FF0000000000000, 0}];
    v29 = [[AVTUIAnimatingImageView alloc] initWithFrame:v25, v26, v27, v28];
    imageViewsContainer = v6->_imageViewsContainer;
    v6->_imageViewsContainer = v29;

    [(AVTImageTransitioningContainerView *)v6 addSubview:v6->_imageViewsContainer];
    v31 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v31 scale];
    v33 = v32;
    v34 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v34 nativeScale];
    v36 = v35;

    if (v33 != v36)
    {
      v37 = objc_alloc(MEMORY[0x1E69DD250]);
      v38 = objc_opt_class();
      [(AVTImageTransitioningContainerView *)v6 bounds];
      [v38 borderMaskRectForContentRect:?];
      v39 = [v37 initWithFrame:?];
      borderMaskView = v6->_borderMaskView;
      v6->_borderMaskView = v39;

      v41 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIView *)v6->_borderMaskView setBackgroundColor:v41];

      [(AVTImageTransitioningContainerView *)v6 setMaskView:v6->_borderMaskView];
    }
  }

  return v6;
}

- (void)setStaticImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_staticImage != v7)
  {
    v16 = v7;
    [(UIImage *)v7 size];
    v9 = v8;
    v11 = v10;
    [(UIImage *)self->_staticImage size];
    if (v9 != v13 || v11 != v12)
    {
      [(AVTImageTransitioningContainerView *)self setNeedsLayout];
    }

    objc_storeStrong(&self->_staticImage, a3);
    v15 = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
    [v15 setImage:v16 animated:v4];

    v7 = v16;
  }
}

- (void)setLiveView:(id)a3
{
  v5 = a3;
  liveView = self->_liveView;
  if (liveView != v5)
  {
    v10 = v5;
    v7 = [(UIView *)liveView superview];

    v8 = self->_liveView;
    if (v7 == self)
    {
      [(UIView *)v8 removeFromSuperview];
    }

    else
    {
      v9 = [(UIView *)v8 superview];

      if (v9)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Live view wasn't removed from superview!"];
      }
    }

    objc_storeStrong(&self->_liveView, a3);
    [(AVTImageTransitioningContainerView *)self addSubview:self->_liveView];
    [(AVTImageTransitioningContainerView *)self transitionStaticViewToFront];
    liveView = [(AVTImageTransitioningContainerView *)self setNeedsLayout];
    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](liveView, v5);
}

- (void)setAspectRatio:(CGSize)a3
{
  if (self->_aspectRatio.width != a3.width || self->_aspectRatio.height != a3.height)
  {
    self->_aspectRatio = a3;
    [(AVTImageTransitioningContainerView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v63.receiver = self;
  v63.super_class = AVTImageTransitioningContainerView;
  [(AVTImageTransitioningContainerView *)&v63 layoutSubviews];
  [(AVTImageTransitioningContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_class();
  [(AVTImageTransitioningContainerView *)self aspectRatio];
  v13 = v12;
  v15 = v14;
  v16 = [(AVTImageTransitioningContainerView *)self layoutMode];
  v17 = [(AVTImageTransitioningContainerView *)self window];
  v18 = [v17 screen];
  [v18 scale];
  v61 = v10;
  v62 = v8;
  [v11 liveViewRectForContentRect:v16 aspectRatio:v4 layoutMode:v6 scale:{v8, v10, v13, v15, v19}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [(AVTImageTransitioningContainerView *)self staticImage];
  if (v28)
  {
    v29 = [(AVTImageTransitioningContainerView *)self staticImage];
    [v29 size];
    v31 = v30;
    v33 = v32;
  }

  else
  {
    v31 = 1.0;
    v33 = 1.0;
  }

  v34 = objc_opt_class();
  v35 = [(AVTImageTransitioningContainerView *)self window];
  v36 = [v35 screen];
  [v36 scale];
  v59 = v6;
  v60 = v4;
  [v34 imageViewRectForContentRect:v4 liveViewRect:v6 imageSize:v62 scale:{v61, v21, v23, v25, v27, *&v31, *&v33, v37}];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = [(AVTImageTransitioningContainerView *)self liveView];
  [v46 frame];
  v66.origin.x = v47;
  v66.origin.y = v48;
  v66.size.width = v49;
  v66.size.height = v50;
  v64.origin.x = v21;
  v64.origin.y = v23;
  v64.size.width = v25;
  v64.size.height = v27;
  LOBYTE(v35) = CGRectEqualToRect(v64, v66);

  if ((v35 & 1) == 0)
  {
    v51 = [(AVTImageTransitioningContainerView *)self liveView];
    [v51 setFrame:{v21, v23, v25, v27}];
  }

  v52 = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
  [v52 frame];
  v67.origin.x = v53;
  v67.origin.y = v54;
  v67.size.width = v55;
  v67.size.height = v56;
  v65.origin.x = v39;
  v65.origin.y = v41;
  v65.size.width = v43;
  v65.size.height = v45;
  v57 = CGRectEqualToRect(v65, v67);

  if (!v57)
  {
    v58 = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
    [v58 setFrame:{v39, v41, v43, v45}];
  }

  [objc_opt_class() borderMaskRectForContentRect:{v60, v59, v62, v61}];
  [(UIView *)self->_borderMaskView setFrame:?];
}

- (void)transitionStaticViewToFront
{
  v3 = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
  [(AVTImageTransitioningContainerView *)self bringSubviewToFront:v3];

  v4 = [(AVTImageTransitioningContainerView *)self liveView];
  [v4 setAlpha:0.0];

  v5 = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
  [v5 setAlpha:1.0];
}

- (void)transitionLiveViewToFront
{
  v3 = [(AVTImageTransitioningContainerView *)self liveView];
  [(AVTImageTransitioningContainerView *)self bringSubviewToFront:v3];

  v4 = [(AVTImageTransitioningContainerView *)self liveView];
  [v4 setAlpha:1.0];

  v5 = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
  [v5 setAlpha:0.0];
}

- (void)setStaticViewVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
  v6 = v4;
  v5 = 0.0;
  if (v3)
  {
    v5 = 1.0;
  }

  [v4 setAlpha:v5];
}

- (CGSize)aspectRatio
{
  width = self->_aspectRatio.width;
  height = self->_aspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

@end