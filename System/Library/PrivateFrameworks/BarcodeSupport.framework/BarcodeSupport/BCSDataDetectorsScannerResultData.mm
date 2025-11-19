@interface BCSDataDetectorsScannerResultData
- (BCSDataDetectorsScannerResultData)initWithCoder:(id)a3;
- (BCSDataDetectorsScannerResultData)initWithScannerResult:(id)a3 type:(int64_t)a4 extraPreviewText:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSDataDetectorsScannerResultData

- (BCSDataDetectorsScannerResultData)initWithScannerResult:(id)a3 type:(int64_t)a4 extraPreviewText:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = BCSDataDetectorsScannerResultData;
  v11 = [(BCSDataDetectorsScannerResultData *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_scannerResult, a3);
    v12->_type = a4;
    v13 = [v10 copy];
    extraPreviewText = v12->_extraPreviewText;
    v12->_extraPreviewText = v13;

    v15 = v12;
  }

  return v12;
}

- (BCSDataDetectorsScannerResultData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 _bcs_strictlyDecodeObjectOfClass:getDDScannerResultClass() forKey:@"scannerResult"];
  v6 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v7 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"extraPreviewText"];

  v8 = -[BCSDataDetectorsScannerResultData initWithScannerResult:type:extraPreviewText:](self, "initWithScannerResult:type:extraPreviewText:", v5, [v6 integerValue], v7);
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  scannerResult = self->_scannerResult;
  v5 = a3;
  [v5 encodeObject:scannerResult forKey:@"scannerResult"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_extraPreviewText forKey:@"extraPreviewText"];
}

@end