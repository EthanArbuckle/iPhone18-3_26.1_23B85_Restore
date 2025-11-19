@interface ASCStarRow
+ (CGSize)sizeForStarRowWithSizeOfStar:(int64_t)a3 andNumberOfStars:(double)a4;
+ (id)starForSize:(int64_t)a3 withFill:(BOOL)a4;
- (ASCStarRow)initWithCoder:(id)a3;
- (ASCStarRow)initWithFrame:(CGRect)a3;
- (ASCStarRow)initWithStarSize:(int64_t)a3 fill:(BOOL)a4 starColor:(id)a5 andMaxNumberOfStars:(double)a6;
- (CGRect)frameForCurrentRating:(double)a3 andStarSize:(int64_t)a4;
- (void)modifyStarLayerRectToHideOuterPaddingUsing:(id)a3;
- (void)setNumberOfStarsInRow:(double)a3;
@end

@implementation ASCStarRow

- (ASCStarRow)initWithStarSize:(int64_t)a3 fill:(BOOL)a4 starColor:(id)a5 andMaxNumberOfStars:(double)a6
{
  v7 = a4;
  v10 = a5;
  [(ASCStarRow *)self frameForCurrentRating:self->_starSize andStarSize:a6];
  v27.receiver = self;
  v27.super_class = ASCStarRow;
  v11 = [(ASCStarRow *)&v27 initWithFrame:?];
  v11->_starSize = a3;
  v11->_maxNumberOfStars = a6;
  v11->_numberOfStarsInRow = a6;
  v12 = [ASCStarRow starForSize:a3 withFill:v7];
  v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
  starImageView = v11->_starImageView;
  v11->_starImageView = v13;

  v15 = objc_alloc_init(MEMORY[0x277CD9F48]);
  starLayer = v11->_starLayer;
  v11->_starLayer = v15;

  [(CAReplicatorLayer *)v11->_starLayer setInstanceCount:a6];
  v17 = v11->_starLayer;
  [(UIImageView *)v11->_starImageView frame];
  CATransform3DMakeTranslation(&v26, v18, 0.0, 0.0);
  [(CAReplicatorLayer *)v17 setInstanceTransform:&v26];
  [(CAReplicatorLayer *)v11->_starLayer setMasksToBounds:1];
  [(UIImageView *)v11->_starImageView setTintColor:v10];
  v19 = v11->_starLayer;
  v20 = [(UIImageView *)v11->_starImageView layer];
  [(CAReplicatorLayer *)v19 addSublayer:v20];

  [(ASCStarRow *)v11 modifyStarLayerRectToHideOuterPaddingUsing:v12];
  starColor = v11->_starColor;
  v11->_starColor = v10;
  v22 = v10;

  v23 = [(ASCStarRow *)v11 layer];
  [v23 addSublayer:v11->_starLayer];

  v24 = [(ASCStarRow *)v11 layer];
  [v24 setMasksToBounds:1];

  return v11;
}

- (ASCStarRow)initWithFrame:(CGRect)a3
{
  [(ASCStarRow *)self doesNotRecognizeSelector:a2, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return 0;
}

- (ASCStarRow)initWithCoder:(id)a3
{
  [(ASCStarRow *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setNumberOfStarsInRow:(double)a3
{
  [(ASCStarRow *)self frameForCurrentRating:self->_starSize andStarSize:a3];
  [(CAReplicatorLayer *)self->_starLayer setFrame:?];
  v4 = [(UIImageView *)self->_starImageView image];
  [(ASCStarRow *)self modifyStarLayerRectToHideOuterPaddingUsing:v4];
}

+ (CGSize)sizeForStarRowWithSizeOfStar:(int64_t)a3 andNumberOfStars:(double)a4
{
  v5 = [a1 starForSize:a3 withFill:1];
  [v5 alignmentRectInsets];
  v7 = v6;
  [v5 alignmentRectInsets];
  v9 = v7 + v8;
  [v5 size];
  v11 = v10 - v9;
  [v5 alignmentRectInsets];
  v13 = v12;
  [v5 alignmentRectInsets];
  v15 = v13 + v14;
  [v5 size];
  v17 = v16 - v15;

  v18 = v11 * a4 + 2.0;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

+ (id)starForSize:(int64_t)a3 withFill:(BOOL)a4
{
  v4 = a4;
  v5 = 0.0;
  if (a3 <= 3)
  {
    v5 = dbl_2157B28B8[a3];
  }

  v6 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:2 scale:v5];
  if (v4)
  {
    v7 = @"star.fill";
  }

  else
  {
    v7 = @"star";
  }

  v8 = [ASCImageRenderer systemImageNamed:v7 compatibleWithTraitCollection:0];
  v9 = [v8 imageByApplyingSymbolConfiguration:v6];

  return v9;
}

- (void)modifyStarLayerRectToHideOuterPaddingUsing:(id)a3
{
  [(CAReplicatorLayer *)self->_starLayer frame];
  v5 = v4;
  [(CAReplicatorLayer *)self->_starLayer frame];
  v7 = v6;
  [(CAReplicatorLayer *)self->_starLayer frame];
  v9 = v8;
  [(CAReplicatorLayer *)self->_starLayer frame];
  starLayer = self->_starLayer;

  [(CAReplicatorLayer *)starLayer setFrame:v5, v7, v9];
}

- (CGRect)frameForCurrentRating:(double)a3 andStarSize:(int64_t)a4
{
  [ASCStarRow sizeForStarRowWithSizeOfStar:self->_starSize andNumberOfStars:a3];
  v5 = v4;
  v7 = v6;
  v8 = 0.0;
  v9 = 0.0;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

@end