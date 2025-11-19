@interface ARPPredictionContext
- (ARPPredictionContext)initWithPredictionDate:(id)a3 microLocationEventDate:(id)a4 microLocationProbabilityVector:(id)a5;
- (id)description;
@end

@implementation ARPPredictionContext

- (ARPPredictionContext)initWithPredictionDate:(id)a3 microLocationEventDate:(id)a4 microLocationProbabilityVector:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ARPPredictionContext;
  v11 = [(ARPPredictionContext *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    predictionDate = v11->_predictionDate;
    v11->_predictionDate = v12;

    v14 = [v9 copy];
    microLocationEventDate = v11->_microLocationEventDate;
    v11->_microLocationEventDate = v14;

    objc_storeStrong(&v11->_microLocationProbabilityVector, a5);
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ARPPredictionContext *)self predictionDate];
  v6 = [(ARPPredictionContext *)self microLocationEventDate];
  v7 = [(ARPPredictionContext *)self microLocationProbabilityVector];
  v8 = [v3 stringWithFormat:@"<%@ %p> predictionDate: %@, microLocationEventDate: %@, microLocationProbabilityVector: %@", v4, self, v5, v6, v7];

  return v8;
}

@end