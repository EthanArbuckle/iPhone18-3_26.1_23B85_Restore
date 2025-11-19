@interface MTLSamplerDescriptorInternal
- (BOOL)isEqual:(id)a3;
- (MTLSamplerDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setForceResourceIndex:(BOOL)a3;
- (void)setForceSeamsOnCubemapFiltering:(BOOL)a3;
- (void)setLabel:(id)a3;
- (void)setLodAverage:(BOOL)a3;
- (void)setMagFilter:(unint64_t)a3;
- (void)setMaxAnisotropy:(unint64_t)a3;
- (void)setMinFilter:(unint64_t)a3;
- (void)setMipFilter:(unint64_t)a3;
- (void)setNormalizedCoordinates:(BOOL)a3;
- (void)setSupportArgumentBuffers:(BOOL)a3;
@end

@implementation MTLSamplerDescriptorInternal

- (MTLSamplerDescriptorInternal)init
{
  v4.receiver = self;
  v4.super_class = MTLSamplerDescriptorInternal;
  result = [(MTLSamplerDescriptorInternal *)&v4 init];
  if (result)
  {
    miscHash = result->_private.var0.miscHash;
    *&result->_private.var1.lodMinClampHash = 0x7F7FFFFF00000000;
    result->_private.var3.lodBiasHash = 0;
    result->_private.maxAnisotropy = 1;
    result->_private.label = 0;
    result->_private.resourceIndex = 0;
    *result->_private.customBorderColorValue = 0;
    *&result->_private.customBorderColorValue[2] = 0;
    result->_private.pixelFormat = 0;
    result->_private.var0.miscHash = miscHash & 0xF8000000 | 0x8000;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLSamplerDescriptorInternal;
  [(MTLSamplerDescriptorInternal *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    p_private = &self->_private;
    v8 = *(v5 + 16) & 0xFFFFFFFC | p_private->var0.miscHash & 3;
    *(v5 + 16) = v8;
    v9 = v8 & 0xFFFFFFF3 | (4 * ((p_private->var0.miscHash >> 2) & 3));
    *(v5 + 16) = v9;
    v10 = v9 & 0xFFFFFFCF | (16 * ((p_private->var0.miscHash >> 4) & 3));
    *(v5 + 16) = v10;
    *(v5 + 32) = p_private->maxAnisotropy;
    v11 = v10 & 0xFFFFFE3F | (((p_private->var0.miscHash >> 6) & 7) << 6);
    *(v5 + 16) = v11;
    v12 = v11 & 0xFFFFF1FF | (((p_private->var0.miscHash >> 9) & 7) << 9);
    *(v5 + 16) = v12;
    v13 = v12 & 0xFFFF8FFF | (((p_private->var0.miscHash >> 12) & 7) << 12);
    *(v5 + 16) = v13;
    v14 = v13 & 0xFFFF7FFF | (((p_private->var0.miscHash >> 15) & 1) << 15);
    *(v5 + 16) = v14;
    v15 = v14 & 0xFFFCFFFF | ((HIWORD(p_private->var0.miscHash) & 3) << 16);
    *(v5 + 16) = v15;
    *(v5 + 20) = p_private->var1.lodMinClampHash;
    *(v5 + 24) = p_private->var2.lodMaxClampHash;
    *(v5 + 28) = p_private->var3.lodBiasHash;
    v16 = v15 & 0xFFFBFFFF | (((p_private->var0.miscHash >> 18) & 1) << 18);
    *(v5 + 16) = v16;
    v17 = v16 & 0xFFC7FFFF | (((p_private->var0.miscHash >> 19) & 7) << 19);
    *(v5 + 16) = v17;
    v18 = v17 & 0xFFBFFFFF | (((p_private->var0.miscHash >> 22) & 1) << 22);
    *(v5 + 16) = v18;
    v19 = v18 & 0xFE7FFFFF | (((p_private->var0.miscHash >> 23) & 3) << 23);
    *(v5 + 16) = v19;
    *(v5 + 56) = p_private->customBorderColorValue[0];
    *(v5 + 60) = p_private->customBorderColorValue[1];
    *(v5 + 64) = p_private->customBorderColorValue[2];
    *(v5 + 68) = p_private->customBorderColorValue[3];
    v20 = v19 & 0xFBFFFFFF | (((p_private->var0.miscHash >> 26) & 1) << 26);
    *(v5 + 16) = v20;
    *(v5 + 16) = v20 & 0xFDFFFFFF | (((p_private->var0.miscHash >> 25) & 1) << 25);
    label = p_private->label;
    v6[6] = p_private->resourceIndex;
    v6[5] = [(NSString *)label copyWithZone:a3];
    v6[9] = p_private->pixelFormat;
  }

  return v6;
}

- (id)formattedDescription:(unint64_t)a3
{
  v23[72] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v22.receiver = self;
  v22.super_class = MTLSamplerDescriptorInternal;
  v6 = [(MTLSamplerDescriptorInternal *)&v22 description];
  v23[0] = v4;
  v23[1] = @"label =";
  p_private = &self->_private;
  label = @"<none>";
  maxAnisotropy = p_private->maxAnisotropy;
  if (p_private->label)
  {
    label = p_private->label;
  }

  miscHash = p_private->var0.miscHash;
  v11 = off_1E6EEBBE8[miscHash & 3];
  v23[4] = @"minFilter =";
  v23[5] = v11;
  v23[6] = v4;
  v23[7] = @"magFilter =";
  v12 = off_1E6EEBBE8[(miscHash >> 2) & 3];
  v23[2] = label;
  v23[3] = v4;
  v23[8] = v12;
  v23[9] = v4;
  v13 = off_1E6EEBBA8[(miscHash >> 4) & 3];
  v23[10] = @"mipFilter =";
  v23[11] = v13;
  v23[12] = v4;
  v23[13] = @"maxAnisotropy =";
  v23[14] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:maxAnisotropy];
  v23[15] = v4;
  v23[16] = @"sAddressMode =";
  v14 = p_private->var0.miscHash;
  v23[17] = MTLSamplerAddressModeString(((v14 >> 6) & 7));
  v23[18] = v4;
  v23[19] = @"tAddressMode =";
  v23[20] = MTLSamplerAddressModeString(((v14 >> 9) & 7));
  v23[21] = v4;
  v23[22] = @"rAddressMode =";
  v23[23] = MTLSamplerAddressModeString(((v14 >> 12) & 7));
  v23[24] = v4;
  v23[25] = @"normalizedCoordinates =";
  v23[26] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v14 >> 15) & 1];
  v23[27] = v4;
  v15 = off_1E6EEBC08[HIWORD(p_private->var0.miscHash) & 3];
  v23[28] = @"borderColor =";
  v23[29] = v15;
  v23[30] = v4;
  v23[31] = @"borderColorcustomValue0 =";
  v23[32] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:p_private->customBorderColorValue[0]];
  v23[33] = v4;
  v23[34] = @"borderColorcustomValue1 =";
  v23[35] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:p_private->customBorderColorValue[1]];
  v23[36] = v4;
  v23[37] = @"borderColorcustomValue2 =";
  v23[38] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:p_private->customBorderColorValue[2]];
  v23[39] = v4;
  v23[40] = @"borderColorcustomValue3 =";
  v23[41] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:p_private->customBorderColorValue[3]];
  v23[42] = v4;
  v23[43] = @"forceSeamsOnCubemapFiltering =";
  v23[44] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(p_private->var0.miscHash >> 26) & 1];
  v23[45] = v4;
  v23[46] = @"lodMinClamp =";
  LODWORD(v16) = p_private->var1.lodMinClampHash;
  v23[47] = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  v23[48] = v4;
  v23[49] = @"lodMaxClamp =";
  LODWORD(v17) = p_private->var2.lodMaxClampHash;
  v23[50] = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v23[51] = v4;
  v23[52] = @"lodAverage =";
  v23[53] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(p_private->var0.miscHash >> 18) & 1];
  v23[54] = v4;
  v23[55] = @"compareFunction =";
  v23[56] = MTLCompareFunctionString((p_private->var0.miscHash >> 19) & 7);
  v23[57] = v4;
  v23[58] = @"supportArgumentBuffers =";
  v23[59] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(p_private->var0.miscHash >> 22) & 1];
  v23[60] = v4;
  v18 = p_private->var0.miscHash;
  v19 = off_1E6EEBBC8[(v18 >> 23) & 3];
  v23[61] = @"reductionMode =";
  v23[62] = v19;
  v23[63] = v4;
  v23[64] = @"forceResourceIndex =";
  v23[65] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v18 >> 25) & 1];
  v23[66] = v4;
  v23[67] = @"resourceIndex =";
  v23[68] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:p_private->resourceIndex];
  v23[69] = v4;
  v23[70] = @"pixelFormat =";
  v23[71] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(p_private->pixelFormat)];
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v23, 72), "componentsJoinedByString:", @" "];
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setMinFilter:(unint64_t)a3
{
  if (!_MTLIsInternalBuild())
  {
    goto LABEL_7;
  }

  if ([MTLSamplerDescriptorInternal setMinFilter:]::onceToken != -1)
  {
    [MTLSamplerDescriptorInternal setMinFilter:];
  }

  if (a3 == 1 && ([MTLSamplerDescriptorInternal setMinFilter:]::forceMinFilterLinearToNearest & 1) != 0)
  {
    v5 = self->_private.var0.miscHash & 0xFFFFFFFC;
  }

  else
  {
LABEL_7:
    v5 = self->_private.var0.miscHash & 0xFFFFFFFC | a3 & 3;
  }

  self->_private.var0.miscHash = v5;
}

