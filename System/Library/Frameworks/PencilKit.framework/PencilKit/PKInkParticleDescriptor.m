@interface PKInkParticleDescriptor
+ (PKInkParticleDescriptor)particleDescriptorWithName:(id)a3 particleSpacing:(double)a4 particleCount:(int64_t)a5 particleSize:(CGSize)a6 particleRotation:(unint64_t)a7;
+ (PKInkParticleDescriptor)particleDescriptorWithName:(id)a3 texture:(CGImage *)a4 particleSpacing:(double)a5 particleCount:(int64_t)a6 particleSize:(CGSize)a7 particleRotation:(unint64_t)a8;
+ (id)arrayFromVector:()vector<double;
- (CGSize)particleSize;
- (PKInkParticleDescriptor)initWithTextureName:(id)a3 textureImage:(CGImage *)a4 maskTextureName:(id)a5 maskTextureImage:(CGImage *)a6 particleSpacing:(double)a7 particleCount:(int64_t)a8 particleSize:(CGSize)a9 particleRotation:(unint64_t)a10 maskScale:(double)a11 maskScaleConstant:(double)a12 maskMovement:(double)a13 maskDepth:(double)a14 initialRandomRotation:(BOOL)a15 maskInitialRandomOffset:(BOOL)a16 adjustEndCapParticleAlpha:(BOOL)a17 particleBlendMode:(unint64_t)a18;
- (double)particleSpacingForRadius:(double)a3;
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

- (PKInkParticleDescriptor)initWithTextureName:(id)a3 textureImage:(CGImage *)a4 maskTextureName:(id)a5 maskTextureImage:(CGImage *)a6 particleSpacing:(double)a7 particleCount:(int64_t)a8 particleSize:(CGSize)a9 particleRotation:(unint64_t)a10 maskScale:(double)a11 maskScaleConstant:(double)a12 maskMovement:(double)a13 maskDepth:(double)a14 initialRandomRotation:(BOOL)a15 maskInitialRandomOffset:(BOOL)a16 adjustEndCapParticleAlpha:(BOOL)a17 particleBlendMode:(unint64_t)a18
{
  height = a9.height;
  width = a9.width;
  v32 = a3;
  v33 = a5;
  v37.receiver = self;
  v37.super_class = PKInkParticleDescriptor;
  v34 = [(PKInkParticleDescriptor *)&v37 init];
  v35 = v34;
  if (v34)
  {
    objc_storeStrong(&v34->_textureName, a3);
    v35->_textureImage = a4;
    objc_storeStrong(&v35->_maskTextureName, a5);
    v35->_maskTextureImage = a6;
    v35->_particleSpacing = a7;
    v35->_particleSize.width = width;
    v35->_particleSize.height = height;
    v35->_particleCount = a8;
    v35->_particleRotation = a10;
    v35->_maskScale = a11;
    v35->_maskScaleConstant = a12;
    v35->_maskMovement = a13;
    v35->_maskDepth = a14;
    v35->_initialRandomRotation = a15;
    v35->_maskInitialRandomOffset = a16;
    v35->_adjustEndCapParticleAlpha = a17;
    v35->_particleBlendMode = a18;
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

+ (PKInkParticleDescriptor)particleDescriptorWithName:(id)a3 particleSpacing:(double)a4 particleCount:(int64_t)a5 particleSize:(CGSize)a6 particleRotation:(unint64_t)a7
{
  height = a6.height;
  width = a6.width;
  v12 = a3;
  v13 = objc_alloc_init(PKInkParticleDescriptor);
  [(PKInkParticleDescriptor *)v13 setTextureName:v12];
  [(PKInkParticleDescriptor *)v13 setParticleSpacing:a4];
  [(PKInkParticleDescriptor *)v13 setParticleCount:a5];
  [(PKInkParticleDescriptor *)v13 setParticleSize:width, height];
  [(PKInkParticleDescriptor *)v13 setParticleRotation:a7];

  return v13;
}

+ (PKInkParticleDescriptor)particleDescriptorWithName:(id)a3 texture:(CGImage *)a4 particleSpacing:(double)a5 particleCount:(int64_t)a6 particleSize:(CGSize)a7 particleRotation:(unint64_t)a8
{
  height = a7.height;
  width = a7.width;
  v14 = a3;
  v15 = objc_alloc_init(PKInkParticleDescriptor);
  [(PKInkParticleDescriptor *)v15 setTextureImage:a4];
  [(PKInkParticleDescriptor *)v15 setTextureName:v14];
  [(PKInkParticleDescriptor *)v15 setParticleSpacing:a5];
  [(PKInkParticleDescriptor *)v15 setParticleCount:a6];
  [(PKInkParticleDescriptor *)v15 setParticleSize:width, height];
  [(PKInkParticleDescriptor *)v15 setParticleRotation:a8];

  return v15;
}

- (double)particleSpacingForRadius:(double)a3
{
  [(PKInkParticleDescriptor *)self particleSpacing];
  v6 = v5;
  if (*[(PKInkParticleDescriptor *)self particleSpacingFunction])
  {
    v7 = [(PKInkParticleDescriptor *)self particleSpacingFunction];
    v8 = (***v7)(*v7, a3, 0.0);
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
  v4 = [MEMORY[0x1E695DF70] array];
  begin = a3->__begin_;
  if (a3->__end_ != a3->__begin_)
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:begin[v6]];
      [v4 addObject:v7];

      ++v6;
      begin = a3->__begin_;
    }

    while (v6 < a3->__end_ - a3->__begin_);
  }

  return v4;
}

@end