@interface BiasEstimatorOutputs
- (BOOL)isEqual:(id)a3;
- (BiasEstimatorOutputs)initWithBiasEstimatorOutputs:(id)a3;
- (BiasEstimatorOutputs)initWithCoder:(id)a3;
- (BiasEstimatorOutputs)initWithOuputProbabilities:(id)a3 rawRange:(double)a4 correctedRange:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)populateOrderedBiasEstimatorOutputs;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BiasEstimatorOutputs

- (BiasEstimatorOutputs)initWithOuputProbabilities:(id)a3 rawRange:(double)a4 correctedRange:(double)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
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
    v11 = v8;
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
    [(BiasEstimatorOutputs *)v9 setRawRange:a4];
    [(BiasEstimatorOutputs *)v9 setCorrectedRange:a5];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BiasEstimatorOutputs)initWithBiasEstimatorOutputs:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UWBSignalFeatures.mm" lineNumber:291 description:{@"Invalid parameter not satisfying: %@", @"outputs"}];
  }

  v14.receiver = self;
  v14.super_class = BiasEstimatorOutputs;
  v6 = [(BiasEstimatorOutputs *)&v14 init];
  if (v6)
  {
    v7 = [v5 outProbabilities];
    v8 = [v7 copy];
    outProbabilities = v6->_outProbabilities;
    v6->_outProbabilities = v8;

    [v5 rawRange];
    v6->_rawRange = v10;
    [v5 correctedRange];
    v6->_correctedRange = v11;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithBiasEstimatorOutputs:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_outProbabilities forKey:@"outputProbabilities"];
  [v4 encodeDouble:@"rawRange" forKey:self->_rawRange];
  [v4 encodeDouble:@"correctedRange" forKey:self->_correctedRange];
}

- (BiasEstimatorOutputs)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"outputProbabilities"];
  [v4 decodeDoubleForKey:@"rawRange"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"correctedRange"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
      v14 = [(BiasEstimatorOutputs *)v6 outProbabilities];

      if (!v14)
      {
        v16 = 1;
        goto LABEL_7;
      }

      outProbabilities = self->_outProbabilities;
    }

    v15 = [(BiasEstimatorOutputs *)v6 outProbabilities];
    v16 = [(NSArray *)outProbabilities isEqualToArray:v15];

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