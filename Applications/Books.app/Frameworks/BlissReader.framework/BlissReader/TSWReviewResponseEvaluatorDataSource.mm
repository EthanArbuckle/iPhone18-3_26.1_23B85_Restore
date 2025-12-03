@interface TSWReviewResponseEvaluatorDataSource
- (TSWReviewResponseEvaluatorDataSource)initWithResponse:(id)response;
- (double)fractionForChoiceIndex:(unint64_t)index;
- (void)addFraction:(double)fraction;
- (void)dealloc;
@end

@implementation TSWReviewResponseEvaluatorDataSource

- (TSWReviewResponseEvaluatorDataSource)initWithResponse:(id)response
{
  v6.receiver = self;
  v6.super_class = TSWReviewResponseEvaluatorDataSource;
  v4 = [(TSWReviewResponseEvaluatorDataSource *)&v6 init];
  if (v4)
  {
    v4->_response = response;
    v4->_fractions = objc_alloc_init(NSMutableArray);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWReviewResponseEvaluatorDataSource;
  [(TSWReviewResponseEvaluatorDataSource *)&v3 dealloc];
}

- (void)addFraction:(double)fraction
{
  fractions = self->_fractions;
  *&fraction = fraction;
  v4 = [NSNumber numberWithFloat:fraction];

  [(NSMutableArray *)fractions addObject:v4];
}

- (double)fractionForChoiceIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self->_fractions count];
  result = 0.0;
  if (v5 > index)
  {
    [-[NSMutableArray objectAtIndex:](self->_fractions objectAtIndex:{index, 0.0), "floatValue"}];
    return v7;
  }

  return result;
}

@end