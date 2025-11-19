@interface _ANSTE5MLNetworkStateTensorTuple
- (_ANSTE5MLNetworkStateTensorTuple)initWithInputTensor:(id)a3 outputTensor:(id)a4;
@end

@implementation _ANSTE5MLNetworkStateTensorTuple

- (_ANSTE5MLNetworkStateTensorTuple)initWithInputTensor:(id)a3 outputTensor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _ANSTE5MLNetworkStateTensorTuple;
  v9 = [(_ANSTE5MLNetworkStateTensorTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_networkInputTensor, a3);
    objc_storeStrong(&v10->_networkOutputTensor, a4);
  }

  return v10;
}

@end