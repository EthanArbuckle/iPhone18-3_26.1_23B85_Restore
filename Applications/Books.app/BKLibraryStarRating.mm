@interface BKLibraryStarRating
- (BKLibraryStarRating)initWithFrame:(CGRect)a3;
- (BKLibraryStarRatingDelegate)delegate;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (double)roundRatingForStars:(double)a3;
- (id)accessibilityLabel;
- (id)starForIndex:(int64_t)a3;
- (id)templateStar:(unint64_t)a3;
- (unint64_t)accessibilityTraits;
- (unint64_t)starKindForIndex:(int64_t)a3;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)clearStars;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)setEmptyColor:(id)a3;
- (void)setFillColor:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setFrameColor:(id)a3;
- (void)setIsRTL:(BOOL)a3;
- (void)setRating:(double)a3;
- (void)setRatingWithTouch:(id)a3;
- (void)setupStarShapes;
- (void)tintStarViews;
- (void)updateStars;
@end

@implementation BKLibraryStarRating

- (BKLibraryStarRating)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = BKLibraryStarRating;
  v3 = [(BKLibraryStarRating *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor blackColor];
    fillColor = v3->_fillColor;
    v3->_fillColor = v4;

    v6 = +[UIColor blackColor];
    frameColor = v3->_frameColor;
    v3->_frameColor = v6;

    v8 = +[UIColor grayColor];
    emptyColor = v3->_emptyColor;
    v3->_emptyColor = v8;

    v3->_numberOfStars = 5.0;
    v3->_starSize = 0;
    v3->_allowHalfStars = 1;
  }

  return v3;
}

- (id)templateStar:(unint64_t)a3
{
  v5 = [(BKLibraryStarRating *)self starSize];
  v6 = +[BSUITemplate manager];
  v7 = [v6 imageResourceCache];
  v8 = [(BKLibraryStarRating *)self _screen];
  [v8 scale];
  v9 = [TUIRatingsBox starRatingImage:a3 size:v5 fromCache:v7 withScale:?];

  v10 = [v9 imageWithRenderingMode:2];

  return v10;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(BKLibraryStarRating *)self bounds];
  v9 = v8;
  v11 = v10;
  v23.receiver = self;
  v23.super_class = BKLibraryStarRating;
  [(BKLibraryStarRating *)&v23 setFrame:x, y, width, height];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v12 = CGRectGetWidth(v24);
  if (v12 > 0.0)
  {
    if (v12 >= 3.40282347e38)
    {
      v14 = 0x7FC000007F7FFFFFLL;
    }

    else
    {
      *&v13 = v12;
      v14 = v13 | 0x7FC0000000000000;
    }

    v15 = [TUIRatingsBox sizeFromWidth:v14, 0x1700007FC00000];
    if (v15 != [(BKLibraryStarRating *)self starSize]|| ([(BKLibraryStarRating *)self fullStar], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
      [(BKLibraryStarRating *)self setStarSize:v15];
      v17 = [(BKLibraryStarRating *)self templateStar:0];
      [(BKLibraryStarRating *)self setOutlineStar:v17];

      v18 = [(BKLibraryStarRating *)self templateStar:1];
      [(BKLibraryStarRating *)self setHalfStar:v18];

      if ([(BKLibraryStarRating *)self isRTL])
      {
        v19 = [(BKLibraryStarRating *)self halfStar];
        v20 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v19 CGImage], 4, 1.0);

        v21 = [v20 imageWithRenderingMode:2];

        [(BKLibraryStarRating *)self setHalfStar:v21];
      }

      v22 = [(BKLibraryStarRating *)self templateStar:2];
      [(BKLibraryStarRating *)self setFullStar:v22];
    }

    if (v9 != width || v11 != height)
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      if (CGRectGetHeight(v25) != 0.0)
      {
        [(BKLibraryStarRating *)self updateStars];
      }
    }
  }
}

- (void)setIsRTL:(BOOL)a3
{
  if (self->_isRTL != a3)
  {
    self->_isRTL = a3;
    [(BKLibraryStarRating *)self setupStarShapes];
  }
}

