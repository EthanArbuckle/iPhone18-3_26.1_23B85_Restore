@interface AXSDDetectionResult
- (AXSDDetectionResult)initWithResult:(id)result;
- (AXSDDetectionResult)initWithTimeStamp:(id)stamp identifier:(id)identifier confidence:(double)confidence;
- (NSString)debug;
@end

@implementation AXSDDetectionResult

- (AXSDDetectionResult)initWithTimeStamp:(id)stamp identifier:(id)identifier confidence:(double)confidence
{
  stampCopy = stamp;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = AXSDDetectionResult;
  v11 = [(AXSDDetectionResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timestamp, stamp);
    objc_storeStrong(&v12->_identifier, identifier);
    v12->_confidence = confidence;
  }

  return v12;
}

- (AXSDDetectionResult)initWithResult:(id)result
{
  resultCopy = result;
  v13.receiver = self;
  v13.super_class = AXSDDetectionResult;
  v5 = [(AXSDDetectionResult *)&v13 init];
  if (v5)
  {
    v6 = [[AXSDTimeStamp alloc] initWithResult:resultCopy];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;
    v8 = v6;

    identifier = [resultCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    [resultCopy confidence];
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