@interface NLProbabilityInfo
- (BOOL)isEqual:(id)a3;
- (NLProbabilityInfo)initWithCoder:(id)a3;
- (NLProbabilityInfo)initWithInvalidProbability;
- (NLProbabilityInfo)initWithLog10Probability:(double)a3 flags:(unint64_t)a4;
- (NLProbabilityInfo)initWithProbability:(double)a3 flags:(unint64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NLProbabilityInfo

- (NLProbabilityInfo)initWithProbability:(double)a3 flags:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = NLProbabilityInfo;
  v6 = [(NLProbabilityInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_probability = a3;
    v6->_log10Probability = log10(a3);
    v7->_isValid = 1;
    v7->_probabilityFlags = a4;
  }

  return v7;
}

- (NLProbabilityInfo)initWithLog10Probability:(double)a3 flags:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = NLProbabilityInfo;
  v6 = [(NLProbabilityInfo *)&v8 init];
  if (v6)
  {
    v6->_probability = __exp10(a3);
    v6->_log10Probability = a3;
    v6->_isValid = 1;
    v6->_probabilityFlags = a4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  v11 = 1;
  if (v4 != self)
  {
    if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v6 = [(NLProbabilityInfo *)self isValid], v6 != [(NLProbabilityInfo *)v5 isValid]) || (v7 = [(NLProbabilityInfo *)self probabilityFlags], v7 != [(NLProbabilityInfo *)v5 probabilityFlags]) || ([(NLProbabilityInfo *)self log10Probability], v9 = v8, [(NLProbabilityInfo *)v5 log10Probability], v9 != v10))
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLProbabilityInfo requires keyed coding" userInfo:0];
    objc_exception_throw(v4);
  }

  [(NLProbabilityInfo *)self log10Probability];
  [v5 encodeDouble:@"NLLog10Probability" forKey:?];
  [v5 encodeBool:-[NLProbabilityInfo isValid](self forKey:{"isValid"), @"NLIsValid"}];
  [v5 encodeInteger:-[NLProbabilityInfo probabilityFlags](self forKey:{"probabilityFlags"), @"NLProbabilityFlags"}];
}

- (NLProbabilityInfo)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NLProbabilityInfo requires keyed coding" userInfo:0];
    objc_exception_throw(v12);
  }

  [v4 decodeDoubleForKey:@"NLLog10Probability"];
  v6 = v5;
  v7 = [v4 decodeBoolForKey:@"NLIsValid"];
  v8 = [v4 decodeIntegerForKey:@"NLProbabilityFlags"];
  if (v7)
  {
    v9 = [(NLProbabilityInfo *)self initWithLog10Probability:v8 flags:v6];
  }

  else
  {
    v9 = [(NLProbabilityInfo *)self initWithInvalidProbability];
  }

  v10 = v9;

  return v10;
}

@end