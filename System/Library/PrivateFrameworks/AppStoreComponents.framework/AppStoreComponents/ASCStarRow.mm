@interface ASCStarRow
+ (CGSize)sizeForStarRowWithSizeOfStar:(int64_t)star andNumberOfStars:(double)stars;
+ (id)starForSize:(int64_t)size withFill:(BOOL)fill;
- (ASCStarRow)initWithCoder:(id)coder;
- (ASCStarRow)initWithFrame:(CGRect)frame;
- (ASCStarRow)initWithStarSize:(int64_t)size fill:(BOOL)fill starColor:(id)color andMaxNumberOfStars:(double)stars;
- (CGRect)frameForCurrentRating:(double)rating andStarSize:(int64_t)size;
- (void)modifyStarLayerRectToHideOuterPaddingUsing:(id)using;
- (void)setNumberOfStarsInRow:(double)row;
@end

@implementation ASCStarRow

- (ASCStarRow)initWithStarSize:(int64_t)size fill:(BOOL)fill starColor:(id)color andMaxNumberOfStars:(double)stars
{
  fillCopy = fill;
  colorCopy = color;
  [(ASCStarRow *)self frameForCurrentRating:self->_starSize andStarSize:stars];
  v27.receiver = self;
  v27.super_class = ASCStarRow;
  v11 = [(ASCStarRow *)&v27 initWithFrame:?];
  v11->_starSize = size;
  v11->_maxNumberOfStars = stars;
  v11->_numberOfStarsInRow = stars;
  v12 = [ASCStarRow starForSize:size withFill:fillCopy];
  v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
  starImageView = v11->_starImageView;
  v11->_starImageView = v13;

  v15 = objc_alloc_init(MEMORY[0x277CD9F48]);
  starLayer = v11->_starLayer;
  v11->_starLayer = v15;

  [(CAReplicatorLayer *)v11->_starLayer setInstanceCount:stars];
  v17 = v11->_starLayer;
  [(UIImageView *)v11->_starImageView frame];
  CATransform3DMakeTranslation(&v26, v18, 0.0, 0.0);
  [(CAReplicatorLayer *)v17 setInstanceTransform:&v26];
  [(CAReplicatorLayer *)v11->_starLayer setMasksToBounds:1];
  [(UIImageView *)v11->_starImageView setTintColor:colorCopy];
  v19 = v11->_starLayer;
  layer = [(UIImageView *)v11->_starImageView layer];
  [(CAReplicatorLayer *)v19 addSublayer:layer];

  [(ASCStarRow *)v11 modifyStarLayerRectToHideOuterPaddingUsing:v12];
  starColor = v11->_starColor;
  v11->_starColor = colorCopy;
  v22 = colorCopy;

  layer2 = [(ASCStarRow *)v11 layer];
  [layer2 addSublayer:v11->_starLayer];

  layer3 = [(ASCStarRow *)v11 layer];
  [layer3 setMasksToBounds:1];

  return v11;
}

- (ASCStarRow)initWithFrame:(CGRect)frame
{
  [(ASCStarRow *)self doesNotRecognizeSelector:a2, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return 0;
}

- (ASCStarRow)initWithCoder:(id)coder
{
  [(ASCStarRow *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setNumberOfStarsInRow:(double)row
{
  [(ASCStarRow *)self frameForCurrentRating:self->_starSize andStarSize:row];
  [(CAReplicatorLayer *)self->_starLayer setFrame:?];
  image = [(UIImageView *)self->_starImageView image];
  [(ASCStarRow *)self modifyStarLayerRectToHideOuterPaddingUsing:image];
}

+ (CGSize)sizeForStarRowWithSizeOfStar:(int64_t)star andNumberOfStars:(double)stars
{
  v5 = [self starForSize:star withFill:1];
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

  v18 = v11 * stars + 2.0;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

+ (id)starForSize:(int64_t)size withFill:(BOOL)fill
{
  fillCopy = fill;
  v5 = 0.0;
  if (size <= 3)
  {
    v5 = dbl_2157B28B8[size];
  }

  v6 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:2 scale:v5];
  if (fillCopy)
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

- (void)modifyStarLayerRectToHideOuterPaddingUsing:(id)using
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

- (CGRect)frameForCurrentRating:(double)rating andStarSize:(int64_t)size
{
  [ASCStarRow sizeForStarRowWithSizeOfStar:self->_starSize andNumberOfStars:rating];
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