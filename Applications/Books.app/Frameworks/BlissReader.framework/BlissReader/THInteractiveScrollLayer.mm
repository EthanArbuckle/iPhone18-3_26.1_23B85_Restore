@interface THInteractiveScrollLayer
- (BOOL)canScroll;
- (CGSize)contentSize;
- (THInteractiveScrollLayer)init;
- (id)swapIntoView:(id)view;
- (void)dealloc;
- (void)layoutSublayers;
- (void)setBottomContentPadding:(double)padding;
- (void)setBottomFadeImage:(id)image;
- (void)setContentLayer:(id)layer;
- (void)setShowFadeImages:(BOOL)images;
- (void)setTopContentPadding:(double)padding;
- (void)setTopFadeImage:(id)image;
- (void)swapOutOfView:(id)view;
@end

@implementation THInteractiveScrollLayer

- (THInteractiveScrollLayer)init
{
  v4.receiver = self;
  v4.super_class = THInteractiveScrollLayer;
  v2 = [(THInteractiveScrollLayer *)&v4 init];
  if (v2)
  {
    v2->_scrollLayer = objc_alloc_init(TSDNoDefaultImplicitActionScrollLayer);
    v2->_topFadeLayer = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    v2->_bottomFadeLayer = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    [(THInteractiveScrollLayer *)v2 addSublayer:v2->_scrollLayer];
    [(THInteractiveScrollLayer *)v2 addSublayer:v2->_topFadeLayer];
    [(THInteractiveScrollLayer *)v2 addSublayer:v2->_bottomFadeLayer];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THInteractiveScrollLayer;
  [(THInteractiveScrollLayer *)&v3 dealloc];
}

- (void)setContentLayer:(id)layer
{
  contentLayer = self->_contentLayer;
  if (contentLayer != layer)
  {
    [(CALayer *)contentLayer removeFromSuperlayer];

    self->_contentLayer = layer;
    [(CAScrollLayer *)self->_scrollLayer setContentOffset:CGPointZero.x, CGPointZero.y];
    scrollLayer = self->_scrollLayer;
    v7 = self->_contentLayer;

    [(CAScrollLayer *)scrollLayer addSublayer:v7];
  }
}

- (void)setTopFadeImage:(id)image
{
  topFadeImage = self->_topFadeImage;
  if (topFadeImage != image)
  {

    self->_topFadeImage = image;

    [(THInteractiveScrollLayer *)self setNeedsLayout];
  }
}

- (void)setBottomFadeImage:(id)image
{
  bottomFadeImage = self->_bottomFadeImage;
  if (bottomFadeImage != image)
  {

    self->_bottomFadeImage = image;

    [(THInteractiveScrollLayer *)self setNeedsLayout];
  }
}

- (void)setShowFadeImages:(BOOL)images
{
  if (self->_showFadeImages != images)
  {
    self->_showFadeImages = images;
    [(THInteractiveScrollLayer *)self setNeedsLayout];
  }
}

- (void)setTopContentPadding:(double)padding
{
  if (self->_topContentPadding != padding)
  {
    self->_topContentPadding = padding;
    [(THInteractiveScrollLayer *)self setNeedsLayout];
  }
}

- (void)setBottomContentPadding:(double)padding
{
  if (self->_bottomContentPadding != padding)
  {
    self->_bottomContentPadding = padding;
    [(THInteractiveScrollLayer *)self setNeedsLayout];
  }
}

- (BOOL)canScroll
{
  [(THInteractiveScrollLayer *)self layoutIfNeeded];
  [(THInteractiveScrollLayer *)self contentSize];
  v4 = v3;
  [(CAScrollLayer *)self->_scrollLayer bounds];
  if (v4 > CGRectGetWidth(v8))
  {
    return 1;
  }

  [(THInteractiveScrollLayer *)self contentSize];
  v7 = v6;
  [(CAScrollLayer *)self->_scrollLayer bounds];
  return v7 > CGRectGetHeight(v9);
}

- (void)layoutSublayers
{
  v10.receiver = self;
  v10.super_class = THInteractiveScrollLayer;
  [(THInteractiveScrollLayer *)&v10 layoutSublayers];
  [(THInteractiveScrollLayer *)self bounds];
  [(CAScrollLayer *)self->_scrollLayer setFrame:?];
  [(CALayer *)self->_contentLayer bounds];
  TSDRectWithOriginAndSize();
  [(CALayer *)self->_contentLayer setFrame:?];
  [(CALayer *)self->_topFadeLayer setContents:[(TSUImage *)self->_topFadeImage CGImage]];
  [(THInteractiveScrollLayer *)self bounds];
  Width = CGRectGetWidth(v11);
  [(TSUImage *)self->_topFadeImage size];
  [(CALayer *)self->_topFadeLayer setFrame:0.0, 0.0, Width, v4];
  [(CALayer *)self->_topFadeLayer setHidden:!self->_showFadeImages];
  [(CALayer *)self->_bottomFadeLayer setContents:[(TSUImage *)self->_bottomFadeImage CGImage]];
  [(THInteractiveScrollLayer *)self bounds];
  MaxY = CGRectGetMaxY(v12);
  [(TSUImage *)self->_bottomFadeImage size];
  v7 = MaxY - v6;
  [(THInteractiveScrollLayer *)self bounds];
  v8 = CGRectGetWidth(v13);
  [(TSUImage *)self->_bottomFadeImage size];
  [(CALayer *)self->_bottomFadeLayer setFrame:0.0, v7, v8, v9];
  [(CALayer *)self->_bottomFadeLayer setHidden:!self->_showFadeImages];
}

- (id)swapIntoView:(id)view
{
  if ([(THInteractiveScrollLayer *)self needsLayout])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [UIView alloc];
  [(THInteractiveScrollLayer *)self frame];
  v6 = [v5 initWithFrame:?];
  v7 = [UIScrollView alloc];
  [(CAScrollLayer *)self->_scrollLayer frame];
  v8 = [v7 initWithFrame:?];
  [(THInteractiveScrollLayer *)self contentSize];
  [v8 setContentSize:?];
  [(TSUImage *)self->_topFadeImage size];
  v10 = v9;
  [(TSUImage *)self->_bottomFadeImage size];
  [v8 setScrollIndicatorInsets:{v10, 0.0, v11, 0.0}];
  [objc_msgSend(v8 "layer")];
  [v6 addSubview:v8];
  v12 = [UIView alloc];
  [(CALayer *)self->_contentLayer bounds];
  v13 = [v12 initWithFrame:?];
  [objc_msgSend(v13 "layer")];
  [v8 addSubview:v13];
  if (self->_showFadeImages)
  {
    v14 = [UIImageView alloc];
    [(CALayer *)self->_topFadeLayer frame];
    v15 = [v14 initWithFrame:?];
    [v15 setImage:{-[TSUImage UIImage](self->_topFadeImage, "UIImage")}];
    [v6 addSubview:v15];
    v16 = [UIImageView alloc];
    [(CALayer *)self->_bottomFadeLayer frame];
    v17 = [v16 initWithFrame:?];
    [v17 setImage:{-[TSUImage UIImage](self->_bottomFadeImage, "UIImage")}];
    [v6 addSubview:v17];
  }

  [(CAScrollLayer *)self->_scrollLayer contentOffset];
  [v8 setContentOffset:?];
  objc_setAssociatedObject(v6, &off_45F0F8, v8, &dword_0 + 1);

  if (view)
  {
    v18 = [view objectForKey:@"scrollViewBlock"];
    if (v18)
    {
      v18[2](v18, v8);
    }
  }

  return v6;
}

- (void)swapOutOfView:(id)view
{
  [(CAScrollLayer *)self->_scrollLayer addSublayer:self->_contentLayer];
  objc_opt_class();
  objc_getAssociatedObject(view, &off_45F0F8);
  v5 = TSUDynamicCast();
  if (!v5)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [v5 contentOffset];
  [(CAScrollLayer *)self->_scrollLayer setContentOffset:?];
  [(THInteractiveScrollLayer *)self contentSize];
  v7 = v6;
  [(CAScrollLayer *)self->_scrollLayer bounds];
  v9 = v8;
  [(CAScrollLayer *)self->_scrollLayer contentOffset];
  v11 = v10;
  scrollLayer = self->_scrollLayer;
  [(CAScrollLayer *)scrollLayer contentOffset];
  if (v11 >= 0.0)
  {
    if (v13 <= v7 - v9)
    {
      return;
    }

    scrollLayer = self->_scrollLayer;
    [(CAScrollLayer *)scrollLayer contentOffset];
  }

  [(CAScrollLayer *)scrollLayer setContentOffset:1 animated:?];
}

- (CGSize)contentSize
{
  [(CALayer *)self->_contentLayer bounds];
  v4 = v3;
  v6 = v5 + self->_topContentPadding + self->_bottomContentPadding;
  result.height = v6;
  result.width = v4;
  return result;
}

@end