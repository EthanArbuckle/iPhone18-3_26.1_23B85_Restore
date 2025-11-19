@interface PKInkRenderingDescriptor
- (PKInkRenderingDescriptor)initWithType:(unint64_t)a3 blendMode:(unint64_t)a4 alternateMode:(unint64_t)a5 particleDescriptor:(id)a6 secondaryParticleDescriptor:(id)a7;
- (id)mutableCopy;
@end

@implementation PKInkRenderingDescriptor

- (PKInkRenderingDescriptor)initWithType:(unint64_t)a3 blendMode:(unint64_t)a4 alternateMode:(unint64_t)a5 particleDescriptor:(id)a6 secondaryParticleDescriptor:(id)a7
{
  v13 = a6;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = PKInkRenderingDescriptor;
  v15 = [(PKInkRenderingDescriptor *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = a3;
    v15->_blendMode = a4;
    v15->_alternateMode = a5;
    objc_storeStrong(&v15->_particleDescriptor, a6);
    objc_storeStrong(&v16->_secondaryParticleDescriptor, a7);
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