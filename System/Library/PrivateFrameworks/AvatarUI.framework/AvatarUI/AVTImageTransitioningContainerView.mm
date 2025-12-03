@interface AVTImageTransitioningContainerView
+ (CGRect)imageViewRectForContentRect:(CGRect)rect liveViewRect:(CGRect)viewRect imageSize:(CGSize)size scale:(double)scale;
+ (CGRect)liveViewRectForContentRect:(CGRect)rect aspectRatio:(CGSize)ratio layoutMode:(int64_t)mode scale:(double)scale;
- (AVTImageTransitioningContainerView)initWithFrame:(CGRect)frame layoutMode:(int64_t)mode;
- (CGSize)aspectRatio;
- (void)layoutSubviews;
- (void)setAspectRatio:(CGSize)ratio;
- (void)setLiveView:(id)view;
- (void)setStaticImage:(id)image animated:(BOOL)animated;
- (void)setStaticViewVisible:(BOOL)visible;
- (void)transitionLiveViewToFront;
- (void)transitionStaticViewToFront;
@end

@implementation AVTImageTransitioningContainerView

+ (CGRect)liveViewRectForContentRect:(CGRect)rect aspectRatio:(CGSize)ratio layoutMode:(int64_t)mode scale:(double)scale
{
  if (mode == 1)
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

+ (CGRect)imageViewRectForContentRect:(CGRect)rect liveViewRect:(CGRect)viewRect imageSize:(CGSize)size scale:(double)scale
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

- (AVTImageTransitioningContainerView)initWithFrame:(CGRect)frame layoutMode:(int64_t)mode
{
  v43.receiver = self;
  v43.super_class = AVTImageTransitioningContainerView;
  v5 = [(AVTImageTransitioningContainerView *)&v43 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v5->_aspectRatio = _Q0;
    v5->_layoutMode = mode;
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v33 = v32;
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 nativeScale];
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

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(UIView *)v6->_borderMaskView setBackgroundColor:whiteColor];

      [(AVTImageTransitioningContainerView *)v6 setMaskView:v6->_borderMaskView];
    }
  }

  return v6;
}

- (void)setStaticImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  if (self->_staticImage != imageCopy)
  {
    v16 = imageCopy;
    [(UIImage *)imageCopy size];
    v9 = v8;
    v11 = v10;
    [(UIImage *)self->_staticImage size];
    if (v9 != v13 || v11 != v12)
    {
      [(AVTImageTransitioningContainerView *)self setNeedsLayout];
    }

    objc_storeStrong(&self->_staticImage, image);
    imageViewsContainer = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
    [imageViewsContainer setImage:v16 animated:animatedCopy];

    imageCopy = v16;
  }
}

- (void)setLiveView:(id)view
{
  viewCopy = view;
  liveView = self->_liveView;
  if (liveView != viewCopy)
  {
    v10 = viewCopy;
    superview = [(UIView *)liveView superview];

    v8 = self->_liveView;
    if (superview == self)
    {
      [(UIView *)v8 removeFromSuperview];
    }

    else
    {
      superview2 = [(UIView *)v8 superview];

      if (superview2)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Live view wasn't removed from superview!"];
      }
    }

    objc_storeStrong(&self->_liveView, view);
    [(AVTImageTransitioningContainerView *)self addSubview:self->_liveView];
    [(AVTImageTransitioningContainerView *)self transitionStaticViewToFront];
    liveView = [(AVTImageTransitioningContainerView *)self setNeedsLayout];
    viewCopy = v10;
  }

  MEMORY[0x1EEE66BB8](liveView, viewCopy);
}

- (void)setAspectRatio:(CGSize)ratio
{
  if (self->_aspectRatio.width != ratio.width || self->_aspectRatio.height != ratio.height)
  {
    self->_aspectRatio = ratio;
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
  layoutMode = [(AVTImageTransitioningContainerView *)self layoutMode];
  window = [(AVTImageTransitioningContainerView *)self window];
  screen = [window screen];
  [screen scale];
  v61 = v10;
  v62 = v8;
  [v11 liveViewRectForContentRect:layoutMode aspectRatio:v4 layoutMode:v6 scale:{v8, v10, v13, v15, v19}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  staticImage = [(AVTImageTransitioningContainerView *)self staticImage];
  if (staticImage)
  {
    staticImage2 = [(AVTImageTransitioningContainerView *)self staticImage];
    [staticImage2 size];
    v31 = v30;
    v33 = v32;
  }

  else
  {
    v31 = 1.0;
    v33 = 1.0;
  }

  v34 = objc_opt_class();
  window2 = [(AVTImageTransitioningContainerView *)self window];
  screen2 = [window2 screen];
  [screen2 scale];
  v59 = v6;
  v60 = v4;
  [v34 imageViewRectForContentRect:v4 liveViewRect:v6 imageSize:v62 scale:{v61, v21, v23, v25, v27, *&v31, *&v33, v37}];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  liveView = [(AVTImageTransitioningContainerView *)self liveView];
  [liveView frame];
  v66.origin.x = v47;
  v66.origin.y = v48;
  v66.size.width = v49;
  v66.size.height = v50;
  v64.origin.x = v21;
  v64.origin.y = v23;
  v64.size.width = v25;
  v64.size.height = v27;
  LOBYTE(window2) = CGRectEqualToRect(v64, v66);

  if ((window2 & 1) == 0)
  {
    liveView2 = [(AVTImageTransitioningContainerView *)self liveView];
    [liveView2 setFrame:{v21, v23, v25, v27}];
  }

  imageViewsContainer = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
  [imageViewsContainer frame];
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
    imageViewsContainer2 = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
    [imageViewsContainer2 setFrame:{v39, v41, v43, v45}];
  }

  [objc_opt_class() borderMaskRectForContentRect:{v60, v59, v62, v61}];
  [(UIView *)self->_borderMaskView setFrame:?];
}

- (void)transitionStaticViewToFront
{
  imageViewsContainer = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
  [(AVTImageTransitioningContainerView *)self bringSubviewToFront:imageViewsContainer];

  liveView = [(AVTImageTransitioningContainerView *)self liveView];
  [liveView setAlpha:0.0];

  imageViewsContainer2 = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
  [imageViewsContainer2 setAlpha:1.0];
}

- (void)transitionLiveViewToFront
{
  liveView = [(AVTImageTransitioningContainerView *)self liveView];
  [(AVTImageTransitioningContainerView *)self bringSubviewToFront:liveView];

  liveView2 = [(AVTImageTransitioningContainerView *)self liveView];
  [liveView2 setAlpha:1.0];

  imageViewsContainer = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
  [imageViewsContainer setAlpha:0.0];
}

- (void)setStaticViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  imageViewsContainer = [(AVTImageTransitioningContainerView *)self imageViewsContainer];
  v6 = imageViewsContainer;
  v5 = 0.0;
  if (visibleCopy)
  {
    v5 = 1.0;
  }

  [imageViewsContainer setAlpha:v5];
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