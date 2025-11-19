@interface ATXMicroLocationVisitProbabilityPerLocation
- (ATXMicroLocationVisitProbabilityPerLocation)initWithMicroLocationIdentifier:(id)a3 probability:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXMicroLocationVisitProbabilityPerLocation:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXMicroLocationVisitProbabilityPerLocation

- (ATXMicroLocationVisitProbabilityPerLocation)initWithMicroLocationIdentifier:(id)a3 probability:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ATXMicroLocationVisitProbabilityPerLocation;
  v8 = [(ATXMicroLocationVisitProbabilityPerLocation *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    microLocationIdentifier = v8->_microLocationIdentifier;
    v8->_microLocationIdentifier = v9;

    objc_storeStrong(&v8->_probability, a4);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXMicroLocationVisitProbabilityPerLocation *)self isEqualToATXMicroLocationVisitProbabilityPerLocation:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXMicroLocationVisitProbabilityPerLocation:(id)a3
{
  v4 = a3;
  v5 = self->_microLocationIdentifier;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v9 == v4[2])
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
  v3 = [(ATXMicroLocationVisitProbabilityPerLocation *)self microLocationIdentifier];
  v4 = [v3 hash];

  v5 = [(ATXMicroLocationVisitProbabilityPerLocation *)self probability];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6;
}

@end