uint64_t __45__MTLSamplerDescriptorInternal_setMinFilter___block_invoke()
{
  result = MTLGetEnvDefault("MTL_FORCE_MIN_FILTER_LINEAR_TO_NEAREST", 0);
  [MTLSamplerDescriptorInternal setMinFilter:]::forceMinFilterLinearToNearest = result != 0;
  return result;
}

- (void)setMagFilter:(unint64_t)a3
{
  if (!_MTLIsInternalBuild())
  {
    goto LABEL_7;
  }

  if ([MTLSamplerDescriptorInternal setMagFilter:]::onceToken != -1)
  {
    [MTLSamplerDescriptorInternal setMagFilter:];
  }

  if (a3 == 1 && ([MTLSamplerDescriptorInternal setMagFilter:]::forceMagFilterLinearToNearest & 1) != 0)
  {
    v5 = self->_private.var0.miscHash & 0xFFFFFFF3;
  }

  else
  {
LABEL_7:
    v5 = self->_private.var0.miscHash & 0xFFFFFFF3 | (4 * (a3 & 3));
  }

  self->_private.var0.miscHash = v5;
}

uint64_t __45__MTLSamplerDescriptorInternal_setMagFilter___block_invoke()
{
  result = MTLGetEnvDefault("MTL_FORCE_MAG_FILTER_LINEAR_TO_NEAREST", 0);
  [MTLSamplerDescriptorInternal setMagFilter:]::forceMagFilterLinearToNearest = result != 0;
  return result;
}

