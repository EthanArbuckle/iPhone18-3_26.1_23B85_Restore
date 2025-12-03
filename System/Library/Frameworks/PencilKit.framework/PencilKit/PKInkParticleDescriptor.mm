@interface PKInkParticleDescriptor
+ (PKInkParticleDescriptor)particleDescriptorWithName:(id)name particleSpacing:(double)spacing particleCount:(int64_t)count particleSize:(CGSize)size particleRotation:(unint64_t)rotation;
+ (PKInkParticleDescriptor)particleDescriptorWithName:(id)name texture:(CGImage *)texture particleSpacing:(double)spacing particleCount:(int64_t)count particleSize:(CGSize)size particleRotation:(unint64_t)rotation;
+ (id)arrayFromVector:()vector<double;
- (CGSize)particleSize;
- (PKInkParticleDescriptor)initWithTextureName:(id)name textureImage:(CGImage *)image maskTextureName:(id)textureName maskTextureImage:(CGImage *)textureImage particleSpacing:(double)spacing particleCount:(int64_t)count particleSize:(CGSize)size particleRotation:(unint64_t)self0 maskScale:(double)self1 maskScaleConstant:(double)self2 maskMovement:(double)self3 maskDepth:(double)self4 initialRandomRotation:(BOOL)self5 maskInitialRandomOffset:(BOOL)self6 adjustEndCapParticleAlpha:(BOOL)self7 particleBlendMode:(unint64_t)self8;
- (double)particleSpacingForRadius:(double)radius;
- (id)mutableCopy;
- (void)setParticleSpacingFunction:()unique_ptr<PKFunction;
@end

@implementation PKInkParticleDescriptor

- (CGSize)particleSize
{
  width = self->_particleSize.width;
  height = self->_particleSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PKInkParticleDescriptor)initWithTextureName:(id)name textureImage:(CGImage *)image maskTextureName:(id)textureName maskTextureImage:(CGImage *)textureImage particleSpacing:(double)spacing particleCount:(int64_t)count particleSize:(CGSize)size particleRotation:(unint64_t)self0 maskScale:(double)self1 maskScaleConstant:(double)self2 maskMovement:(double)self3 maskDepth:(double)self4 initialRandomRotation:(BOOL)self5 maskInitialRandomOffset:(BOOL)self6 adjustEndCapParticleAlpha:(BOOL)self7 particleBlendMode:(unint64_t)self8
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  textureNameCopy = textureName;
  v37.receiver = self;
  v37.super_class = PKInkParticleDescriptor;
  v34 = [(PKInkParticleDescriptor *)&v37 init];
  v35 = v34;
  if (v34)
  {
    objc_storeStrong(&v34->_textureName, name);
    v35->_textureImage = image;
    objc_storeStrong(&v35->_maskTextureName, textureName);
    v35->_maskTextureImage = textureImage;
    v35->_particleSpacing = spacing;
    v35->_particleSize.width = width;
    v35->_particleSize.height = height;
    v35->_particleCount = count;
    v35->_particleRotation = rotation;
    v35->_maskScale = scale;
    v35->_maskScaleConstant = constant;
    v35->_maskMovement = movement;
    v35->_maskDepth = depth;
    v35->_initialRandomRotation = randomRotation;
    v35->_maskInitialRandomOffset = offset;
    v35->_adjustEndCapParticleAlpha = alpha;
    v35->_particleBlendMode = mode;
  }

  return v35;
}

- (id)mutableCopy
{
  v3 = [PKInkParticleDescriptor alloc];
  BYTE2(v5) = self->_adjustEndCapParticleAlpha;
  LOWORD(v5) = *&self->_initialRandomRotation;
  return [(PKInkParticleDescriptor *)v3 initWithTextureName:self->_textureName textureImage:self->_textureImage maskTextureName:self->_maskTextureName maskTextureImage:self->_maskTextureImage particleSpacing:self->_particleCount particleCount:self->_particleRotation particleSize:self->_particleSpacing particleRotation:self->_particleSize.width maskScale:self->_particleSize.height maskScaleConstant:self->_maskScale maskMovement:self->_maskScaleConstant maskDepth:self->_maskMovement initialRandomRotation:self->_maskDepth maskInitialRandomOffset:v5 adjustEndCapParticleAlpha:self->_particleBlendMode particleBlendMode:?];
}

+ (PKInkParticleDescriptor)particleDescriptorWithName:(id)name particleSpacing:(double)spacing particleCount:(int64_t)count particleSize:(CGSize)size particleRotation:(unint64_t)rotation
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  v13 = objc_alloc_init(PKInkParticleDescriptor);
  [(PKInkParticleDescriptor *)v13 setTextureName:nameCopy];
  [(PKInkParticleDescriptor *)v13 setParticleSpacing:spacing];
  [(PKInkParticleDescriptor *)v13 setParticleCount:count];
  [(PKInkParticleDescriptor *)v13 setParticleSize:width, height];
  [(PKInkParticleDescriptor *)v13 setParticleRotation:rotation];

  return v13;
}

+ (PKInkParticleDescriptor)particleDescriptorWithName:(id)name texture:(CGImage *)texture particleSpacing:(double)spacing particleCount:(int64_t)count particleSize:(CGSize)size particleRotation:(unint64_t)rotation
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  v15 = objc_alloc_init(PKInkParticleDescriptor);
  [(PKInkParticleDescriptor *)v15 setTextureImage:texture];
  [(PKInkParticleDescriptor *)v15 setTextureName:nameCopy];
  [(PKInkParticleDescriptor *)v15 setParticleSpacing:spacing];
  [(PKInkParticleDescriptor *)v15 setParticleCount:count];
  [(PKInkParticleDescriptor *)v15 setParticleSize:width, height];
  [(PKInkParticleDescriptor *)v15 setParticleRotation:rotation];

  return v15;
}

- (double)particleSpacingForRadius:(double)radius
{
  [(PKInkParticleDescriptor *)self particleSpacing];
  v6 = v5;
  if (*[(PKInkParticleDescriptor *)self particleSpacingFunction])
  {
    particleSpacingFunction = [(PKInkParticleDescriptor *)self particleSpacingFunction];
    v8 = (***particleSpacingFunction)(*particleSpacingFunction, radius, 0.0);
    [(PKInkParticleDescriptor *)self particleSpacing];
    return v8 * v9;
  }

  return v6;
}

- (void)setParticleSpacingFunction:()unique_ptr<PKFunction
{
  v4 = *a3.__ptr_;
  *a3.__ptr_ = 0;
  ptr = self->_particleSpacingFunction.__ptr_;
  self->_particleSpacingFunction.__ptr_ = v4;
  if (ptr)
  {
    (*(*ptr + 40))();
  }
}

+ (id)arrayFromVector:()vector<double
{
  array = [MEMORY[0x1E695DF70] array];
  begin = a3->__begin_;
  if (a3->__end_ != a3->__begin_)
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:begin[v6]];
      [array addObject:v7];

      ++v6;
      begin = a3->__begin_;
    }

    while (v6 < a3->__end_ - a3->__begin_);
  }

  return array;
}

@end