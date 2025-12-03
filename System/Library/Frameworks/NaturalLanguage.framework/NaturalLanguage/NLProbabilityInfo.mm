@interface NLProbabilityInfo
- (BOOL)isEqual:(id)equal;
- (NLProbabilityInfo)initWithCoder:(id)coder;
- (NLProbabilityInfo)initWithInvalidProbability;
- (NLProbabilityInfo)initWithLog10Probability:(double)probability flags:(unint64_t)flags;
- (NLProbabilityInfo)initWithProbability:(double)probability flags:(unint64_t)flags;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NLProbabilityInfo

- (NLProbabilityInfo)initWithProbability:(double)probability flags:(unint64_t)flags
{
  v9.receiver = self;
  v9.super_class = NLProbabilityInfo;
  v6 = [(NLProbabilityInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_probability = probability;
    v6->_log10Probability = log10(probability);
    v7->_isValid = 1;
    v7->_probabilityFlags = flags;
  }

  return v7;
}

- (NLProbabilityInfo)initWithLog10Probability:(double)probability flags:(unint64_t)flags
{
  v8.receiver = self;
  v8.super_class = NLProbabilityInfo;
  v6 = [(NLProbabilityInfo *)&v8 init];
  if (v6)
  {
    v6->_probability = __exp10(probability);
    v6->_log10Probability = probability;
    v6->_isValid = 1;
    v6->_probabilityFlags = flags;
  }

  return v6;
}

- (NLProbabilityInfo)initWithInvalidProbability
{
  result = [(NLProbabilityInfo *)self initWithLog10Probability:0 flags:-30.0];
  if (result)
  {
    *&result->_probability = xmmword_19D4E9120;
    result->_isValid = 0;
    result->_probabilityFlags = 0;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  [(NLProbabilityInfo *)self log10Probability];
  return [v2 stringWithFormat:@"logprob %.2g", v3];
}

- (unint64_t)hash
{
  [(NLProbabilityInfo *)self log10Probability];
  v4 = (v3 * -10000000.0);
  if ([(NLProbabilityInfo *)self isValid])
  {
    v5 = 0x40000000;
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ [(NLProbabilityInfo *)self probabilityFlags]^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  v11 = 1;
  if (equalCopy != self)
  {
    if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v6 = [(NLProbabilityInfo *)self isValid], v6 != [(NLProbabilityInfo *)v5 isValid]) || (v7 = [(NLProbabilityInfo *)self probabilityFlags], v7 != [(NLProbabilityInfo *)v5 probabilityFlags]) || ([(NLProbabilityInfo *)self log10Probability], v9 = v8, [(NLProbabilityInfo *)v5 log10Probability], v9 != v10))
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLProbabilityInfo requires keyed coding" userInfo:0];
    objc_exception_throw(v4);
  }

  [(NLProbabilityInfo *)self log10Probability];
  [coderCopy encodeDouble:@"NLLog10Probability" forKey:?];
  [coderCopy encodeBool:-[NLProbabilityInfo isValid](self forKey:{"isValid"), @"NLIsValid"}];
  [coderCopy encodeInteger:-[NLProbabilityInfo probabilityFlags](self forKey:{"probabilityFlags"), @"NLProbabilityFlags"}];
}

- (NLProbabilityInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLProbabilityInfo requires keyed coding" userInfo:0];
    objc_exception_throw(v12);
  }

  [coderCopy decodeDoubleForKey:@"NLLog10Probability"];
  v6 = v5;
  v7 = [coderCopy decodeBoolForKey:@"NLIsValid"];
  v8 = [coderCopy decodeIntegerForKey:@"NLProbabilityFlags"];
  if (v7)
  {
    initWithInvalidProbability = [(NLProbabilityInfo *)self initWithLog10Probability:v8 flags:v6];
  }

  else
  {
    initWithInvalidProbability = [(NLProbabilityInfo *)self initWithInvalidProbability];
  }

  v10 = initWithInvalidProbability;

  return v10;
}

@end