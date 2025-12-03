@interface _LTStabilizationTranslationResult
- (_LTStabilizationTranslationResult)initWithCoder:(id)coder;
- (_LTStabilizationTranslationResult)initWithOutput:(id)output stableSegments:(id)segments;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTStabilizationTranslationResult

- (_LTStabilizationTranslationResult)initWithOutput:(id)output stableSegments:(id)segments
{
  outputCopy = output;
  segmentsCopy = segments;
  v16.receiver = self;
  v16.super_class = _LTStabilizationTranslationResult;
  v8 = [(_LTStabilizationTranslationResult *)&v16 init];
  if (v8)
  {
    v9 = [outputCopy copy];
    output = v8->_output;
    v8->_output = v9;

    v11 = [segmentsCopy copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v8->_stableSegments, v13);

    v14 = v8;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[_LTStabilizationTranslationResult alloc] initWithOutput:self->_output stableSegments:self->_stableSegments];
  *(result + 3) = self->_generation;
  return result;
}

- (_LTStabilizationTranslationResult)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _LTStabilizationTranslationResult;
  v5 = [(_LTStabilizationTranslationResult *)&v16 init];
  if (v5)
  {
    v5->_generation = [coderCopy decodeIntegerForKey:@"generation"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"output"];
    output = v5->_output;
    v5->_output = v6;

    v8 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"stableSegments"];
    stableSegments = v5->_stableSegments;
    v5->_stableSegments = v11;

    v13 = v5;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  generation = self->_generation;
  coderCopy = coder;
  [coderCopy encodeInteger:generation forKey:@"generation"];
  [coderCopy encodeObject:self->_output forKey:@"output"];
  [coderCopy encodeObject:self->_stableSegments forKey:@"stableSegments"];
}

@end