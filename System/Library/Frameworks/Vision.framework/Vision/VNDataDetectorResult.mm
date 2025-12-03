@interface VNDataDetectorResult
- (VNDataDetectorResult)initWithDDScannerResult:(id)result observation:(id)observation;
- (id)debugDescription;
@end

@implementation VNDataDetectorResult

- (id)debugDescription
{
  v7.receiver = self;
  v7.super_class = VNDataDetectorResult;
  v3 = [(VNDataDetectorResult *)&v7 debugDescription];
  shortDescription = [(VNDataDetectorResult *)self shortDescription];
  v5 = [v3 stringByAppendingFormat:@" shortDescription=%@, type=%ld", shortDescription, -[VNDataDetectorResult type](self, "type")];

  return v5;
}

- (VNDataDetectorResult)initWithDDScannerResult:(id)result observation:(id)observation
{
  resultCopy = result;
  observationCopy = observation;
  v18.receiver = self;
  v18.super_class = VNDataDetectorResult;
  v9 = [(VNDataDetectorResult *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scannerResult, result);
    objc_storeStrong(&v10->_originalObservation, observation);
    matchedString = [resultCopy matchedString];
    shortDescription = v10->_shortDescription;
    v10->_shortDescription = matchedString;

    value = [resultCopy value];
    value = v10->_value;
    v10->_value = value;

    v15 = [resultCopy category] - 1;
    if (v15 > 3)
    {
      v16 = 0;
    }

    else
    {
      v16 = qword_1A60509E8[v15];
    }

    v10->_type = v16;
  }

  return v10;
}

@end