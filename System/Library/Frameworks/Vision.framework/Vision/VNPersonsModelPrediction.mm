@interface VNPersonsModelPrediction
- (BOOL)isEqual:(id)a3;
- (VNPersonsModelPrediction)initWithCoder:(id)a3;
- (VNPersonsModelPrediction)initWithFaceObservation:(id)a3 predictedPersonUniqueIdentifier:(id)a4 confidence:(float)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNPersonsModelPrediction

- (id)description
{
  v8.receiver = self;
  v8.super_class = VNPersonsModelPrediction;
  v3 = [(VNPersonsModelPrediction *)&v8 description];
  v4 = [(VNPersonsModelPrediction *)self predictedPersonUniqueIdentifier];
  [(VNPersonsModelPrediction *)self confidence];
  v6 = [v3 stringByAppendingFormat:@" '%@' confidence %f", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(VNFaceObservation *)self->_faceObservation hash]^ __ROR8__([self->_predictedPersonUniqueIdentifier hash]^ __ROR8__([(VNFaceObservation *)self->_faceObservation hash], 51), 51);
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
      [(VNPersonsModelPrediction *)self confidence];
      v7 = v6;
      [(VNPersonsModelPrediction *)v5 confidence];
      if (v7 == v8 && (-[VNPersonsModelPrediction predictedPersonUniqueIdentifier](self, "predictedPersonUniqueIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), -[VNPersonsModelPrediction predictedPersonUniqueIdentifier](v5, "predictedPersonUniqueIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, (v11 & 1) != 0))
      {
        v12 = [(VNPersonsModelPrediction *)self faceObservation];
        v13 = [(VNPersonsModelPrediction *)v5 faceObservation];
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
  v5 = a3;
  [v5 encodeObject:self->_faceObservation forKey:@"face"];
  [v5 vn_encodePersonUniqueIdentifier:self->_predictedPersonUniqueIdentifier forKey:@"personUID"];
  *&v4 = self->_confidence;
  [v5 encodeFloat:@"confidence" forKey:v4];
}

- (VNPersonsModelPrediction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 vn_decodePersonUniqueIdentifierForKey:@"personUID"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"face"];
    if (v6)
    {
      [v4 decodeFloatForKey:@"confidence"];
      self = [(VNPersonsModelPrediction *)self initWithFaceObservation:v6 predictedPersonUniqueIdentifier:v5 confidence:?];
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

- (VNPersonsModelPrediction)initWithFaceObservation:(id)a3 predictedPersonUniqueIdentifier:(id)a4 confidence:(float)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = VNPersonsModelPrediction;
  v11 = [(VNPersonsModelPrediction *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_faceObservation, a3);
    objc_storeStrong(&v12->_predictedPersonUniqueIdentifier, a4);
    v12->_confidence = a5;
    v13 = v12;
  }

  return v12;
}

@end