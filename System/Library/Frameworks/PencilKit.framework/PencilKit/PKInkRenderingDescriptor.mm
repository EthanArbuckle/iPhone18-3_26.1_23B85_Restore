@interface PKInkRenderingDescriptor
- (PKInkRenderingDescriptor)initWithType:(unint64_t)type blendMode:(unint64_t)mode alternateMode:(unint64_t)alternateMode particleDescriptor:(id)descriptor secondaryParticleDescriptor:(id)particleDescriptor;
- (id)mutableCopy;
@end

@implementation PKInkRenderingDescriptor

- (PKInkRenderingDescriptor)initWithType:(unint64_t)type blendMode:(unint64_t)mode alternateMode:(unint64_t)alternateMode particleDescriptor:(id)descriptor secondaryParticleDescriptor:(id)particleDescriptor
{
  descriptorCopy = descriptor;
  particleDescriptorCopy = particleDescriptor;
  v18.receiver = self;
  v18.super_class = PKInkRenderingDescriptor;
  v15 = [(PKInkRenderingDescriptor *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = type;
    v15->_blendMode = mode;
    v15->_alternateMode = alternateMode;
    objc_storeStrong(&v15->_particleDescriptor, descriptor);
    objc_storeStrong(&v16->_secondaryParticleDescriptor, particleDescriptor);
  }

  return v16;
}

- (id)mutableCopy
{
  v3 = [PKInkRenderingDescriptor alloc];
  type = self->_type;
  blendMode = self->_blendMode;
  alternateMode = self->_alternateMode;
  particleDescriptor = self->_particleDescriptor;
  secondaryParticleDescriptor = self->_secondaryParticleDescriptor;

  return [(PKInkRenderingDescriptor *)v3 initWithType:type blendMode:blendMode alternateMode:alternateMode particleDescriptor:particleDescriptor secondaryParticleDescriptor:secondaryParticleDescriptor];
}

@end