- (unint64_t)starKindForIndex:(int64_t)a3
{
  [(BKLibraryStarRating *)self rating];
  if (v5 <= 0.0)
  {
    return 0;
  }

  v6 = v5;
  v7 = [(BKLibraryStarRating *)self isRTL];
  v8 = 1.0 - v6;
  if (!v7)
  {
    v8 = v6;
  }

  [(BKLibraryStarRating *)self roundRatingForStars:v8];
  v10 = v9;
  [(BKLibraryStarRating *)self numberOfStars];
  v12 = v10 * v11;
  v13 = ceil(v12);
  v14 = floor(v12);
  if ([(BKLibraryStarRating *)self isRTL])
  {
    if (v13 <= a3)
    {
      return 2;
    }

    if (v14 > a3)
    {
      return 0;
    }
  }

  else
  {
    v15 = (a3 + 1);
    if (v14 >= v15)
    {
      return 2;
    }

    if (v13 < v15)
    {
      return 0;
    }
  }

  v16 = fmod(v12, v14);
  if (v14 == 0.0)
  {
    v16 = v12;
  }

  if (v16 > 0.7)
  {
    return 2;
  }

  if (v16 > 0.2)
  {
    if ([(BKLibraryStarRating *)self allowHalfStars])
    {
      return [(BKLibraryStarRating *)self allowHalfStars];
    }

    return 2;
  }

  return 0;
}

- (id)starForIndex:(int64_t)a3
{
  v4 = [(BKLibraryStarRating *)self starKindForIndex:a3];
  if (v4 == 2)
  {
    v5 = [(BKLibraryStarRating *)self fullStar];
  }

  else if (v4 == 1)
  {
    v5 = [(BKLibraryStarRating *)self halfStar];
  }

  else if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(BKLibraryStarRating *)self outlineStar];
  }

  return v5;
}

- (void)setFrameColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_frameColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_frameColor, a3);
    [(BKLibraryStarRating *)self tintStarViews];
  }
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_fillColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_fillColor, a3);
    [(BKLibraryStarRating *)self tintStarViews];
  }
}

- (void)setEmptyColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_emptyColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_emptyColor, a3);
    [(BKLibraryStarRating *)self tintStarViews];
  }
}

- (void)clearStars
{
  v3 = [(BKLibraryStarRating *)self stars];
  [v3 enumerateObjectsUsingBlock:&stru_100A04D30];

  [(BKLibraryStarRating *)self setStars:0];
}

- (void)updateStars
{
  v3 = [(BKLibraryStarRating *)self stars];
  v4 = [v3 count];
  [(BKLibraryStarRating *)self numberOfStars];
  v6 = v5;

  if (v6 != v4)
  {
    [(BKLibraryStarRating *)self setupStarShapes];
  }

  [(BKLibraryStarRating *)self tintStarViews];
}

- (void)tintStarViews
{
  [(BKLibraryStarRating *)self numberOfStars];
  if (v3 > 0.0)
  {
    v4 = 1;
    do
    {
      v5 = [(BKLibraryStarRating *)self starForIndex:v4 - 1];
      if (v5)
      {
        v6 = [(BKLibraryStarRating *)self stars];
        v7 = [v6 objectAtIndexedSubscript:v4 - 1];

        [v7 setImage:v5];
        [(BKLibraryStarRating *)self rating];
        if (v8 == 0.0)
        {
          v9 = [(BKLibraryStarRating *)self emptyColor];
        }

        else
        {
          if ([(BKLibraryStarRating *)self starKindForIndex:v4 - 1])
          {
            [(BKLibraryStarRating *)self fillColor];
          }

          else
          {
            [(BKLibraryStarRating *)self frameColor];
          }
          v9 = ;
        }

        v10 = v9;
        [v7 setTintColor:v9];

        [v7 setNeedsLayout];
      }

      v11 = v4;
      [(BKLibraryStarRating *)self numberOfStars];
      ++v4;
    }

    while (v12 > v11);
  }
}

