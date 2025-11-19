@interface AXSDDetectionResult
- (AXSDDetectionResult)initWithResult:(id)a3;
- (AXSDDetectionResult)initWithTimeStamp:(id)a3 identifier:(id)a4 confidence:(double)a5;
- (NSString)debug;
@end

@implementation AXSDDetectionResult

- (AXSDDetectionResult)initWithTimeStamp:(id)a3 identifier:(id)a4 confidence:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AXSDDetectionResult;
  v11 = [(AXSDDetectionResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timestamp, a3);
    objc_storeStrong(&v12->_identifier, a4);
    v12->_confidence = a5;
  }

  return v12;
}

- (AXSDDetectionResult)initWithResult:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AXSDDetectionResult;
  v5 = [(AXSDDetectionResult *)&v13 init];
  if (v5)
  {
    v6 = [[AXSDTimeStamp alloc] initWithResult:v4];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;
    v8 = v6;

    v9 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v9;

    [v4 confidence];
    v5->_confidence = v11;
  }

  return v5;
}

- (NSString)debug
{
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  [(AXSDTimeStamp *)self->_timestamp time];
  v6 = v5;
  [(AXSDTimeStamp *)self->_timestamp duration];
  return [v3 stringWithFormat:@"Result Identifier: %@, Time Stamp: %f, Duration: %f, Confidence: %f", identifier, v6, v7, *&self->_confidence];
}

@end