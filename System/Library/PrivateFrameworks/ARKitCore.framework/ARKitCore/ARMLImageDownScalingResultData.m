@interface ARMLImageDownScalingResultData
- (ARMLImageDownScalingResultData)initWithResultDataArray:(id)a3 timestamp:(double)a4 rotationOfResultTensor:(int64_t)a5 originalImageData:(id)a6;
- (BOOL)isEqual:(id)a3;
@end

@implementation ARMLImageDownScalingResultData

- (ARMLImageDownScalingResultData)initWithResultDataArray:(id)a3 timestamp:(double)a4 rotationOfResultTensor:(int64_t)a5 originalImageData:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = ARMLImageDownScalingResultData;
  v13 = [(ARMLImageDownScalingResultData *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_downScalingResults, a3);
    v14->_timestamp = a4;
    v14->_rotationOfResultTensor = a5;
    objc_storeStrong(&v14->_originalImageData, a6);
    v14->_isDroppedData = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [v5 downScalingResults];
    v7 = [v6 isEqual:self->_downScalingResults];
    v11 = v7 && ([v5 timestamp], v8 == self->_timestamp) && objc_msgSend(v5, "rotationOfResultTensor") == self->_rotationOfResultTensor && (objc_msgSend(v5, "originalImageData"), v9 = ;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end