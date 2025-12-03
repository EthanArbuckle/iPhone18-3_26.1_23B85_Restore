@interface ATXMicroLocationVisitProbabilityPerLocation
- (ATXMicroLocationVisitProbabilityPerLocation)initWithMicroLocationIdentifier:(id)identifier probability:(id)probability;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXMicroLocationVisitProbabilityPerLocation:(id)location;
- (unint64_t)hash;
@end

@implementation ATXMicroLocationVisitProbabilityPerLocation

- (ATXMicroLocationVisitProbabilityPerLocation)initWithMicroLocationIdentifier:(id)identifier probability:(id)probability
{
  identifierCopy = identifier;
  probabilityCopy = probability;
  v12.receiver = self;
  v12.super_class = ATXMicroLocationVisitProbabilityPerLocation;
  v8 = [(ATXMicroLocationVisitProbabilityPerLocation *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    microLocationIdentifier = v8->_microLocationIdentifier;
    v8->_microLocationIdentifier = v9;

    objc_storeStrong(&v8->_probability, probability);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXMicroLocationVisitProbabilityPerLocation *)self isEqualToATXMicroLocationVisitProbabilityPerLocation:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXMicroLocationVisitProbabilityPerLocation:(id)location
{
  locationCopy = location;
  v5 = self->_microLocationIdentifier;
  v6 = v5;
  if (v5 == locationCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_probability;
  v10 = v9;
  if (v9 == locationCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSNumber *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (unint64_t)hash
{
  microLocationIdentifier = [(ATXMicroLocationVisitProbabilityPerLocation *)self microLocationIdentifier];
  v4 = [microLocationIdentifier hash];

  probability = [(ATXMicroLocationVisitProbabilityPerLocation *)self probability];
  v6 = [probability hash] - v4 + 32 * v4;

  return v6;
}

@end