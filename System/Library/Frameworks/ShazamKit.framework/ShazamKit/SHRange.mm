@interface SHRange
+ (SHRange)rangeWithLowerBound:(double)lowerBound upperBound:(double)upperBound;
- (BOOL)contains:(double)contains;
- (BOOL)isEqualToRange:(id)range withTolerance:(double)tolerance;
- (SHRange)initWithCoder:(id)coder;
- (SHRange)initWithLowerBound:(double)lowerBound upperBound:(double)upperBound;
- (SHRange)initWithSerializedRepresentation:(id)representation;
- (double)duration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)serializedRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHRange

- (SHRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SHRange;
  v5 = [(SHRange *)&v9 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"lowerBound"];
    v5->_lowerBound = v6;
    [coderCopy decodeDoubleForKey:@"upperBound"];
    v5->_upperBound = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(SHRange *)self lowerBound];
  [coderCopy encodeDouble:@"lowerBound" forKey:?];
  [(SHRange *)self upperBound];
  [coderCopy encodeDouble:@"upperBound" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(SHRange *)self lowerBound];
  v6 = v5;
  [(SHRange *)self upperBound];

  return [v4 initWithLowerBound:v6 upperBound:v7];
}

+ (SHRange)rangeWithLowerBound:(double)lowerBound upperBound:(double)upperBound
{
  v4 = [[self alloc] initWithLowerBound:lowerBound upperBound:upperBound];

  return v4;
}

- (SHRange)initWithLowerBound:(double)lowerBound upperBound:(double)upperBound
{
  v12.receiver = self;
  v12.super_class = SHRange;
  result = [(SHRange *)&v12 init];
  if (result)
  {
    if (upperBound < lowerBound)
    {
      v7 = MEMORY[0x277CBEAD8];
      v8 = *MEMORY[0x277CBE658];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"A time range start %f must come before the end %f", *&lowerBound, *&upperBound];
      v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
      v11 = v10;

      objc_exception_throw(v10);
    }

    result->_lowerBound = lowerBound;
    result->_upperBound = upperBound;
  }

  return result;
}

- (SHRange)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy count];
  v6 = MEMORY[0x277CBE660];
  if (v5 != 2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"A range must have a start and end not %@", representationCopy}];
  }

  v7 = [representationCopy objectAtIndexedSubscript:0];
  v8 = [representationCopy objectAtIndexedSubscript:1];
  v9 = v8;
  if (!v7 || !v8)
  {
    [MEMORY[0x277CBEAD8] raise:*v6 format:{@"%@ %@ is not a valid start and end", v7, v8}];
  }

  [v7 doubleValue];
  v11 = v10;
  [v9 doubleValue];
  v13 = [(SHRange *)self initWithLowerBound:v11 upperBound:v12];

  return v13;
}

- (BOOL)isEqualToRange:(id)range withTolerance:(double)tolerance
{
  rangeCopy = range;
  [(SHRange *)self lowerBound];
  v8 = v7;
  [rangeCopy lowerBound];
  if (vabdd_f64(v8, v9) >= tolerance)
  {
    v13 = 0;
  }

  else
  {
    [(SHRange *)self upperBound];
    v11 = v10;
    [rangeCopy upperBound];
    v13 = vabdd_f64(v11, v12) < tolerance;
  }

  return v13;
}

- (id)serializedRepresentation
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  [(SHRange *)self lowerBound];
  v4 = [v3 numberWithDouble:?];
  v10[0] = v4;
  v5 = MEMORY[0x277CCABB0];
  [(SHRange *)self upperBound];
  v6 = [v5 numberWithDouble:?];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)contains:(double)contains
{
  [(SHRange *)self lowerBound];
  if (v5 > contains)
  {
    return 0;
  }

  [(SHRange *)self upperBound];
  return v7 > contains;
}

- (double)duration
{
  [(SHRange *)self upperBound];
  v4 = v3;
  [(SHRange *)self lowerBound];
  return v4 - v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(SHRange *)self lowerBound];
  v5 = v4;
  [(SHRange *)self upperBound];
  return [v3 stringWithFormat:@"(%2.f - %2.f)", v5, v6];
}

@end