- (void)setupStarShapes
{
  v3 = [(BKLibraryStarRating *)self stars];
  v4 = [v3 count];
  [(BKLibraryStarRating *)self numberOfStars];
  v6 = v5;

  if (v6 != v4)
  {
    [(BKLibraryStarRating *)self clearStars];
    [(BKLibraryStarRating *)self numberOfStars];
    v8 = [NSMutableArray arrayWithCapacity:v7];
    [(BKLibraryStarRating *)self setStars:v8];

    [(BKLibraryStarRating *)self numberOfStars];
    if (v9 > 0.0)
    {
      v10 = 0;
      v11 = 0.0;
      do
      {
        v12 = [(BKLibraryStarRating *)self starForIndex:v10];
        if (v12)
        {
          v13 = [[UIImageView alloc] initWithImage:v12];
          [TUIRatingsBox spacingForSize:[(BKLibraryStarRating *)self starSize]];
          v15 = v11 + v14 + 20.0;
          [v13 setFrame:{v11, 0.0, 20.0, 20.0}];
          [v13 setContentMode:1];
          v16 = [(BKLibraryStarRating *)self stars];
          [v16 addObject:v13];

          [(BKLibraryStarRating *)self addSubview:v13];
          v11 = v15;
        }

        ++v10;
        [(BKLibraryStarRating *)self numberOfStars];
      }

      while (v17 > v10);
    }

    v18 = [(BKLibraryStarRating *)self stars];
    v19 = [v18 count];

    if (!v19)
    {
      [(BKLibraryStarRating *)self setStars:0];
    }
  }

  [(BKLibraryStarRating *)self frame];
  Width = CGRectGetWidth(v47);
  if (Width > 0.0)
  {
    v21 = Width;
    v22 = [(BKLibraryStarRating *)self stars];
    v23 = [v22 count];
    [(BKLibraryStarRating *)self numberOfStars];
    v25 = v24;

    if (v25 == v23)
    {
      v26 = [(BKLibraryStarRating *)self stars];
      v45 = [v26 firstObject];

      [v45 frame];
      v27 = CGRectGetWidth(v48);
      [(BKLibraryStarRating *)self frame];
      Height = CGRectGetHeight(v49);
      v29 = Height;
      if (v27 >= Height)
      {
        v27 = Height;
      }

      [TUIRatingsBox spacingForSize:[(BKLibraryStarRating *)self starSize]];
      v31 = v30;
      [(BKLibraryStarRating *)self numberOfStars];
      v32 = v31;
      if (v33 > 1.0)
      {
        [(BKLibraryStarRating *)self numberOfStars];
        v35 = v21 - v27 * v34;
        [(BKLibraryStarRating *)self numberOfStars];
        v32 = v35 / (v36 + -1.0);
      }

      [(BKLibraryStarRating *)self numberOfStars];
      if (v37 > 0.0)
      {
        v38 = 0;
        if (v31 >= v32)
        {
          v39 = v32;
        }

        else
        {
          v39 = v31;
        }

        v40 = v27 + v39;
        v41 = 0.0;
        do
        {
          v42 = [(BKLibraryStarRating *)self stars];
          v43 = [v42 objectAtIndexedSubscript:v38];

          [v43 setFrame:{v41, 0.0, v27, v29}];
          ++v38;
          [(BKLibraryStarRating *)self numberOfStars];
          v41 = v40 + v41;
        }

        while (v44 > v38);
      }
    }
  }
}

- (double)roundRatingForStars:(double)a3
{
  if ([(BKLibraryStarRating *)self allowHalfStars])
  {
    v5 = 2.0;
  }

  else
  {
    v5 = 1.0;
  }

  [(BKLibraryStarRating *)self numberOfStars];
  v7 = [NSNumber numberWithInteger:llround(v5 * (v6 * a3))];
  [v7 doubleValue];
  v9 = v8 / v5;

  [(BKLibraryStarRating *)self numberOfStars];
  return v9 / v10;
}

