@interface ATXMicroLocationVisitEvent
- (ATXMicroLocationVisitEvent)initWithDomain:(id)domain maxProbabilityMicroLocationIdentifier:(id)identifier maxProbability:(id)probability probabilityVector:(id)vector isStable:(BOOL)stable numDevicesVector:(id)devicesVector timestamp:(id)timestamp;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXMicroLocationVisitEvent:(id)event;
- (unint64_t)hash;
@end

@implementation ATXMicroLocationVisitEvent

- (ATXMicroLocationVisitEvent)initWithDomain:(id)domain maxProbabilityMicroLocationIdentifier:(id)identifier maxProbability:(id)probability probabilityVector:(id)vector isStable:(BOOL)stable numDevicesVector:(id)devicesVector timestamp:(id)timestamp
{
  domainCopy = domain;
  identifierCopy = identifier;
  probabilityCopy = probability;
  vectorCopy = vector;
  devicesVectorCopy = devicesVector;
  timestampCopy = timestamp;
  v34.receiver = self;
  v34.super_class = ATXMicroLocationVisitEvent;
  v21 = [(ATXMicroLocationVisitEvent *)&v34 init];
  if (v21)
  {
    v22 = [domainCopy copy];
    domain = v21->_domain;
    v21->_domain = v22;

    v24 = [identifierCopy copy];
    maxProbabilityMicroLocationIdentifier = v21->_maxProbabilityMicroLocationIdentifier;
    v21->_maxProbabilityMicroLocationIdentifier = v24;

    objc_storeStrong(&v21->_maxProbability, probability);
    v26 = [vectorCopy copy];
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

    v21->_isStable = stable;
    v30 = [devicesVectorCopy copy];
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

    objc_storeStrong(&v21->_timestamp, timestamp);
  }

  return v21;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXMicroLocationVisitEvent *)self isEqualToATXMicroLocationVisitEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXMicroLocationVisitEvent:(id)event
{
  eventCopy = event;
  v5 = self->_domain;
  v6 = v5;
  if (v5 == eventCopy[2])
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
  if (v8 == eventCopy[3])
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
  if (v11 == eventCopy[4])
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
  if (v14 == eventCopy[5])
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

  if (self->_isStable != *(eventCopy + 8))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v17 = self->_numDevicesVector;
  v18 = v17;
  if (v17 == eventCopy[6])
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
  if (v22 == eventCopy[7])
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
  domain = [(ATXMicroLocationVisitEvent *)self domain];
  v4 = [domain hash];

  maxProbabilityMicroLocationIdentifier = [(ATXMicroLocationVisitEvent *)self maxProbabilityMicroLocationIdentifier];
  v6 = [maxProbabilityMicroLocationIdentifier hash] - v4 + 32 * v4;

  maxProbability = [(ATXMicroLocationVisitEvent *)self maxProbability];
  v8 = [maxProbability hash] - v6 + 32 * v6;

  probabilityVector = [(ATXMicroLocationVisitEvent *)self probabilityVector];
  v10 = [probabilityVector hash] - v8 + 32 * v8;

  v11 = 31 * v10 + [(ATXMicroLocationVisitEvent *)self isStable];
  numDevicesVector = [(ATXMicroLocationVisitEvent *)self numDevicesVector];
  v13 = [numDevicesVector hash] - v11 + 32 * v11;

  timestamp = [(ATXMicroLocationVisitEvent *)self timestamp];
  v15 = [timestamp hash] - v13 + 32 * v13;

  return v15;
}

@end