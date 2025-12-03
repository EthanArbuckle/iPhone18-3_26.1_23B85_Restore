@interface BiasEstimatorOutputs
- (BOOL)isEqual:(id)equal;
- (BiasEstimatorOutputs)initWithBiasEstimatorOutputs:(id)outputs;
- (BiasEstimatorOutputs)initWithCoder:(id)coder;
- (BiasEstimatorOutputs)initWithOuputProbabilities:(id)probabilities rawRange:(double)range correctedRange:(double)correctedRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)populateOrderedBiasEstimatorOutputs;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BiasEstimatorOutputs

- (BiasEstimatorOutputs)initWithOuputProbabilities:(id)probabilities rawRange:(double)range correctedRange:(double)correctedRange
{
  v26 = *MEMORY[0x1E69E9840];
  probabilitiesCopy = probabilities;
  v24.receiver = self;
  v24.super_class = BiasEstimatorOutputs;
  v9 = [(BiasEstimatorOutputs *)&v24 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = probabilitiesCopy;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          v16 = MEMORY[0x1E696AD98];
          [v15 doubleValue];
          v17 = [v16 numberWithDouble:?];
          [v10 addObject:v17];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }

    [(BiasEstimatorOutputs *)v9 setOutProbabilities:v10];
    [(BiasEstimatorOutputs *)v9 setRawRange:range];
    [(BiasEstimatorOutputs *)v9 setCorrectedRange:correctedRange];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BiasEstimatorOutputs)initWithBiasEstimatorOutputs:(id)outputs
{
  outputsCopy = outputs;
  if (!outputsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UWBSignalFeatures.mm" lineNumber:291 description:{@"Invalid parameter not satisfying: %@", @"outputs"}];
  }

  v14.receiver = self;
  v14.super_class = BiasEstimatorOutputs;
  v6 = [(BiasEstimatorOutputs *)&v14 init];
  if (v6)
  {
    outProbabilities = [outputsCopy outProbabilities];
    v8 = [outProbabilities copy];
    outProbabilities = v6->_outProbabilities;
    v6->_outProbabilities = v8;

    [outputsCopy rawRange];
    v6->_rawRange = v10;
    [outputsCopy correctedRange];
    v6->_correctedRange = v11;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithBiasEstimatorOutputs:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_outProbabilities forKey:@"outputProbabilities"];
  [coderCopy encodeDouble:@"rawRange" forKey:self->_rawRange];
  [coderCopy encodeDouble:@"correctedRange" forKey:self->_correctedRange];
}

- (BiasEstimatorOutputs)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"outputProbabilities"];
  [coderCopy decodeDoubleForKey:@"rawRange"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"correctedRange"];
  v9 = v8;
  v13.receiver = self;
  v13.super_class = BiasEstimatorOutputs;
  v10 = [(BiasEstimatorOutputs *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(BiasEstimatorOutputs *)v10 setOutProbabilities:v5];
    [(BiasEstimatorOutputs *)v11 setRawRange:v7];
    [(BiasEstimatorOutputs *)v11 setCorrectedRange:v9];
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v18 = 1;
LABEL_12:

      goto LABEL_13;
    }

    rawRange = self->_rawRange;
    [(BiasEstimatorOutputs *)v5 rawRange];
    v9 = v8;
    correctedRange = self->_correctedRange;
    [(BiasEstimatorOutputs *)v6 correctedRange];
    v12 = v11;
    outProbabilities = self->_outProbabilities;
    if (!outProbabilities)
    {
      outProbabilities = [(BiasEstimatorOutputs *)v6 outProbabilities];

      if (!outProbabilities)
      {
        v16 = 1;
        goto LABEL_7;
      }

      outProbabilities = self->_outProbabilities;
    }

    outProbabilities2 = [(BiasEstimatorOutputs *)v6 outProbabilities];
    v16 = [(NSArray *)outProbabilities isEqualToArray:outProbabilities2];

LABEL_7:
    v17 = rawRange == v9;
    if (correctedRange != v12)
    {
      v17 = 0;
    }

    v18 = v17 & v16;
    goto LABEL_12;
  }

  v18 = 0;
LABEL_13:

  return v18;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rawRange];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_correctedRange];
  v6 = [v5 hash];
  v7 = [(NSArray *)self->_outProbabilities hash];

  return v6 ^ v4 ^ v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  for (i = 0; [(NSArray *)self->_outProbabilities count]> i; ++i)
  {
    v8 = [(NSArray *)self->_outProbabilities objectAtIndex:i];
    [v8 doubleValue];
    [v6 appendFormat:@" out_prob_%d: %.6f, ", i, v9];
  }

  rawRange = self->_rawRange;
  correctedRange = self->_correctedRange;
  [v6 appendFormat:@" rawRange: %.3f, ", *&rawRange];
  [v6 appendFormat:@" bias_correction_estimate: %.3f, ", correctedRange - rawRange];
  [v6 appendFormat:@" correctedRange: %.3f>", *&self->_correctedRange];

  return v6;
}

- (id)populateOrderedBiasEstimatorOutputs
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  for (i = 0; [(NSArray *)self->_outProbabilities count]> i; ++i)
  {
    v5 = [(NSArray *)self->_outProbabilities objectAtIndex:i];
    [v5 doubleValue];
    [v3 appendFormat:@" %.6f, ", v6];
  }

  [v3 appendFormat:@" %.3f, %.3f, %.3f", *&self->_rawRange, self->_correctedRange - self->_rawRange, *&self->_correctedRange];

  return v3;
}

@end