- (void)setMipFilter:(unint64_t)a3
{
  if (!_MTLIsInternalBuild())
  {
    goto LABEL_7;
  }

  if ([MTLSamplerDescriptorInternal setMipFilter:]::onceToken != -1)
  {
    [MTLSamplerDescriptorInternal setMipFilter:];
  }

  if (a3 == 2 && ([MTLSamplerDescriptorInternal setMipFilter:]::forceMipFilterLinearToNearest & 1) != 0)
  {
    v5 = 16;
  }

  else
  {
LABEL_7:
    v5 = 16 * (a3 & 3);
  }

  self->_private.var0.miscHash = self->_private.var0.miscHash & 0xFFFFFFCF | v5;
}

uint64_t __45__MTLSamplerDescriptorInternal_setMipFilter___block_invoke()
{
  result = MTLGetEnvDefault("MTL_FORCE_MIP_FILTER_LINEAR_TO_NEAREST", 0);
  [MTLSamplerDescriptorInternal setMipFilter:]::forceMipFilterLinearToNearest = result != 0;
  return result;
}

- (void)setMaxAnisotropy:(unint64_t)a3
{
  if (_MTLIsInternalBuild())
  {
    if ([MTLSamplerDescriptorInternal setMaxAnisotropy:]::onceToken != -1)
    {
      [MTLSamplerDescriptorInternal setMaxAnisotropy:];
    }

    if ([MTLSamplerDescriptorInternal setMaxAnisotropy:]::maxAnisotropyCap >= a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = [MTLSamplerDescriptorInternal setMaxAnisotropy:]::maxAnisotropyCap;
    }

    if ([MTLSamplerDescriptorInternal setMaxAnisotropy:]::maxAnisotropyCap)
    {
      a3 = v5;
    }
  }

  self->_private.maxAnisotropy = a3;
}

