@interface ARPRoutePrediction
- (ARPRoutePrediction)initWithOutputDeviceID:(id)a3 confidence:(double)a4;
- (id)description;
@end

@implementation ARPRoutePrediction

- (ARPRoutePrediction)initWithOutputDeviceID:(id)a3 confidence:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ARPRoutePrediction;
  v7 = [(ARPRoutePrediction *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    outputDeviceID = v7->_outputDeviceID;
    v7->_outputDeviceID = v8;

    v7->_confidence = a4;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ARPRoutePrediction *)self outputDeviceID];
  v6 = MEMORY[0x277CCABB0];
  [(ARPRoutePrediction *)self confidence];
  v7 = [v6 numberWithDouble:?];
  v8 = [v3 stringWithFormat:@"<%@ %p> outputDeviceID: %@, confidence: %@", v4, self, v5, v7];

  return v8;
}

@end