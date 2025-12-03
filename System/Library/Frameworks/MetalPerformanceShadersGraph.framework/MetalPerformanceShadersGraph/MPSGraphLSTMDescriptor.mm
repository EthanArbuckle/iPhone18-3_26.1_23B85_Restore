@interface MPSGraphLSTMDescriptor
+ (MPSGraphLSTMDescriptor)descriptor;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSGraphLSTMDescriptor

+ (MPSGraphLSTMDescriptor)descriptor
{
  v2 = objc_alloc_init(MPSGraphLSTMDescriptor);
  v2->_reverse = 0;
  v2->_training = 0;
  v2->_bidirectional = 0;
  v2->_hasMask = 0;
  v2->_hasInitState = 0;
  v2->_hasInitCell = 0;
  v2->_hasPeephole = 0;
  v2->_hasCellGradient = 0;
  v2->_produceCell = 0;
  v2->_forgetGateLast = 0;
  v2->_inputGateActivation = 3;
  v2->_forgetGateActivation = 3;
  v2->_cellGateActivation = 2;
  v2->_outputGateActivation = 3;
  v2->_activation = 2;

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [MPSGraphLSTMDescriptor alloc];
  *(result + 13) = self->_reverse;
  *(result + 14) = self->_training;
  *(result + 15) = self->_bidirectional;
  *(result + 8) = self->_hasMask;
  *(result + 9) = self->_hasInitState;
  *(result + 10) = self->_hasInitCell;
  *(result + 11) = self->_hasPeephole;
  *(result + 12) = self->_hasCellGradient;
  *(result + 16) = self->_produceCell;
  *(result + 17) = self->_forgetGateLast;
  *(result + 4) = self->_inputGateActivation;
  *(result + 5) = self->_forgetGateActivation;
  *(result + 6) = self->_cellGateActivation;
  *(result + 7) = self->_outputGateActivation;
  *(result + 3) = self->_activation;
  return result;
}

@end