@interface ATXMicroLocationVisitEvent
- (ATXMicroLocationVisitEvent)initWithDomain:(id)a3 maxProbabilityMicroLocationIdentifier:(id)a4 maxProbability:(id)a5 probabilityVector:(id)a6 isStable:(BOOL)a7 numDevicesVector:(id)a8 timestamp:(id)a9;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXMicroLocationVisitEvent:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXMicroLocationVisitEvent

- (ATXMicroLocationVisitEvent)initWithDomain:(id)a3 maxProbabilityMicroLocationIdentifier:(id)a4 maxProbability:(id)a5 probabilityVector:(id)a6 isStable:(BOOL)a7 numDevicesVector:(id)a8 timestamp:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v34.receiver = self;
  v34.super_class = ATXMicroLocationVisitEvent;
  v21 = [(ATXMicroLocationVisitEvent *)&v34 init];
  if (v21)
  {
    v22 = [v15 copy];
    domain = v21->_domain;
    v21->_domain = v22;

    v24 = [v16 copy];
    maxProbabilityMicroLocationIdentifier = v21->_maxProbabilityMicroLocationIdentifier;
    v21->_maxProbabilityMicroLocationIdentifier = v24;

    objc_storeStrong(&v21->_maxProbability, a5);
    v26 = [v18 copy];
    v27 = v26;
    v28 = MEMORY[0x277CBEBF8];
    if (v26)
    {
      v29 = v26;
    }

    else
    {
      v29 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v21->_probabilityVector, v29);

    v21->_isStable = a7;
    v30 = [v19 copy];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v28;
    }

    objc_storeStrong(&v21->_numDevicesVector, v32);

    objc_storeStrong(&v21->_timestamp, a9);
  }

  return v21;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXMicroLocationVisitEvent *)self isEqualToATXMicroLocationVisitEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXMicroLocationVisitEvent:(id)a3
{
  v4 = a3;
  v5 = self->_domain;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v8 = self->_maxProbabilityMicroLocationIdentifier;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v11 = self->_maxProbability;
  v12 = v11;
  if (v11 == v4[4])
  {
  }

  else
  {
    v13 = [(NSNumber *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v14 = self->_probabilityVector;
  v15 = v14;
  if (v14 == v4[5])
  {
  }

  else
  {
    v16 = [(NSArray *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (self->_isStable != *(v4 + 8))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v17 = self->_numDevicesVector;
  v18 = v17;
  if (v17 == v4[6])
  {
  }

  else
  {
    v19 = [(NSArray *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v22 = self->_timestamp;
  v23 = v22;
  if (v22 == v4[7])
  {
    v20 = 1;
  }

  else
  {
    v20 = [(NSDate *)v22 isEqual:?];
  }

LABEL_21:
  return v20;
}

- (unint64_t)hash
{
  v3 = [(ATXMicroLocationVisitEvent *)self domain];
  v4 = [v3 hash];

  v5 = [(ATXMicroLocationVisitEvent *)self maxProbabilityMicroLocationIdentifier];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(ATXMicroLocationVisitEvent *)self maxProbability];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(ATXMicroLocationVisitEvent *)self probabilityVector];
  v10 = [v9 hash] - v8 + 32 * v8;

  v11 = 31 * v10 + [(ATXMicroLocationVisitEvent *)self isStable];
  v12 = [(ATXMicroLocationVisitEvent *)self numDevicesVector];
  v13 = [v12 hash] - v11 + 32 * v11;

  v14 = [(ATXMicroLocationVisitEvent *)self timestamp];
  v15 = [v14 hash] - v13 + 32 * v13;

  return v15;
}

@end