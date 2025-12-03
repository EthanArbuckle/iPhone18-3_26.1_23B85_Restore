@interface BCSDataDetectorsScannerResultData
- (BCSDataDetectorsScannerResultData)initWithCoder:(id)coder;
- (BCSDataDetectorsScannerResultData)initWithScannerResult:(id)result type:(int64_t)type extraPreviewText:(id)text;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSDataDetectorsScannerResultData

- (BCSDataDetectorsScannerResultData)initWithScannerResult:(id)result type:(int64_t)type extraPreviewText:(id)text
{
  resultCopy = result;
  textCopy = text;
  v17.receiver = self;
  v17.super_class = BCSDataDetectorsScannerResultData;
  v11 = [(BCSDataDetectorsScannerResultData *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_scannerResult, result);
    v12->_type = type;
    v13 = [textCopy copy];
    extraPreviewText = v12->_extraPreviewText;
    v12->_extraPreviewText = v13;

    v15 = v12;
  }

  return v12;
}

- (BCSDataDetectorsScannerResultData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy _bcs_strictlyDecodeObjectOfClass:getDDScannerResultClass() forKey:@"scannerResult"];
  v6 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v7 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"extraPreviewText"];

  v8 = -[BCSDataDetectorsScannerResultData initWithScannerResult:type:extraPreviewText:](self, "initWithScannerResult:type:extraPreviewText:", v5, [v6 integerValue], v7);
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  scannerResult = self->_scannerResult;
  coderCopy = coder;
  [coderCopy encodeObject:scannerResult forKey:@"scannerResult"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_extraPreviewText forKey:@"extraPreviewText"];
}

@end