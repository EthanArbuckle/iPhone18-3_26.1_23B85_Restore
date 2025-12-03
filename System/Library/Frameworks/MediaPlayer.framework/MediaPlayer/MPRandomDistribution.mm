@interface MPRandomDistribution
- (MPRandomDistribution)init;
- (MPRandomDistribution)initWithCoder:(id)coder;
- (MPRandomDistribution)initWithRandomSource:(id)source lowestValue:(int64_t)value highestValue:(int64_t)highestValue;
- (unint64_t)nextIntWithUpperBound:(unint64_t)bound;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPRandomDistribution

- (unint64_t)nextIntWithUpperBound:(unint64_t)bound
{
  v18[3] = *MEMORY[0x1E69E9840];
  lowestValue = self->_lowestValue;
  v4 = lowestValue & ~(lowestValue >> 63);
  if (v4 > bound)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v17[0] = @"lowestInclusive";
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:lowestValue];
    v18[0] = v11;
    v17[1] = @"highestInclusive";
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_highestValue];
    v18[1] = v12;
    v17[2] = @"upper";
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bound];
    v18[2] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v15 = [v7 exceptionWithName:v8 reason:@"upper bound provided is less than lowestInclusive" userInfo:v14];
    v16 = v15;

    objc_exception_throw(v15);
  }

  v5 = self->_highestValue & ~(self->_highestValue >> 63);
  if (v5 >= bound - 1)
  {
    v5 = bound - 1;
  }

  return [(MPRandom *)self->_source nextIntWithUpperBound:v5 - lowestValue + 1]+ v4;
}

- (void)encodeWithCoder:(id)coder
{
  source = self->_source;
  coderCopy = coder;
  [coderCopy encodeObject:source forKey:@"source"];
  [coderCopy encodeInteger:self->_lowestValue forKey:@"lowest"];
  [coderCopy encodeInteger:self->_highestValue forKey:@"highest"];
}

- (MPRandomDistribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v6 = [coderCopy decodeIntegerForKey:@"lowest"];
  v7 = [coderCopy decodeIntegerForKey:@"highest"];

  v8 = [(MPRandomDistribution *)self initWithRandomSource:v5 lowestValue:v6 highestValue:v7];
  return v8;
}

- (MPRandomDistribution)initWithRandomSource:(id)source lowestValue:(int64_t)value highestValue:(int64_t)highestValue
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = MPRandomDistribution;
  v10 = [(MPRandomDistribution *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_source, source);
    v11->_lowestValue = value;
    v11->_highestValue = highestValue;
  }

  return v11;
}

- (MPRandomDistribution)init
{
  v3 = objc_alloc_init(MPARC4RandomSource);
  v4 = [(MPRandomDistribution *)self initWithRandomSource:v3 lowestValue:0 highestValue:0];

  return v4;
}

@end