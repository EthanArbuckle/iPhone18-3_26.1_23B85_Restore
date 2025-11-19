@interface ATXMagicalMomentsPrediction
+ (id)convertPredictionsToPMMPredictionItems:(id)a3 reason:(unsigned int)a4 anchor:(int64_t)a5 triggerEvent:(id)a6;
+ (id)pmmMetadataForDuetEvent:(id)a3;
+ (int64_t)mmAnchorToPMMAnchor:(int64_t)a3;
+ (int64_t)mmReasonToPMMReason:(unsigned int)a3;
- (ATXMagicalMomentsPrediction)init;
- (ATXMagicalMomentsPrediction)initWithCoder:(id)a3;
- (ATXMagicalMomentsPrediction)initWithConfidence:(double)a3 predictionIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXMagicalMomentsPrediction

- (ATXMagicalMomentsPrediction)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ATXMagicalMomentsPrediction.m" lineNumber:24 description:{@"Do not call -init, call -initWithConfidence:bundleId:."}];

  return 0;
}

- (ATXMagicalMomentsPrediction)initWithConfidence:(double)a3 predictionIdentifier:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v13.receiver = self;
    v13.super_class = ATXMagicalMomentsPrediction;
    v7 = [(ATXMagicalMomentsPrediction *)&v13 init];
    v8 = v7;
    if (v7)
    {
      v7->_confidence = a3;
      v9 = [v6 copy];
      predictionIdentifier = v8->_predictionIdentifier;
      v8->_predictionIdentifier = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      confidence = self->_confidence;
      [(ATXMagicalMomentsPrediction *)v5 confidence];
      if (confidence == v7)
      {
        predictionIdentifier = self->_predictionIdentifier;
        v9 = [(ATXMagicalMomentsPrediction *)v5 predictionIdentifier];
        v10 = [(NSString *)predictionIdentifier isEqualToString:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  [(ATXMagicalMomentsPrediction *)self confidence];
  v6 = v5;
  [v4 confidence];
  if (v6 >= v7)
  {
    [(ATXMagicalMomentsPrediction *)self confidence];
    v10 = v9;
    [v4 confidence];
    v8 = v10 > v11;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(ATXMagicalMomentsPrediction *)self confidence];
  v6 = v5;
  v7 = [(ATXMagicalMomentsPrediction *)self predictionIdentifier];
  v8 = [v4 initWithConfidence:v7 predictionIdentifier:v6];

  return v8;
}

+ (id)convertPredictionsToPMMPredictionItems:(id)a3 reason:(unsigned int)a4 anchor:(int64_t)a5 triggerEvent:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v25 = a6;
  v26 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v22 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = objc_alloc(MEMORY[0x277D41FA0]);
        v14 = [v11 predictionIdentifier];
        v15 = [ATXMagicalMomentsPrediction mmReasonToPMMReason:a4];
        v16 = [objc_opt_class() pmmMetadataForDuetEvent:v25];
        v17 = [ATXMagicalMomentsPrediction mmAnchorToPMMAnchor:a5];
        [v11 confidence];
        v18 = [v13 initWithBundleId:v14 predictionSource:2 reason:v15 reasonMetadata:v16 anchorType:v17 confidence:?];

        [v26 addObject:v18];
        objc_autoreleasePoolPop(v12);
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)pmmMetadataForDuetEvent:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 deviceName];

    if (v4)
    {
      v17 = *MEMORY[0x277D41FC0];
      v5 = [v3 deviceName];
      v18[0] = v5;
      v6 = MEMORY[0x277CBEAC0];
      v7 = v18;
      v8 = &v17;
LABEL_7:
      v10 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:1];

      goto LABEL_9;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v3 deviceIdentifier];

    if (v9)
    {
      v15 = *MEMORY[0x277D41FC0];
      v5 = [v3 deviceIdentifier];
      v16 = v5;
      v6 = MEMORY[0x277CBEAC0];
      v7 = &v16;
      v8 = &v15;
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_9:
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = v11;

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (int64_t)mmReasonToPMMReason:(unsigned int)a3
{
  v3 = 128;
  v4 = 256;
  v5 = 512;
  if (a3 != 512)
  {
    v5 = 0;
  }

  if (a3 != 256)
  {
    v4 = v5;
  }

  if (a3 != 128)
  {
    v3 = v4;
  }

  v6 = 32;
  v7 = 64;
  if (a3 != 64)
  {
    v7 = 0;
  }

  if (a3 != 32)
  {
    v6 = v7;
  }

  if (a3 <= 127)
  {
    v3 = v6;
  }

  v8 = 4;
  v9 = 8;
  v10 = 16;
  if (a3 != 16)
  {
    v10 = 0;
  }

  if (a3 != 8)
  {
    v9 = v10;
  }

  if (a3 != 4)
  {
    v8 = v9;
  }

  v11 = 1;
  v12 = 2;
  if (a3 != 2)
  {
    v12 = 0;
  }

  if (a3 != 1)
  {
    v11 = v12;
  }

  if (a3 <= 3)
  {
    v8 = v11;
  }

  if (a3 <= 31)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)mmAnchorToPMMAnchor:(int64_t)a3
{
  if ((a3 - 1) >= 0x13)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)encodeWithCoder:(id)a3
{
  predictionIdentifier = self->_predictionIdentifier;
  v5 = a3;
  [v5 encodeObject:predictionIdentifier forKey:@"predictionIdentifier"];
  [v5 encodeDouble:@"confidence" forKey:self->_confidence];
}

- (ATXMagicalMomentsPrediction)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"confidence"];
  v6 = v5;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionIdentifier"];

  v8 = [(ATXMagicalMomentsPrediction *)self initWithConfidence:v7 predictionIdentifier:v6];
  return v8;
}

@end