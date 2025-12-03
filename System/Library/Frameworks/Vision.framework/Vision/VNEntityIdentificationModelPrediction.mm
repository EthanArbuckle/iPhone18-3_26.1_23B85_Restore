@interface VNEntityIdentificationModelPrediction
- (BOOL)isEqual:(id)equal;
- (VNEntityIdentificationModelPrediction)initWithCoder:(id)coder;
- (VNEntityIdentificationModelPrediction)initWithObservation:(id)observation entityUniqueIdentifier:(id)identifier confidence:(float)confidence;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNEntityIdentificationModelPrediction

- (id)description
{
  v8.receiver = self;
  v8.super_class = VNEntityIdentificationModelPrediction;
  v3 = [(VNEntityIdentificationModelPrediction *)&v8 description];
  entityUniqueIdentifier = [(VNEntityIdentificationModelPrediction *)self entityUniqueIdentifier];
  [(VNEntityIdentificationModelPrediction *)self confidence];
  v6 = [v3 stringByAppendingFormat:@" '%@' confidence %f", entityUniqueIdentifier, v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [self->_entityUniqueIdentifier hash]^ __ROR8__([(VNEntityIdentificationModelObservation *)self->_observation hash], 51);
  confidence = self->_confidence;
  v5 = LODWORD(confidence);
  if (confidence == 0.0)
  {
    v5 = 0;
  }

  return v5 ^ __ROR8__(v3, 51);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(VNEntityIdentificationModelPrediction *)self confidence];
      v7 = v6;
      [(VNEntityIdentificationModelPrediction *)v5 confidence];
      if (v7 == v8 && (-[VNEntityIdentificationModelPrediction entityUniqueIdentifier](self, "entityUniqueIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), -[VNEntityIdentificationModelPrediction entityUniqueIdentifier](v5, "entityUniqueIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
      {
        observation = [(VNEntityIdentificationModelPrediction *)self observation];
        observation2 = [(VNEntityIdentificationModelPrediction *)v5 observation];
        v14 = [observation isEqual:observation2];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  observation = self->_observation;
  coderCopy = coder;
  [coderCopy encodeObject:observation forKey:@"observation"];
  [coderCopy vn_encodeEntityUniqueIdentifier:self->_entityUniqueIdentifier forKey:@"entityUID"];
  *&v5 = self->_confidence;
  [coderCopy encodeFloat:@"confidence" forKey:v5];
}

- (VNEntityIdentificationModelPrediction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy vn_decodeEntityUniqueIdentifierForKey:@"entityUID"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"observation"];
    if (v6)
    {
      [coderCopy decodeFloatForKey:@"confidence"];
      self = [(VNEntityIdentificationModelPrediction *)self initWithObservation:v6 entityUniqueIdentifier:v5 confidence:?];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNEntityIdentificationModelPrediction)initWithObservation:(id)observation entityUniqueIdentifier:(id)identifier confidence:(float)confidence
{
  observationCopy = observation;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = VNEntityIdentificationModelPrediction;
  v11 = [(VNEntityIdentificationModelPrediction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_observation, observation);
    objc_storeStrong(&v12->_entityUniqueIdentifier, identifier);
    v12->_confidence = confidence;
  }

  return v12;
}

@end