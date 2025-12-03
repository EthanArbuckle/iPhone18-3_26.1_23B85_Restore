@interface BKThumbnailScrubberTrack
- (BKThumbnailScrubberTrack)initWithFrame:(CGRect)frame;
- (CGRect)frameForSegmentAtIndex:(int64_t)index;
- (CGSize)segmentSize;
- (CGSize)sizeForThumbnailCount:(unint64_t)count;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)cellAtIndex:(unint64_t)index;
- (void)deleteAllCells;
- (void)layoutSubviews;
- (void)setCellClass:(Class)class;
- (void)setSegmentCount:(int64_t)count;
- (void)setSegmentSize:(CGSize)size;
@end

@implementation BKThumbnailScrubberTrack

- (BKThumbnailScrubberTrack)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = BKThumbnailScrubberTrack;
  v3 = [(BKThumbnailScrubberTrack *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    [(BKThumbnailScrubberTrack *)v3 setCellClass:objc_opt_class()];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if ([(BKThumbnailScrubberTrack *)self trackOrientation:fits.width])
  {
    segmentCount = [(BKThumbnailScrubberTrack *)self segmentCount];
    [(BKThumbnailScrubberTrack *)self segmentSize];
    v7 = v6 * segmentCount;
  }

  else
  {
    segmentCount2 = [(BKThumbnailScrubberTrack *)self segmentCount];
    [(BKThumbnailScrubberTrack *)self segmentSize];
    width = segmentCount2 * (v9 + 2.0) + -2.0;
    [(BKThumbnailScrubberTrack *)self segmentSize];
  }

  v10 = width;
  result.height = v7;
  result.width = v10;
  return result;
}

- (CGSize)sizeForThumbnailCount:(unint64_t)count
{
  if ([(BKThumbnailScrubberTrack *)self trackOrientation])
  {
    [(BKThumbnailScrubberTrack *)self segmentSize];
    v6 = v5;
    [(BKThumbnailScrubberTrack *)self segmentSize];
    v8 = v7 * count;
  }

  else
  {
    [(BKThumbnailScrubberTrack *)self segmentSize];
    v6 = count * (v9 + 2.0) + -2.0;
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
  subviews = [(BKThumbnailScrubberTrack *)self subviews];
  v4 = [subviews count];

  if (v4)
  {
    v5 = 0;
    do
    {
      subviews2 = [(BKThumbnailScrubberTrack *)self subviews];
      v7 = [subviews2 objectAtIndex:v5];

      [(BKThumbnailScrubberTrack *)self frameForSegmentAtIndex:v5];
      [v7 setFrame:?];

      ++v5;
      subviews3 = [(BKThumbnailScrubberTrack *)self subviews];
      v9 = [subviews3 count];
    }

    while (v5 < v9);
  }
}

- (CGRect)frameForSegmentAtIndex:(int64_t)index
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
  segmentCount = [(BKThumbnailScrubberTrack *)self segmentCount];
  v19 = 0.0;
  if ([(BKThumbnailScrubberTrack *)self trackOrientation]!= 1)
  {
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    v19 = round((CGRectGetHeight(v28) - v16) * 0.5);
  }

  v20 = round((Width - segmentCount * (v14 + 2.0)) * 0.5);
  if (v20 >= 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  trackOrientation = [(BKThumbnailScrubberTrack *)self trackOrientation];
  v23 = v19 + index * v16;
  v24 = v21 + index * (v14 + 2.0);
  if (trackOrientation == 1)
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

- (id)cellAtIndex:(unint64_t)index
{
  subviews = [(BKThumbnailScrubberTrack *)self subviews];
  v6 = [subviews count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    subviews2 = [(BKThumbnailScrubberTrack *)self subviews];
    v8 = [subviews2 objectAtIndex:index];
  }

  return v8;
}

- (void)deleteAllCells
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  subviews = [(BKThumbnailScrubberTrack *)self subviews];
  v3 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v7 + 1) + 8 * v6) removeFromSuperview];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setCellClass:(Class)class
{
  if (self->_cellClass != class)
  {
    self->_cellClass = class;
    [(BKThumbnailScrubberTrack *)self deleteAllCells];
  }
}

- (void)setSegmentSize:(CGSize)size
{
  if (self->_segmentSize.width != size.width || self->_segmentSize.height != size.height)
  {
    self->_segmentSize = size;
  }
}

- (void)setSegmentCount:(int64_t)count
{
  if (self->_segmentCount != count || (-[BKThumbnailScrubberTrack subviews](self, "subviews"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 != count))
  {
    self->_segmentCount = count;
    [(BKThumbnailScrubberTrack *)self segmentSize];
    v8 = v7;
    v10 = v9;
    subviews = [(BKThumbnailScrubberTrack *)self subviews];
    v12 = [subviews count];

    if (v12 > count)
    {
      subviews2 = [(BKThumbnailScrubberTrack *)self subviews];
      v14 = [subviews2 count];

      for (i = v14 - 1; i >= count; --i)
      {
        subviews3 = [(BKThumbnailScrubberTrack *)self subviews];
        v17 = [subviews3 objectAtIndex:i];

        [v17 removeFromSuperview];
      }

      [(BKThumbnailScrubberTrack *)self setNeedsLayout];
    }

    subviews4 = [(BKThumbnailScrubberTrack *)self subviews];
    v19 = [subviews4 count];

    if (v19 < count)
    {
      subviews5 = [(BKThumbnailScrubberTrack *)self subviews];
      v21 = [subviews5 count];

      v22 = __OFSUB__(count, v21);
      v23 = count - v21;
      if (!((v23 < 0) ^ v22 | (v23 == 0)))
      {
        do
        {
          v24 = [objc_alloc(-[BKThumbnailScrubberTrack cellClass](self "cellClass"))];
          segmentStrokeColor = [(BKThumbnailScrubberTrack *)self segmentStrokeColor];
          [v24 setStrokeColor:segmentStrokeColor];

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