@interface ARMLImageDownScalingResultData
- (ARMLImageDownScalingResultData)initWithResultDataArray:(id)array timestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor originalImageData:(id)data;
- (BOOL)isEqual:(id)equal;
@end

@implementation ARMLImageDownScalingResultData

- (ARMLImageDownScalingResultData)initWithResultDataArray:(id)array timestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor originalImageData:(id)data
{
  arrayCopy = array;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = ARMLImageDownScalingResultData;
  v13 = [(ARMLImageDownScalingResultData *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_downScalingResults, array);
    v14->_timestamp = timestamp;
    v14->_rotationOfResultTensor = tensor;
    objc_storeStrong(&v14->_originalImageData, data);
    v14->_isDroppedData = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    downScalingResults = [v5 downScalingResults];
    v7 = [downScalingResults isEqual:self->_downScalingResults];
    v11 = v7 && ([v5 timestamp], v8 == self->_timestamp) && objc_msgSend(v5, "rotationOfResultTensor") == self->_rotationOfResultTensor && (objc_msgSend(v5, "originalImageData"), v9 = ;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end