@interface PHASENumericPair
- (PHASENumericPair)init;
- (PHASENumericPair)initWithFirstValue:(double)first secondValue:(double)second;
@end

@implementation PHASENumericPair

- (PHASENumericPair)init
{
  v3.receiver = self;
  v3.super_class = PHASENumericPair;
  result = [(PHASENumericPair *)&v3 init];
  if (result)
  {
    result->_first = 0.0;
    result->_second = 0.0;
  }

  return result;
}

- (PHASENumericPair)initWithFirstValue:(double)first secondValue:(double)second
{
  v7.receiver = self;
  v7.super_class = PHASENumericPair;
  result = [(PHASENumericPair *)&v7 init];
  if (result)
  {
    result->_first = first;
    result->_second = second;
  }

  return result;
}

@end