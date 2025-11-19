@interface MPSNDArrayNormFusionDescriptor
- (MPSNDArrayNormFusionDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSNDArrayNormFusionDescriptor

- (MPSNDArrayNormFusionDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayNormFusionDescriptor;
  result = [(MPSNDArrayNormFusionDescriptor *)&v3 init];
  *&result->_normFusionType = 0x358637BD00000000;
  *&result->_isLeftFused = 1;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 3) = self->_normFusionType;
  *(result + 4) = LODWORD(self->_epsilon);
  *(result + 8) = self->_isLeftFused;
  *(result + 9) = self->_hasScale;
  return result;
}

@end