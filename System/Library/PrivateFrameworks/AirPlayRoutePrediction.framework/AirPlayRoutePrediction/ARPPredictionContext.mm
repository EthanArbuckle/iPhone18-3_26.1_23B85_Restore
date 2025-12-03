@interface ARPPredictionContext
- (ARPPredictionContext)initWithPredictionDate:(id)date microLocationEventDate:(id)eventDate microLocationProbabilityVector:(id)vector;
- (id)description;
@end

@implementation ARPPredictionContext

- (ARPPredictionContext)initWithPredictionDate:(id)date microLocationEventDate:(id)eventDate microLocationProbabilityVector:(id)vector
{
  dateCopy = date;
  eventDateCopy = eventDate;
  vectorCopy = vector;
  v17.receiver = self;
  v17.super_class = ARPPredictionContext;
  v11 = [(ARPPredictionContext *)&v17 init];
  if (v11)
  {
    v12 = [dateCopy copy];
    predictionDate = v11->_predictionDate;
    v11->_predictionDate = v12;

    v14 = [eventDateCopy copy];
    microLocationEventDate = v11->_microLocationEventDate;
    v11->_microLocationEventDate = v14;

    objc_storeStrong(&v11->_microLocationProbabilityVector, vector);
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  predictionDate = [(ARPPredictionContext *)self predictionDate];
  microLocationEventDate = [(ARPPredictionContext *)self microLocationEventDate];
  microLocationProbabilityVector = [(ARPPredictionContext *)self microLocationProbabilityVector];
  v8 = [v3 stringWithFormat:@"<%@ %p> predictionDate: %@, microLocationEventDate: %@, microLocationProbabilityVector: %@", v4, self, predictionDate, microLocationEventDate, microLocationProbabilityVector];

  return v8;
}

@end