uint64_t __49__MTLSamplerDescriptorInternal_setMaxAnisotropy___block_invoke()
{
  result = MTLGetEnvDefault("MTL_CAP_MAX_ANISOTROPY", 0);
  [MTLSamplerDescriptorInternal setMaxAnisotropy:]::maxAnisotropyCap = result;
  return result;
}

- (void)setForceSeamsOnCubemapFiltering:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_private.var0.miscHash = self->_private.var0.miscHash & 0xFBFFFFFF | v3;
}

- (void)setNormalizedCoordinates:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_private.var0.miscHash = self->_private.var0.miscHash & 0xFFFF7FFF | v3;
}

- (void)setLodAverage:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_private.var0.miscHash = self->_private.var0.miscHash & 0xFFFBFFFF | v3;
}

- (void)setSupportArgumentBuffers:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_private.var0.miscHash = self->_private.var0.miscHash & 0xFFBFFFFF | v3;
}

- (void)setForceResourceIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_private.var0.miscHash = self->_private.var0.miscHash & 0xFDFFFFFF | v3;
}

- (void)setLabel:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLSamplerDescriptorInternal *)isKindOfClass setLabel:v11, v12, v13, v14, v15, v16, v17, v20];
    }
  }

  else
  {
    [(MTLSamplerDescriptorInternal *)self setLabel:a2, 0, v3, v4, v5, v6, v7, v20];
  }

  p_private = &self->_private;
  label = p_private->label;
  if (label != a3)
  {

    p_private->label = [a3 copy];
  }
}

- (unint64_t)hash
{
  p_private = &self->_private;
  v7 = *&self->_private.var0.var0;
  maxAnisotropy = self->_private.maxAnisotropy;
  v4 = [(NSString *)self->_private.label hash];
  v5 = veorq_s8(v7, *p_private->customBorderColorValue);
  *v5.i8 = veor_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  return p_private->resourceIndex ^ p_private->pixelFormat ^ v4 ^ (v5.i32[0] ^ v5.i32[1]) ^ (maxAnisotropy << 16);
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  result = Class == object_getClass(a3) && (p_private = &self->_private, v7 = (a3 + 16), p_private->var0.miscHash == *v7) && p_private->var1.lodMinClamp == v7[1] && p_private->var2.lodMaxClamp == v7[2] && p_private->var3.lodBias == v7[3] && p_private->maxAnisotropy == *(v7 + 2) && ((label = p_private->label, label == *(v7 + 3)) || [(NSString *)label isEqual:?]) && p_private->customBorderColorValue[0] == *(v7 + 10) && p_private->customBorderColorValue[1] == *(v7 + 11) && p_private->customBorderColorValue[2] == *(v7 + 12) && p_private->customBorderColorValue[3] == *(v7 + 13) && p_private->pixelFormat == *(v7 + 7) && p_private->resourceIndex == *(v7 + 4);
  return result;
}

@end