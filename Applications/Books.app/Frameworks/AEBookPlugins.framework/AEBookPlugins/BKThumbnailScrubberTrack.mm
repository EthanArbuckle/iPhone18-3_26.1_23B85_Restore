@interface BKThumbnailScrubberTrack
- (BKThumbnailScrubberTrack)initWithFrame:(CGRect)a3;
- (CGRect)frameForSegmentAtIndex:(int64_t)a3;
- (CGSize)segmentSize;
- (CGSize)sizeForThumbnailCount:(unint64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)cellAtIndex:(unint64_t)a3;
- (void)deleteAllCells;
- (void)layoutSubviews;
- (void)setCellClass:(Class)a3;
- (void)setSegmentCount:(int64_t)a3;
- (void)setSegmentSize:(CGSize)a3;
@end

@implementation BKThumbnailScrubberTrack

- (BKThumbnailScrubberTrack)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = BKThumbnailScrubberTrack;
  v3 = [(BKThumbnailScrubberTrack *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    [(BKThumbnailScrubberTrack *)v3 setCellClass:objc_opt_class()];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if ([(BKThumbnailScrubberTrack *)self trackOrientation:a3.width])
  {
    v5 = [(BKThumbnailScrubberTrack *)self segmentCount];
    [(BKThumbnailScrubberTrack *)self segmentSize];
    v7 = v6 * v5;
  }

  else
  {
    v8 = [(BKThumbnailScrubberTrack *)self segmentCount];
    [(BKThumbnailScrubberTrack *)self segmentSize];
    width = v8 * (v9 + 2.0) + -2.0;
    [(BKThumbnailScrubberTrack *)self segmentSize];
  }

  v10 = width;
  result.height = v7;
  result.width = v10;
  return result;
}

- (CGSize)sizeForThumbnailCount:(unint64_t)a3
{
  if ([(BKThumbnailScrubberTrack *)self trackOrientation])
  {
    [(BKThumbnailScrubberTrack *)self segmentSize];
    v6 = v5;
    [(BKThumbnailScrubberTrack *)self segmentSize];
    v8 = v7 * a3;
  }

  else
  {
    [(BKThumbnailScrubberTrack *)self segmentSize];
    v6 = a3 * (v9 + 2.0) + -2.0;
    [(BKThumbnailScrubberTrack *)self segmentSize];
  }

  v10 = v6;
  result.height = v8;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = BKThumbnailScrubberTrack;
  [(BKThumbnailScrubberTrack *)&v10 layoutSubviews];
  v3 = [(BKThumbnailScrubberTrack *)self subviews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(BKThumbnailScrubberTrack *)self subviews];
      v7 = [v6 objectAtIndex:v5];

      [(BKThumbnailScrubberTrack *)self frameForSegmentAtIndex:v5];
      [v7 setFrame:?];

      ++v5;
      v8 = [(BKThumbnailScrubberTrack *)self subviews];
      v9 = [v8 count];
    }

    while (v5 < v9);
  }
}

- (CGRect)frameForSegmentAtIndex:(int64_t)a3
{
  [(BKThumbnailScrubberTrack *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(BKThumbnailScrubberTrack *)self segmentSize];
  v14 = v13;
  v16 = v15;
  v27.origin.x = v6;
  v27.origin.y = v8;
  v27.size.width = v10;
  v27.size.height = v12;
  Width = CGRectGetWidth(v27);
  v18 = [(BKThumbnailScrubberTrack *)self segmentCount];
  v19 = 0.0;
  if ([(BKThumbnailScrubberTrack *)self trackOrientation]!= 1)
  {
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    v19 = round((CGRectGetHeight(v28) - v16) * 0.5);
  }

  v20 = round((Width - v18 * (v14 + 2.0)) * 0.5);
  if (v20 >= 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = [(BKThumbnailScrubberTrack *)self trackOrientation];
  v23 = v19 + a3 * v16;
  v24 = v21 + a3 * (v14 + 2.0);
  if (v22 == 1)
  {
    v24 = v21;
  }

  else
  {
    v23 = v19;
  }

  v25 = v14;
  v26 = v16;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v23;
  result.origin.x = v24;
  return result;
}

- (id)cellAtIndex:(unint64_t)a3
{
  v5 = [(BKThumbnailScrubberTrack *)self subviews];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(BKThumbnailScrubberTrack *)self subviews];
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (void)deleteAllCells
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(BKThumbnailScrubberTrack *)self subviews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) removeFromSuperview];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setCellClass:(Class)a3
{
  if (self->_cellClass != a3)
  {
    self->_cellClass = a3;
    [(BKThumbnailScrubberTrack *)self deleteAllCells];
  }
}

- (void)setSegmentSize:(CGSize)a3
{
  if (self->_segmentSize.width != a3.width || self->_segmentSize.height != a3.height)
  {
    self->_segmentSize = a3;
  }
}

- (void)setSegmentCount:(int64_t)a3
{
  if (self->_segmentCount != a3 || (-[BKThumbnailScrubberTrack subviews](self, "subviews"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 != a3))
  {
    self->_segmentCount = a3;
    [(BKThumbnailScrubberTrack *)self segmentSize];
    v8 = v7;
    v10 = v9;
    v11 = [(BKThumbnailScrubberTrack *)self subviews];
    v12 = [v11 count];

    if (v12 > a3)
    {
      v13 = [(BKThumbnailScrubberTrack *)self subviews];
      v14 = [v13 count];

      for (i = v14 - 1; i >= a3; --i)
      {
        v16 = [(BKThumbnailScrubberTrack *)self subviews];
        v17 = [v16 objectAtIndex:i];

        [v17 removeFromSuperview];
      }

      [(BKThumbnailScrubberTrack *)self setNeedsLayout];
    }

    v18 = [(BKThumbnailScrubberTrack *)self subviews];
    v19 = [v18 count];

    if (v19 < a3)
    {
      v20 = [(BKThumbnailScrubberTrack *)self subviews];
      v21 = [v20 count];

      v22 = __OFSUB__(a3, v21);
      v23 = a3 - v21;
      if (!((v23 < 0) ^ v22 | (v23 == 0)))
      {
        do
        {
          v24 = [objc_alloc(-[BKThumbnailScrubberTrack cellClass](self "cellClass"))];
          v25 = [(BKThumbnailScrubberTrack *)self segmentStrokeColor];
          [v24 setStrokeColor:v25];

          [(BKThumbnailScrubberTrack *)self addSubview:v24];
          --v23;
        }

        while (v23);
      }

      [(BKThumbnailScrubberTrack *)self setNeedsLayout];
    }
  }
}

- (CGSize)segmentSize
{
  width = self->_segmentSize.width;
  height = self->_segmentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end