@interface MPRandomDistribution
- (MPRandomDistribution)init;
- (MPRandomDistribution)initWithCoder:(id)a3;
- (MPRandomDistribution)initWithRandomSource:(id)a3 lowestValue:(int64_t)a4 highestValue:(int64_t)a5;
- (unint64_t)nextIntWithUpperBound:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPRandomDistribution

- (unint64_t)nextIntWithUpperBound:(unint64_t)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  lowestValue = self->_lowestValue;
  v4 = lowestValue & ~(lowestValue >> 63);
  if (v4 > a3)
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
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v18[2] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v15 = [v7 exceptionWithName:v8 reason:@"upper bound provided is less than lowestInclusive" userInfo:v14];
    v16 = v15;

    objc_exception_throw(v15);
  }

  v5 = self->_highestValue & ~(self->_highestValue >> 63);
  if (v5 >= a3 - 1)
  {
    v5 = a3 - 1;
  }

  return [(MPRandom *)self->_source nextIntWithUpperBound:v5 - lowestValue + 1]+ v4;
}

- (void)encodeWithCoder:(id)a3
{
  source = self->_source;
  v5 = a3;
  [v5 encodeObject:source forKey:@"source"];
  [v5 encodeInteger:self->_lowestValue forKey:@"lowest"];
  [v5 encodeInteger:self->_highestValue forKey:@"highest"];
}

- (MPRandomDistribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v6 = [v4 decodeIntegerForKey:@"lowest"];
  v7 = [v4 decodeIntegerForKey:@"highest"];

  v8 = [(MPRandomDistribution *)self initWithRandomSource:v5 lowestValue:v6 highestValue:v7];
  return v8;
}

- (MPRandomDistribution)initWithRandomSource:(id)a3 lowestValue:(int64_t)a4 highestValue:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = MPRandomDistribution;
  v10 = [(MPRandomDistribution *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_source, a3);
    v11->_lowestValue = a4;
    v11->_highestValue = a5;
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