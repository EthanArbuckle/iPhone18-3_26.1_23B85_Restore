@interface ATXMagicalMomentsPrediction
+ (id)convertPredictionsToPMMPredictionItems:(id)items reason:(unsigned int)reason anchor:(int64_t)anchor triggerEvent:(id)event;
+ (id)pmmMetadataForDuetEvent:(id)event;
+ (int64_t)mmAnchorToPMMAnchor:(int64_t)anchor;
+ (int64_t)mmReasonToPMMReason:(unsigned int)reason;
- (ATXMagicalMomentsPrediction)init;
- (ATXMagicalMomentsPrediction)initWithCoder:(id)coder;
- (ATXMagicalMomentsPrediction)initWithConfidence:(double)confidence predictionIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXMagicalMomentsPrediction

- (ATXMagicalMomentsPrediction)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXMagicalMomentsPrediction.m" lineNumber:24 description:{@"Do not call -init, call -initWithConfidence:bundleId:."}];

  return 0;
}

- (ATXMagicalMomentsPrediction)initWithConfidence:(double)confidence predictionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v13.receiver = self;
    v13.super_class = ATXMagicalMomentsPrediction;
    v7 = [(ATXMagicalMomentsPrediction *)&v13 init];
    v8 = v7;
    if (v7)
    {
      v7->_confidence = confidence;
      v9 = [identifierCopy copy];
      predictionIdentifier = v8->_predictionIdentifier;
      v8->_predictionIdentifier = v9;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      confidence = self->_confidence;
      [(ATXMagicalMomentsPrediction *)v5 confidence];
      if (confidence == v7)
      {
        predictionIdentifier = self->_predictionIdentifier;
        predictionIdentifier = [(ATXMagicalMomentsPrediction *)v5 predictionIdentifier];
        v10 = [(NSString *)predictionIdentifier isEqualToString:predictionIdentifier];
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  [(ATXMagicalMomentsPrediction *)self confidence];
  v6 = v5;
  [compareCopy confidence];
  if (v6 >= v7)
  {
    [(ATXMagicalMomentsPrediction *)self confidence];
    v10 = v9;
    [compareCopy confidence];
    v8 = v10 > v11;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(ATXMagicalMomentsPrediction *)self confidence];
  v6 = v5;
  predictionIdentifier = [(ATXMagicalMomentsPrediction *)self predictionIdentifier];
  v8 = [v4 initWithConfidence:predictionIdentifier predictionIdentifier:v6];

  return v8;
}

+ (id)convertPredictionsToPMMPredictionItems:(id)items reason:(unsigned int)reason anchor:(int64_t)anchor triggerEvent:(id)event
{
  v32 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  eventCopy = event;
  v26 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = itemsCopy;
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
        predictionIdentifier = [v11 predictionIdentifier];
        v15 = [ATXMagicalMomentsPrediction mmReasonToPMMReason:reason];
        v16 = [objc_opt_class() pmmMetadataForDuetEvent:eventCopy];
        v17 = [ATXMagicalMomentsPrediction mmAnchorToPMMAnchor:anchor];
        [v11 confidence];
        v18 = [v13 initWithBundleId:predictionIdentifier predictionSource:2 reason:v15 reasonMetadata:v16 anchorType:v17 confidence:?];

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

+ (id)pmmMetadataForDuetEvent:(id)event
{
  v18[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deviceName = [eventCopy deviceName];

    if (deviceName)
    {
      v17 = *MEMORY[0x277D41FC0];
      deviceName2 = [eventCopy deviceName];
      v18[0] = deviceName2;
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
    deviceIdentifier = [eventCopy deviceIdentifier];

    if (deviceIdentifier)
    {
      v15 = *MEMORY[0x277D41FC0];
      deviceName2 = [eventCopy deviceIdentifier];
      v16 = deviceName2;
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

+ (int64_t)mmReasonToPMMReason:(unsigned int)reason
{
  v3 = 128;
  v4 = 256;
  v5 = 512;
  if (reason != 512)
  {
    v5 = 0;
  }

  if (reason != 256)
  {
    v4 = v5;
  }

  if (reason != 128)
  {
    v3 = v4;
  }

  v6 = 32;
  v7 = 64;
  if (reason != 64)
  {
    v7 = 0;
  }

  if (reason != 32)
  {
    v6 = v7;
  }

  if (reason <= 127)
  {
    v3 = v6;
  }

  v8 = 4;
  v9 = 8;
  v10 = 16;
  if (reason != 16)
  {
    v10 = 0;
  }

  if (reason != 8)
  {
    v9 = v10;
  }

  if (reason != 4)
  {
    v8 = v9;
  }

  v11 = 1;
  v12 = 2;
  if (reason != 2)
  {
    v12 = 0;
  }

  if (reason != 1)
  {
    v11 = v12;
  }

  if (reason <= 3)
  {
    v8 = v11;
  }

  if (reason <= 31)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)mmAnchorToPMMAnchor:(int64_t)anchor
{
  if ((anchor - 1) >= 0x13)
  {
    return 0;
  }

  else
  {
    return anchor;
  }
}

- (void)encodeWithCoder:(id)coder
{
  predictionIdentifier = self->_predictionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:predictionIdentifier forKey:@"predictionIdentifier"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
}

- (ATXMagicalMomentsPrediction)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"confidence"];
  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionIdentifier"];

  v8 = [(ATXMagicalMomentsPrediction *)self initWithConfidence:v7 predictionIdentifier:v6];
  return v8;
}

@end