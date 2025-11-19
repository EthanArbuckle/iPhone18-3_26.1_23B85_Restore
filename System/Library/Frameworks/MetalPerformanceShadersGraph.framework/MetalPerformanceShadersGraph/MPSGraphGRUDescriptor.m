@interface MPSGraphGRUDescriptor
+ (MPSGraphGRUDescriptor)descriptor;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSGraphGRUDescriptor

+ (MPSGraphGRUDescriptor)descriptor
{
  v2 = objc_alloc_init(MPSGraphGRUDescriptor);
  v2->_reverse = 0;
  v2->_training = 0;
  v2->_bidirectional = 0;
  v2->_hasMask = 0;
  v2->_hasInitState = 0;
  v2->_hasBias2 = 0;
  v2->_resetGateActivation = 3;
  v2->_updateGateActivation = 3;
  v2->_outputGateActivation = 2;
  v2->_resetGateFirst = 0;
  v2->_resetAfter = 0;
  v2->_flipZ = 0;

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [MPSGraphGRUDescriptor alloc];
  *(result + 11) = self->_reverse;
  *(result + 12) = self->_training;
  *(result + 13) = self->_bidirectional;
  *(result + 8) = self->_hasMask;
  *(result + 9) = self->_hasInitState;
  *(result + 10) = self->_hasBias2;
  *(result + 3) = self->_resetGateActivation;
  *(result + 4) = self->_updateGateActivation;
  *(result + 5) = self->_outputGateActivation;
  *(result + 15) = self->_resetGateFirst;
  *(result + 14) = self->_resetAfter;
  *(result + 16) = self->_flipZ;
  return result;
}

@end