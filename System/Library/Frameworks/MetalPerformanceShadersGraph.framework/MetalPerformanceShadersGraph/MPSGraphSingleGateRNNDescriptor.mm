@interface MPSGraphSingleGateRNNDescriptor
+ (MPSGraphSingleGateRNNDescriptor)descriptor;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSGraphSingleGateRNNDescriptor

+ (MPSGraphSingleGateRNNDescriptor)descriptor
{
  v2 = objc_alloc_init(MPSGraphSingleGateRNNDescriptor);
  v2->_reverse = 0;
  v2->_training = 0;
  v2->_activation = 1;
  v2->_bidirectional = 0;
  v2->_hasMask = 0;
  v2->_hasInitState = 0;

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [MPSGraphSingleGateRNNDescriptor alloc];
  *(result + 10) = self->_reverse;
  *(result + 11) = self->_training;
  *(result + 2) = self->_activation;
  *(result + 12) = self->_bidirectional;
  *(result + 8) = self->_hasMask;
  *(result + 9) = self->_hasInitState;
  return result;
}

@end