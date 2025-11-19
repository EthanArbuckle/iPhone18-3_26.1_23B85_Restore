@interface VNEntityIdentificationModelPrediction
- (BOOL)isEqual:(id)a3;
- (VNEntityIdentificationModelPrediction)initWithCoder:(id)a3;
- (VNEntityIdentificationModelPrediction)initWithObservation:(id)a3 entityUniqueIdentifier:(id)a4 confidence:(float)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNEntityIdentificationModelPrediction

- (id)description
{
  v8.receiver = self;
  v8.super_class = VNEntityIdentificationModelPrediction;
  v3 = [(VNEntityIdentificationModelPrediction *)&v8 description];
  v4 = [(VNEntityIdentificationModelPrediction *)self entityUniqueIdentifier];
  [(VNEntityIdentificationModelPrediction *)self confidence];
  v6 = [v3 stringByAppendingFormat:@" '%@' confidence %f", v4, v5];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VNEntityIdentificationModelPrediction *)self confidence];
      v7 = v6;
      [(VNEntityIdentificationModelPrediction *)v5 confidence];
      if (v7 == v8 && (-[VNEntityIdentificationModelPrediction entityUniqueIdentifier](self, "entityUniqueIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), -[VNEntityIdentificationModelPrediction entityUniqueIdentifier](v5, "entityUniqueIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
      {
        v12 = [(VNEntityIdentificationModelPrediction *)self observation];
        v13 = [(VNEntityIdentificationModelPrediction *)v5 observation];
        v14 = [v12 isEqual:v13];
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

- (void)encodeWithCoder:(id)a3
{
  observation = self->_observation;
  v6 = a3;
  [v6 encodeObject:observation forKey:@"observation"];
  [v6 vn_encodeEntityUniqueIdentifier:self->_entityUniqueIdentifier forKey:@"entityUID"];
  *&v5 = self->_confidence;
  [v6 encodeFloat:@"confidence" forKey:v5];
}

- (VNEntityIdentificationModelPrediction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 vn_decodeEntityUniqueIdentifierForKey:@"entityUID"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"observation"];
    if (v6)
    {
      [v4 decodeFloatForKey:@"confidence"];
      self = [(VNEntityIdentificationModelPrediction *)self initWithObservation:v6 entityUniqueIdentifier:v5 confidence:?];
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (VNEntityIdentificationModelPrediction)initWithObservation:(id)a3 entityUniqueIdentifier:(id)a4 confidence:(float)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = VNEntityIdentificationModelPrediction;
  v11 = [(VNEntityIdentificationModelPrediction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_observation, a3);
    objc_storeStrong(&v12->_entityUniqueIdentifier, a4);
    v12->_confidence = a5;
  }

  return v12;
}

@end