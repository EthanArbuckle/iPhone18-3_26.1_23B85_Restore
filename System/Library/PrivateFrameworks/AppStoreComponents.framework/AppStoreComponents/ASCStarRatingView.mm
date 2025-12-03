@interface ASCStarRatingView
- (ASCStarRatingView)initWithCoder:(id)coder;
- (ASCStarRatingView)initWithFrame:(CGRect)frame;
- (ASCStarRatingView)initWithMaxNumberOfStars:(int64_t)stars starSize:(int64_t)size andFill:(BOOL)fill;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeWithStarSize:(int64_t)size andNumberOfStars:(int64_t)stars;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (id)accessibilityLabel;
- (void)layoutSubviews;
- (void)setRating:(double)rating;
@end

@implementation ASCStarRatingView

- (ASCStarRatingView)initWithMaxNumberOfStars:(int64_t)stars starSize:(int64_t)size andFill:(BOOL)fill
{
  v18.receiver = self;
  v18.super_class = ASCStarRatingView;
  v7 = [(ASCStarRatingView *)&v18 initWithFrame:stars, size, fill, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7->_rating = 0.0;
  v7->_maxNumberOfStars = stars;
  v7->_starSize = size;
  v8 = [ASCStarRow alloc];
  grayColor = [MEMORY[0x277D75348] grayColor];
  starsCopy = stars;
  v11 = [(ASCStarRow *)v8 initWithStarSize:size fill:1 starColor:grayColor andMaxNumberOfStars:stars];
  filledStarRowView = v7->_filledStarRowView;
  v7->_filledStarRowView = v11;

  v13 = [ASCStarRow alloc];
  grayColor2 = [MEMORY[0x277D75348] grayColor];
  v15 = [(ASCStarRow *)v13 initWithStarSize:size fill:0 starColor:grayColor2 andMaxNumberOfStars:starsCopy];
  hollowStarRowView = v7->_hollowStarRowView;
  v7->_hollowStarRowView = v15;

  [(ASCStarRow *)v7->_filledStarRowView setNumberOfStarsInRow:v7->_rating];
  [(ASCStarRow *)v7->_hollowStarRowView setNumberOfStarsInRow:v7->_maxNumberOfStars];
  [(ASCStarRatingView *)v7 addSubview:v7->_filledStarRowView];
  [(ASCStarRatingView *)v7 addSubview:v7->_hollowStarRowView];
  return v7;
}

- (ASCStarRatingView)initWithFrame:(CGRect)frame
{
  [(ASCStarRatingView *)self doesNotRecognizeSelector:a2, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return 0;
}

- (ASCStarRatingView)initWithCoder:(id)coder
{
  [(ASCStarRatingView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRating:(double)rating
{
  if (self->_rating != rating)
  {
    maxNumberOfStars = 0.0;
    if (rating >= 0.0)
    {
      maxNumberOfStars = self->_maxNumberOfStars;
      if (maxNumberOfStars >= rating)
      {
        maxNumberOfStars = rating;
      }
    }

    self->_rating = maxNumberOfStars;
    [(ASCStarRow *)self->_filledStarRowView setNumberOfStarsInRow:?];
  }
}

- (CGSize)intrinsicContentSize
{
  [(ASCStarRatingView *)self sizeThatFits:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(ASCStarRatingView *)self sizeWithStarSize:self->_starSize andNumberOfStars:self->_maxNumberOfStars, fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  v4 = [(ASCStarRatingView *)self sizeThatFits:in, fitting.width, fitting.height];

  MEMORY[0x2821814B0](v4);
  result.var3 = v8;
  result.var2 = v7;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = ASCStarRatingView;
  [(ASCStarRatingView *)&v23 layoutSubviews];
  [(ASCStarRow *)self->_hollowStarRowView frame];
  v4 = v3;
  [(ASCStarRow *)self->_hollowStarRowView frame];
  v6 = v5;
  [(ASCStarRow *)self->_filledStarRowView frame];
  v8 = v7;
  [(ASCStarRow *)self->_filledStarRowView frame];
  [(ASCStarRow *)self->_filledStarRowView setFrame:v4, v6, v8];
  filledStarRowView = self->_filledStarRowView;
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  v20 = *MEMORY[0x277CBF2C0];
  v19 = v20;
  v21 = v18;
  v22 = *(MEMORY[0x277CBF2C0] + 32);
  v17 = v22;
  [(ASCStarRow *)filledStarRowView setTransform:&v20];
  [(ASCStarRow *)self->_hollowStarRowView frame];
  v11 = v10;
  [(ASCStarRow *)self->_hollowStarRowView frame];
  v13 = v12;
  [(ASCStarRow *)self->_filledStarRowView frame];
  v15 = v14;
  [(ASCStarRow *)self->_filledStarRowView frame];
  [(ASCStarRow *)self->_hollowStarRowView setFrame:v11, v13, v15];
  hollowStarRowView = self->_hollowStarRowView;
  v20 = v19;
  v21 = v18;
  v22 = v17;
  [(ASCStarRow *)hollowStarRowView setTransform:&v20];
}

- (CGSize)sizeWithStarSize:(int64_t)size andNumberOfStars:(int64_t)stars
{
  [ASCStarRow sizeForStarRowWithSizeOfStar:size andNumberOfStars:stars];
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)accessibilityLabel
{
  [(ASCStarRatingView *)self rating];
  v3 = v2;

  return ASCAXStarRatingStringForRating(v3);
}

@end