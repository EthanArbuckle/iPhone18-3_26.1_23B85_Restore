@interface VNDataDetectorResult
- (VNDataDetectorResult)initWithDDScannerResult:(id)a3 observation:(id)a4;
- (id)debugDescription;
@end

@implementation VNDataDetectorResult

- (id)debugDescription
{
  v7.receiver = self;
  v7.super_class = VNDataDetectorResult;
  v3 = [(VNDataDetectorResult *)&v7 debugDescription];
  v4 = [(VNDataDetectorResult *)self shortDescription];
  v5 = [v3 stringByAppendingFormat:@" shortDescription=%@, type=%ld", v4, -[VNDataDetectorResult type](self, "type")];

  return v5;
}

- (VNDataDetectorResult)initWithDDScannerResult:(id)a3 observation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = VNDataDetectorResult;
  v9 = [(VNDataDetectorResult *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scannerResult, a3);
    objc_storeStrong(&v10->_originalObservation, a4);
    v11 = [v7 matchedString];
    shortDescription = v10->_shortDescription;
    v10->_shortDescription = v11;

    v13 = [v7 value];
    value = v10->_value;
    v10->_value = v13;

    v15 = [v7 category] - 1;
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