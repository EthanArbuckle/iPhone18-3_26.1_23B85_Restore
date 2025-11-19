@interface PKFloatRange
- (BOOL)isEqual:(id)a3;
- (PKFloatRange)initWithLowerBound:(CGFloat)lowerBound upperBound:(CGFloat)upperBound;
- (id)description;
@end

@implementation PKFloatRange

- (PKFloatRange)initWithLowerBound:(CGFloat)lowerBound upperBound:(CGFloat)upperBound
{
  v7.receiver = self;
  v7.super_class = PKFloatRange;
  result = [(PKFloatRange *)&v7 init];
  result->_lowerBound = lowerBound;
  result->_upperBound = upperBound;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = objc_opt_class(), v5 == objc_opt_class()) && (-[PKFloatRange lowerBound](self, "lowerBound"), v9 = v8, [v4 lowerBound], v9 == v10))
  {
    [(PKFloatRange *)self upperBound];
    v12 = v11;
    [v4 upperBound];
    v6 = v12 == v13;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PKFloatRange *)self lowerBound];
  v7 = v6;
  [(PKFloatRange *)self upperBound];
  v9 = [v3 stringWithFormat:@"<%@: %p %0.2f->%0.2f>", v5, self, v7, v8];

  return v9;
}

@end