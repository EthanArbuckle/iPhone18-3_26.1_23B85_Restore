@interface BKPictureBookCurlContainerView
- (BKPictureBookCurlContainerView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)insertSubview:(id)a3 atIndex:(int64_t)a4;
- (void)killCurlingSourceViews;
- (void)layoutSubviews;
- (void)reset;
- (void)setDrawsSpine:(BOOL)a3;
- (void)setLeftImage:(id)a3;
- (void)setRightImage:(id)a3;
- (void)setScale:(double)a3;
@end

@implementation BKPictureBookCurlContainerView

- (BKPictureBookCurlContainerView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = BKPictureBookCurlContainerView;
  v3 = [(BKPictureBookCurlContainerView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [BKPictureBookCurlPageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [(BKPictureBookCurlPageView *)v4 initWithFrame:CGRectZero.origin.x, y, width, height];
    leftView = v3->_leftView;
    v3->_leftView = v8;

    v10 = [[BKPictureBookCurlPageView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    rightView = v3->_rightView;
    v3->_rightView = v10;

    [(BKPictureBookCurlPageView *)v3->_rightView setRight:1];
    [(BKPictureBookCurlContainerView *)v3 addSubview:v3->_leftView];
    [(BKPictureBookCurlContainerView *)v3 addSubview:v3->_rightView];
    v3->_scale = 1.0;
    v12 = v3;
  }

  return v3;
}

- (void)dealloc
{
  [(BKPictureBookCurlContainerView *)self reset];
  v3.receiver = self;
  v3.super_class = BKPictureBookCurlContainerView;
  [(BKPictureBookCurlContainerView *)&v3 dealloc];
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(BKPictureBookCurlContainerView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = BKPictureBookCurlContainerView;
  [(BKPictureBookCurlContainerView *)&v17 layoutSubviews];
  [(BKPictureBookCurlContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9 * 0.5;
  [(BKPictureBookCurlPageView *)self->_leftView setFrame:?];
  [(BKPictureBookCurlContainerView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15 * 0.5;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v10;
  v18.size.height = v8;
  [(BKPictureBookCurlPageView *)self->_rightView setFrame:CGRectGetMaxX(v18), v12, v16, v14];
}

- (void)setLeftImage:(id)a3
{
  scale = self->_scale;
  leftView = self->_leftView;
  v6 = a3;
  [(BKPictureBookCurlPageView *)leftView setScale:scale];
  [(BKPictureBookCurlPageView *)self->_leftView setHidden:0];
  [(BKPictureBookCurlPageView *)self->_leftView setImage:v6];
}

- (void)setRightImage:(id)a3
{
  scale = self->_scale;
  rightView = self->_rightView;
  v6 = a3;
  [(BKPictureBookCurlPageView *)rightView setScale:scale];
  [(BKPictureBookCurlPageView *)self->_rightView setHidden:0];
  [(BKPictureBookCurlPageView *)self->_rightView setImage:v6];

  v7 = self->_rightView;

  [(BKPictureBookCurlPageView *)v7 addGutter:1];
}

- (void)setDrawsSpine:(BOOL)a3
{
  v3 = a3;
  self->_drawsSpine = a3;
  [(BKPictureBookCurlPageView *)self->_leftView setDrawsSpine:?];
  rightView = self->_rightView;

  [(BKPictureBookCurlPageView *)rightView setDrawsSpine:v3];
}

- (void)insertSubview:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  if (*&self->_leftView == 0)
  {
    [(BKPictureBookCurlContainerView *)&v8 insertSubview:v6 atIndex:a4, v7.receiver, v7.super_class, self, BKPictureBookCurlContainerView];
  }

  else
  {
    [(BKPictureBookCurlContainerView *)&v7 insertSubview:v6 atIndex:a4 + 3, self, BKPictureBookCurlContainerView, v8.receiver, v8.super_class];
  }
}

- (void)killCurlingSourceViews
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(BKPictureBookCurlContainerView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (v8 != self->_leftView && v8 != self->_rightView)
        {
          [(BKPictureBookCurlPageView *)v8 removeFromSuperview];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)reset
{
  [(BKPictureBookCurlContainerView *)self killCurlingSourceViews];
  [(BKPictureBookCurlContainerView *)self setHidden:1];
  [(BKPictureBookCurlPageView *)self->_leftView setHidden:1];
  [(BKPictureBookCurlPageView *)self->_rightView setHidden:1];
  [(BKPictureBookCurlPageView *)self->_leftView reset];
  rightView = self->_rightView;

  [(BKPictureBookCurlPageView *)rightView reset];
}

@end