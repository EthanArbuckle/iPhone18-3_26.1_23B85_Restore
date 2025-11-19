@interface _LTStabilizationTranslationResult
- (_LTStabilizationTranslationResult)initWithCoder:(id)a3;
- (_LTStabilizationTranslationResult)initWithOutput:(id)a3 stableSegments:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTStabilizationTranslationResult

- (_LTStabilizationTranslationResult)initWithOutput:(id)a3 stableSegments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = _LTStabilizationTranslationResult;
  v8 = [(_LTStabilizationTranslationResult *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    output = v8->_output;
    v8->_output = v9;

    v11 = [v7 copy];
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

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[_LTStabilizationTranslationResult alloc] initWithOutput:self->_output stableSegments:self->_stableSegments];
  *(result + 3) = self->_generation;
  return result;
}

- (_LTStabilizationTranslationResult)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _LTStabilizationTranslationResult;
  v5 = [(_LTStabilizationTranslationResult *)&v16 init];
  if (v5)
  {
    v5->_generation = [v4 decodeIntegerForKey:@"generation"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"output"];
    output = v5->_output;
    v5->_output = v6;

    v8 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"stableSegments"];
    stableSegments = v5->_stableSegments;
    v5->_stableSegments = v11;

    v13 = v5;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  generation = self->_generation;
  v5 = a3;
  [v5 encodeInteger:generation forKey:@"generation"];
  [v5 encodeObject:self->_output forKey:@"output"];
  [v5 encodeObject:self->_stableSegments forKey:@"stableSegments"];
}

@end