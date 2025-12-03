@interface BKSpreadThumbnailScrubberCell
- (BKSpreadThumbnailScrubberCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setShouldHaveLeftImage:(BOOL)image;
- (void)setShouldHaveRightImage:(BOOL)image;
@end

@implementation BKSpreadThumbnailScrubberCell

- (BKSpreadThumbnailScrubberCell)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = BKSpreadThumbnailScrubberCell;
  v3 = [(BKThumbnailScrubberCell *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    emptyBackgroundColor = [objc_opt_class() emptyBackgroundColor];
    [(UIImageView *)v10 setBackgroundColor:emptyBackgroundColor];

    [(BKSpreadThumbnailScrubberCell *)v3 addSubview:v3->_rightImageView];
    v12 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    leftImageView = v3->_leftImageView;
    v3->_leftImageView = v12;

    v14 = v3->_leftImageView;
    emptyBackgroundColor2 = [objc_opt_class() emptyBackgroundColor];
    [(UIImageView *)v14 setBackgroundColor:emptyBackgroundColor2];

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
  emptyBackgroundColor = [objc_opt_class() emptyBackgroundColor];
  [(UIImageView *)leftImageView setBackgroundColor:emptyBackgroundColor];

  rightImageView = self->_rightImageView;
  emptyBackgroundColor2 = [objc_opt_class() emptyBackgroundColor];
  [(UIImageView *)rightImageView setBackgroundColor:emptyBackgroundColor2];

LABEL_9:
  [(CALayer *)self->super._borderLayer setFrame:v4, v6, v8, v10];
}

- (void)setShouldHaveLeftImage:(BOOL)image
{
  if (self->_shouldHaveLeftImage != image)
  {
    self->_shouldHaveLeftImage = image;
    [(BKSpreadThumbnailScrubberCell *)self setNeedsLayout];
  }
}

- (void)setShouldHaveRightImage:(BOOL)image
{
  if (self->_shouldHaveRightImage != image)
  {
    self->_shouldHaveRightImage = image;
    [(BKSpreadThumbnailScrubberCell *)self setNeedsLayout];
  }
}

@end