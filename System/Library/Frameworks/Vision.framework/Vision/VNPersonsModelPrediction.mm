@interface VNPersonsModelPrediction
- (BOOL)isEqual:(id)equal;
- (VNPersonsModelPrediction)initWithCoder:(id)coder;
- (VNPersonsModelPrediction)initWithFaceObservation:(id)observation predictedPersonUniqueIdentifier:(id)identifier confidence:(float)confidence;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNPersonsModelPrediction

- (id)description
{
  v8.receiver = self;
  v8.super_class = VNPersonsModelPrediction;
  v3 = [(VNPersonsModelPrediction *)&v8 description];
  predictedPersonUniqueIdentifier = [(VNPersonsModelPrediction *)self predictedPersonUniqueIdentifier];
  [(VNPersonsModelPrediction *)self confidence];
  v6 = [v3 stringByAppendingFormat:@" '%@' confidence %f", predictedPersonUniqueIdentifier, v5];

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
      [(VNPersonsModelPrediction *)self confidence];
      v7 = v6;
      [(VNPersonsModelPrediction *)v5 confidence];
      if (v7 == v8 && (-[VNPersonsModelPrediction predictedPersonUniqueIdentifier](self, "predictedPersonUniqueIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), -[VNPersonsModelPrediction predictedPersonUniqueIdentifier](v5, "predictedPersonUniqueIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, (v11 & 1) != 0))
      {
        faceObservation = [(VNPersonsModelPrediction *)self faceObservation];
        faceObservation2 = [(VNPersonsModelPrediction *)v5 faceObservation];
        v14 = [faceObservation isEqual:faceObservation2];
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
  coderCopy = coder;
  [coderCopy encodeObject:self->_faceObservation forKey:@"face"];
  [coderCopy vn_encodePersonUniqueIdentifier:self->_predictedPersonUniqueIdentifier forKey:@"personUID"];
  *&v4 = self->_confidence;
  [coderCopy encodeFloat:@"confidence" forKey:v4];
}

- (VNPersonsModelPrediction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy vn_decodePersonUniqueIdentifierForKey:@"personUID"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"face"];
    if (v6)
    {
      [coderCopy decodeFloatForKey:@"confidence"];
      self = [(VNPersonsModelPrediction *)self initWithFaceObservation:v6 predictedPersonUniqueIdentifier:v5 confidence:?];
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

- (VNPersonsModelPrediction)initWithFaceObservation:(id)observation predictedPersonUniqueIdentifier:(id)identifier confidence:(float)confidence
{
  observationCopy = observation;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = VNPersonsModelPrediction;
  v11 = [(VNPersonsModelPrediction *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_faceObservation, observation);
    objc_storeStrong(&v12->_predictedPersonUniqueIdentifier, identifier);
    v12->_confidence = confidence;
    v13 = v12;
  }

  return v12;
}

@end