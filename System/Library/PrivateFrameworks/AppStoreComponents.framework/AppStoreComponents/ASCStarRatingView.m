@interface ASCStarRatingView
- (ASCStarRatingView)initWithCoder:(id)a3;
- (ASCStarRatingView)initWithFrame:(CGRect)a3;
- (ASCStarRatingView)initWithMaxNumberOfStars:(int64_t)a3 starSize:(int64_t)a4 andFill:(BOOL)a5;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeWithStarSize:(int64_t)a3 andNumberOfStars:(int64_t)a4;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (id)accessibilityLabel;
- (void)layoutSubviews;
- (void)setRating:(double)a3;
@end

@implementation ASCStarRatingView

- (ASCStarRatingView)initWithMaxNumberOfStars:(int64_t)a3 starSize:(int64_t)a4 andFill:(BOOL)a5
{
  v18.receiver = self;
  v18.super_class = ASCStarRatingView;
  v7 = [(ASCStarRatingView *)&v18 initWithFrame:a3, a4, a5, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7->_rating = 0.0;
  v7->_maxNumberOfStars = a3;
  v7->_starSize = a4;
  v8 = [ASCStarRow alloc];
  v9 = [MEMORY[0x277D75348] grayColor];
  v10 = a3;
  v11 = [(ASCStarRow *)v8 initWithStarSize:a4 fill:1 starColor:v9 andMaxNumberOfStars:a3];
  filledStarRowView = v7->_filledStarRowView;
  v7->_filledStarRowView = v11;

  v13 = [ASCStarRow alloc];
  v14 = [MEMORY[0x277D75348] grayColor];
  v15 = [(ASCStarRow *)v13 initWithStarSize:a4 fill:0 starColor:v14 andMaxNumberOfStars:v10];
  hollowStarRowView = v7->_hollowStarRowView;
  v7->_hollowStarRowView = v15;

  [(ASCStarRow *)v7->_filledStarRowView setNumberOfStarsInRow:v7->_rating];
  [(ASCStarRow *)v7->_hollowStarRowView setNumberOfStarsInRow:v7->_maxNumberOfStars];
  [(ASCStarRatingView *)v7 addSubview:v7->_filledStarRowView];
  [(ASCStarRatingView *)v7 addSubview:v7->_hollowStarRowView];
  return v7;
}

- (ASCStarRatingView)initWithFrame:(CGRect)a3
{
  [(ASCStarRatingView *)self doesNotRecognizeSelector:a2, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return 0;
}

- (ASCStarRatingView)initWithCoder:(id)a3
{
  [(ASCStarRatingView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRating:(double)a3
{
  if (self->_rating != a3)
  {
    maxNumberOfStars = 0.0;
    if (a3 >= 0.0)
    {
      maxNumberOfStars = self->_maxNumberOfStars;
      if (maxNumberOfStars >= a3)
      {
        maxNumberOfStars = a3;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(ASCStarRatingView *)self sizeWithStarSize:self->_starSize andNumberOfStars:self->_maxNumberOfStars, a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  v4 = [(ASCStarRatingView *)self sizeThatFits:a4, a3.width, a3.height];

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

- (CGSize)sizeWithStarSize:(int64_t)a3 andNumberOfStars:(int64_t)a4
{
  [ASCStarRow sizeForStarRowWithSizeOfStar:a3 andNumberOfStars:a4];
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