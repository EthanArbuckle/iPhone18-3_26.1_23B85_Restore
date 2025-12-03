@interface NLDataInstanceLocator
- (NLDataInstanceLocator)initWithInstanceIndex:(unint64_t)index rangeOfCharacters:(_NSRange)characters rangeOfTokens:(_NSRange)tokens;
- (_NSRange)rangeOfCharacters;
- (_NSRange)rangeOfTokens;
- (id)description;
@end

@implementation NLDataInstanceLocator

- (NLDataInstanceLocator)initWithInstanceIndex:(unint64_t)index rangeOfCharacters:(_NSRange)characters rangeOfTokens:(_NSRange)tokens
{
  length = tokens.length;
  location = tokens.location;
  v7 = characters.length;
  v8 = characters.location;
  v11.receiver = self;
  v11.super_class = NLDataInstanceLocator;
  result = [(NLDataInstanceLocator *)&v11 init];
  if (result)
  {
    result->_instanceIndex = index;
    result->_rangeOfCharacters.location = v8;
    result->_rangeOfCharacters.length = v7;
    result->_rangeOfTokens.location = location;
    result->_rangeOfTokens.length = length;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  instanceIndex = [(NLDataInstanceLocator *)self instanceIndex];
  v10.location = [(NLDataInstanceLocator *)self rangeOfCharacters];
  v5 = NSStringFromRange(v10);
  v11.location = [(NLDataInstanceLocator *)self rangeOfTokens];
  v6 = NSStringFromRange(v11);
  v7 = [v3 stringWithFormat:@"%llu[%@/%@]", instanceIndex, v5, v6];

  return v7;
}

- (_NSRange)rangeOfCharacters
{
  length = self->_rangeOfCharacters.length;
  location = self->_rangeOfCharacters.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)rangeOfTokens
{
  length = self->_rangeOfTokens.length;
  location = self->_rangeOfTokens.location;
  result.length = length;
  result.location = location;
  return result;
}

@end