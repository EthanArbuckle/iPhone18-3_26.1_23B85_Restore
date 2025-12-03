@interface _ANSTE5MLNetworkStateTensorTuple
- (_ANSTE5MLNetworkStateTensorTuple)initWithInputTensor:(id)tensor outputTensor:(id)outputTensor;
@end

@implementation _ANSTE5MLNetworkStateTensorTuple

- (_ANSTE5MLNetworkStateTensorTuple)initWithInputTensor:(id)tensor outputTensor:(id)outputTensor
{
  tensorCopy = tensor;
  outputTensorCopy = outputTensor;
  v12.receiver = self;
  v12.super_class = _ANSTE5MLNetworkStateTensorTuple;
  v9 = [(_ANSTE5MLNetworkStateTensorTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_networkInputTensor, tensor);
    objc_storeStrong(&v10->_networkOutputTensor, outputTensor);
  }

  return v10;
}

@end