@interface BKSpreadThumbnailScrubberCell
- (BKSpreadThumbnailScrubberCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setShouldHaveLeftImage:(BOOL)a3;
- (void)setShouldHaveRightImage:(BOOL)a3;
@end

@implementation BKSpreadThumbnailScrubberCell

- (BKSpreadThumbnailScrubberCell)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = BKSpreadThumbnailScrubberCell;
  v3 = [(BKThumbnailScrubberCell *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    rightImageView = v3->_rightImageView;
    v3->_rightImageView = v8;

    v10 = v3->_rightImageView;
    v11 = [objc_opt_class() emptyBackgroundColor];
    [(UIImageView *)v10 setBackgroundColor:v11];

    [(BKSpreadThumbnailScrubberCell *)v3 addSubview:v3->_rightImageView];
    v12 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    leftImageView = v3->_leftImageView;
    v3->_leftImageView = v12;

    v14 = v3->_leftImageView;
    v15 = [objc_opt_class() emptyBackgroundColor];
    [(UIImageView *)v14 setBackgroundColor:v15];

    [(BKSpreadThumbnailScrubberCell *)v3 addSubview:v3->_leftImageView];
    [(UIImageView *)v3->super._imageView removeFromSuperview];
    imageView = v3->super._imageView;
    v3->super._imageView = 0;
  }

  return v3;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = BKSpreadThumbnailScrubberCell;
  [(BKThumbnailScrubberCell *)&v16 layoutSubviews];
  [(BKSpreadThumbnailScrubberCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v7 * 0.5;
  if (![(BKSpreadThumbnailScrubberCell *)self shouldHaveLeftImage]|| ![(BKSpreadThumbnailScrubberCell *)self shouldHaveRightImage])
  {
    if ([(BKSpreadThumbnailScrubberCell *)self shouldHaveLeftImage])
    {
      [(UIImageView *)self->_leftImageView setFrame:v4, v6, v11, v10];
      [(UIImageView *)self->_rightImageView setBackgroundColor:0];
    }

    else
    {
      if (![(BKSpreadThumbnailScrubberCell *)self shouldHaveRightImage])
      {
        goto LABEL_9;
      }

      [(UIImageView *)self->_rightImageView setFrame:v11, v6, v11, v10];
      [(UIImageView *)self->_leftImageView setBackgroundColor:0];
      v4 = v11;
    }

    v8 = v11;
    goto LABEL_9;
  }

  [(UIImageView *)self->_leftImageView setFrame:v4, v6, v11, v10];
  [(UIImageView *)self->_rightImageView setFrame:v11, v6, v11, v10];
  leftImageView = self->_leftImageView;
  v13 = [objc_opt_class() emptyBackgroundColor];
  [(UIImageView *)leftImageView setBackgroundColor:v13];

  rightImageView = self->_rightImageView;
  v15 = [objc_opt_class() emptyBackgroundColor];
  [(UIImageView *)rightImageView setBackgroundColor:v15];

LABEL_9:
  [(CALayer *)self->super._borderLayer setFrame:v4, v6, v8, v10];
}

- (void)setShouldHaveLeftImage:(BOOL)a3
{
  if (self->_shouldHaveLeftImage != a3)
  {
    self->_shouldHaveLeftImage = a3;
    [(BKSpreadThumbnailScrubberCell *)self setNeedsLayout];
  }
}

- (void)setShouldHaveRightImage:(BOOL)a3
{
  if (self->_shouldHaveRightImage != a3)
  {
    self->_shouldHaveRightImage = a3;
    [(BKSpreadThumbnailScrubberCell *)self setNeedsLayout];
  }
}

@end