- (void)setRating:(double)a3
{
  [(BKLibraryStarRating *)self roundRatingForStars:a3];
  v5 = v4;
  if (self->_rating != v4)
  {
    self->_rating = v4;
    [(BKLibraryStarRating *)self updateStars];
  }

  if (!qword_100AF7490)
  {
    v6 = objc_alloc_init(NSNumberFormatter);
    v7 = qword_100AF7490;
    qword_100AF7490 = v6;

    [qword_100AF7490 setMinimumFractionDigits:0];
    [qword_100AF7490 setMaximumFractionDigits:1];
  }

  [(BKLibraryStarRating *)self numberOfStars];
  v9 = v5 * v8;
  v10 = qword_100AF7490;
  v11 = [NSNumber numberWithDouble:v9];
  v15 = [v10 stringFromNumber:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"%1$.1f %2$@ star(s)" value:&stru_100A30A68 table:0];

  v14 = [NSString localizedStringWithFormat:v13, *&v9, v15];
  [(BKLibraryStarRating *)self setAccessibilityValue:v14];
}

- (void)setRatingWithTouch:(id)a3
{
  [a3 locationInView:self];
  v5 = v4;
  v7 = v6;
  [(BKLibraryStarRating *)self bounds];
  Width = CGRectGetWidth(v19);
  [(BKLibraryStarRating *)self bounds];
  v18.x = v5;
  v18.y = v7;
  if (CGRectContainsPoint(v20, v18))
  {
    [(BKLibraryStarRating *)self numberOfStars];
    v10 = 1.0 / v9;
    v11 = v5 / Width;
    v12 = [(BKLibraryStarRating *)self isRTL];
    v13 = 1.0 - v11;
    if (!v12)
    {
      v13 = v11;
    }

    if (v10 >= v13)
    {
      v13 = v10;
    }

    if (v13 > 1.0 - v10)
    {
      v13 = 1.0;
    }

    [(BKLibraryStarRating *)self roundRatingForStars:v13];
    v15 = v14;
    [(BKLibraryStarRating *)self rating];
    if (v16 != v15)
    {

      [(BKLibraryStarRating *)self setRating:v15];
    }
  }
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(BKLibraryStarRating *)self bounds];
  if (CGRectGetWidth(v9) <= 0.0 || ([(BKLibraryStarRating *)self numberOfStars], v6 <= 0.0))
  {
    v7 = 0;
  }

  else
  {
    [(BKLibraryStarRating *)self setRatingWithTouch:v5];
    v7 = 1;
  }

  return v7;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  [(BKLibraryStarRating *)self setRatingWithTouch:a3, a4];
  v5 = [(BKLibraryStarRating *)self delegate];
  [(BKLibraryStarRating *)self rating];
  [v5 starRatingDidChange:self rating:?];
}

- (id)accessibilityLabel
{
  v2 = qword_100AF7498;
  if (!qword_100AF7498)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Rating" value:&stru_100A30A68 table:0];
    v5 = qword_100AF7498;
    qword_100AF7498 = v4;

    v2 = qword_100AF7498;
  }

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v2 = UIAccessibilityTraitNone;
  v3 = [(BKLibraryStarRating *)self isEnabled];
  v4 = UIAccessibilityTraitAdjustable;
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (void)accessibilityIncrement
{
  [(BKLibraryStarRating *)self numberOfStars];
  if (v3 > 0.0)
  {
    [(BKLibraryStarRating *)self numberOfStars];
    v5 = 1.0 / v4;
    [(BKLibraryStarRating *)self rating];
    [(BKLibraryStarRating *)self roundRatingForStars:?];
    v7 = v5 + v6;
    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    [(BKLibraryStarRating *)self setRating:v7];
    v8 = [(BKLibraryStarRating *)self delegate];
    [(BKLibraryStarRating *)self rating];
    [v8 starRatingDidChange:self rating:?];
  }
}

- (void)accessibilityDecrement
{
  [(BKLibraryStarRating *)self numberOfStars];
  if (v3 > 0.0)
  {
    [(BKLibraryStarRating *)self numberOfStars];
    v5 = 1.0 / v4;
    [(BKLibraryStarRating *)self rating];
    [(BKLibraryStarRating *)self roundRatingForStars:?];
    v7 = v6 - v5;
    if (v5 >= v7)
    {
      v7 = v5;
    }

    [(BKLibraryStarRating *)self setRating:v7];
    v8 = [(BKLibraryStarRating *)self delegate];
    [(BKLibraryStarRating *)self rating];
    [v8 starRatingDidChange:self rating:?];
  }
}

- (BKLibraryStarRatingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end