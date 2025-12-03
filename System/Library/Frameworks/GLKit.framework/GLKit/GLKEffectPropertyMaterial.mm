@interface GLKEffectPropertyMaterial
+ (void)setStaticMasksWithVshRoot:(id)root fshRoot:(id)fshRoot;
- (GLKBigInt_s)_colorMaterialEnabledMask;
- (GLKEffectPropertyMaterial)init;
- (GLKVector4)ambientColor;
- (GLKVector4)diffuseColor;
- (GLKVector4)emissiveColor;
- (GLKVector4)specularColor;
- (id)description;
- (void)bind;
- (void)dealloc;
- (void)initializeMasks;
- (void)setAmbientColor:(GLKVector4)ambientColor;
- (void)setDiffuseColor:(GLKVector4)diffuseColor;
- (void)setEffectDirtyUniforms:(unint64_t *)uniforms;
- (void)setEmissiveColor:(GLKVector4)emissiveColor;
- (void)setShaderBindings;
- (void)setShininess:(GLfloat)shininess;
- (void)setSpecularColor:(GLKVector4)specularColor;
@end

@implementation GLKEffectPropertyMaterial

- (GLKEffectPropertyMaterial)init
{
  v3.receiver = self;
  v3.super_class = GLKEffectPropertyMaterial;
  result = [(GLKEffectProperty *)&v3 init];
  if (result)
  {
    result->_ambientColor = xmmword_238915090;
    result->_diffuseColor = xmmword_2389150F0;
    result->_specularColor = xmmword_238915100;
    result->_emissiveColor = xmmword_238915100;
    result->_shininess = 0.0;
    result->_effectDirtyUniforms = 0;
    result->_colorMaterialEnabledMask.n0 = 0;
    result->_colorMaterialEnabledMask.n1 = 0;
  }

  return result;
}

- (void)setEffectDirtyUniforms:(unint64_t *)uniforms
{
  if (self->_effectDirtyUniforms != uniforms)
  {
    self->_effectDirtyUniforms = uniforms;
    *uniforms |= 0x5000000uLL;
  }
}

- (void)setAmbientColor:(GLKVector4)ambientColor
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  v8 = vceqq_f32(v7, self->_ambientColor);
  *v8.i8 = vand_s8(*&vextq_s8(v8, v8, 8uLL), vand_s8(*v8.i8, 0x100000001));
  if (!vand_s8(vdup_lane_s32(*v8.i8, 1), *v8.i8).u32[0])
  {
    self->_ambientColor.x = v3;
    self->_ambientColor.y = v4;
    self->_ambientColor.z = v5;
    self->_ambientColor.w = v6;
    [(GLKEffectProperty *)self setDirtyUniforms:[(GLKEffectProperty *)self dirtyUniforms:*&ambientColor.x]| 0x1000000];
    effectDirtyUniforms = self->_effectDirtyUniforms;
    if (effectDirtyUniforms)
    {
      *effectDirtyUniforms |= 0x1000000uLL;
    }
  }
}

- (void)setDiffuseColor:(GLKVector4)diffuseColor
{
  v8.i64[0] = __PAIR64__(LODWORD(v5), LODWORD(v4));
  v8.i64[1] = __PAIR64__(LODWORD(v7), LODWORD(v6));
  v9 = vceqq_f32(v8, self->_diffuseColor);
  *v9.i8 = vand_s8(*&vextq_s8(v9, v9, 8uLL), vand_s8(*v9.i8, 0x100000001));
  if (!vand_s8(vdup_lane_s32(*v9.i8, 1), *v9.i8).u32[0])
  {
    self->_diffuseColor.x = v4;
    self->_diffuseColor.y = v5;
    self->_diffuseColor.z = v6;
    self->_diffuseColor.w = v7;
    v11 = [(GLKEffectProperty *)self dirtyUniforms:*&diffuseColor.x]| 0x2000000;

    [(GLKEffectProperty *)self setDirtyUniforms:v11];
  }
}

- (void)setEmissiveColor:(GLKVector4)emissiveColor
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  v8 = vceqq_f32(v7, self->_emissiveColor);
  *v8.i8 = vand_s8(*&vextq_s8(v8, v8, 8uLL), vand_s8(*v8.i8, 0x100000001));
  if (!vand_s8(vdup_lane_s32(*v8.i8, 1), *v8.i8).u32[0])
  {
    self->_emissiveColor.x = v3;
    self->_emissiveColor.y = v4;
    self->_emissiveColor.z = v5;
    self->_emissiveColor.w = v6;
    [(GLKEffectProperty *)self setDirtyUniforms:[(GLKEffectProperty *)self dirtyUniforms:*&emissiveColor.x]| 0x4000000];
    effectDirtyUniforms = self->_effectDirtyUniforms;
    if (effectDirtyUniforms)
    {
      *effectDirtyUniforms |= 0x4000000uLL;
    }
  }
}

- (void)initializeMasks
{
  *self->super._prv = [*(self->super._prv + 4) vshMask];
  *(self->super._prv + 2) = [*(self->super._prv + 4) fshMask];
  v3 = &_staticFshMasks_0;
  v4 = &_staticVshMasks_1;
  if (self->_specularColor.x == 0.0 && self->_specularColor.y == 0.0 && self->_specularColor.z == 0.0 && self->_specularColor.w == 1.0)
  {
    v5 = &qword_27DF408A8;
    v6 = &qword_27DF40898;
    v7 = &_staticFshMasks_0;
    v3 = &qword_27DF408A0;
    v8 = &qword_27DF40888;
    v9 = &qword_27DF40878;
    v10 = &_staticVshMasks_1;
    v4 = &qword_27DF40880;
  }

  else
  {
    v5 = &qword_27DF40898;
    v8 = &qword_27DF40878;
    v6 = &qword_27DF408A8;
    v7 = &qword_27DF408A0;
    v9 = &qword_27DF40888;
    v10 = &qword_27DF40880;
  }

  prv = self->super._prv;
  v12 = *prv;
  v13 = *(*prv + 8) | *v9;
  *v12 = **prv | *v10;
  v12[1] = v13;
  v14 = *(prv + 2);
  v15 = v14[1] | *v6;
  *v14 |= *v7;
  v14[1] = v15;
  v16 = v12[1] & ~*v8;
  *v12 &= ~*v4;
  v12[1] = v16;
  v17 = v14[1] & ~*v5;
  *v14 &= ~*v3;
  v14[1] = v17;

  [(GLKEffectProperty *)self setMasksInitialized:1];
}

- (void)setSpecularColor:(GLKVector4)specularColor
{
  v11.i64[0] = __PAIR64__(LODWORD(v8), LODWORD(v7));
  v11.i64[1] = __PAIR64__(LODWORD(v10), LODWORD(v9));
  v12 = vceqq_f32(v11, self->_specularColor);
  *v12.i8 = vand_s8(*&vextq_s8(v12, v12, 8uLL), vand_s8(*v12.i8, 0x100000001));
  if (!vand_s8(vdup_lane_s32(*v12.i8, 1), *v12.i8).u32[0])
  {
    v31 = v3;
    self->_specularColor.x = v7;
    self->_specularColor.y = v8;
    self->_specularColor.z = v9;
    self->_specularColor.w = v10;
    v14 = &_staticFshMasks_0;
    v15 = &qword_27DF408A8;
    v16 = &_staticVshMasks_1;
    v17 = &qword_27DF408A0;
    v18 = &qword_27DF40888;
    v19 = &qword_27DF40880;
    v20 = &qword_27DF40898;
    v21 = &qword_27DF40878;
    if (v7 == 0.0 && v8 == 0.0 && v9 == 0.0 && v10 == 1.0)
    {
      v19 = &_staticVshMasks_1;
      v18 = &qword_27DF40878;
      v17 = &_staticFshMasks_0;
      v15 = &qword_27DF40898;
      v16 = &qword_27DF40880;
      v21 = &qword_27DF40888;
      v14 = &qword_27DF408A0;
      v20 = &qword_27DF408A8;
    }

    v22 = *self->super._prv;
    v23 = v22[1] | *v18;
    *v22 |= *v19;
    v22[1] = v23;
    v24 = *(self->super._prv + 2);
    v25 = v24[1] | *v15;
    *v24 |= *v17;
    v24[1] = v25;
    v26 = *self->super._prv;
    v27 = v26[1] & ~*v21;
    *v26 &= ~*v16;
    v26[1] = v27;
    v28 = *(self->super._prv + 2);
    v29 = v28[1] & ~*v20;
    *v28 &= ~*v14;
    v28[1] = v29;
    v30 = [(GLKEffectProperty *)self dirtyUniforms:v4]| 0x10000000;

    [(GLKEffectProperty *)self setDirtyUniforms:v30];
  }
}

- (void)setShininess:(GLfloat)shininess
{
  if (self->_shininess != shininess)
  {
    self->_shininess = shininess;
    v5 = [(GLKEffectProperty *)self dirtyUniforms]| 0x8000000;

    [(GLKEffectProperty *)self setDirtyUniforms:v5];
  }
}

- (void)setShaderBindings
{
  params = 0;
  glGetIntegerv(0x8B8Du, &params);
  self->_ambientColorLoc = glGetUniformLocation(params, "material.ambientColor");
  self->_diffuseColorLoc = glGetUniformLocation(params, "material.diffuseColor");
  self->_specularColorLoc = glGetUniformLocation(params, "material.specularColor");
  self->_emissiveColorLoc = glGetUniformLocation(params, "material.emissiveColor");
  self->_shininessLoc = glGetUniformLocation(params, "material.shininess");
  [(GLKEffectPropertyMaterial *)self dirtyAllUniforms];
}

+ (void)setStaticMasksWithVshRoot:(id)root fshRoot:(id)fshRoot
{
  v6 = 0;
  _allVshMasks_0 = 0uLL;
  _allFshMasks_0 = 0uLL;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = &_staticVshMasks_1[2 * v6];
    v10 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", _maskStrs_1[v6], root, [root index]);
    v7 = 0;
    *v9 = v10;
    v9[1] = v11;
    *&_allVshMasks_0 = _allVshMasks_0 | v10;
    *(&_allVshMasks_0 + 1) |= v11;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  v12 = 0;
  v13 = 1;
  do
  {
    v14 = v13;
    v15 = &_staticFshMasks_0[2 * v12];
    v16 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", _maskStrs_1[v12], fshRoot, [fshRoot index]);
    v13 = 0;
    *v15 = v16;
    v15[1] = v17;
    *&_allFshMasks_0 = _allFshMasks_0 | v16;
    *(&_allFshMasks_0 + 1) |= v17;
    v12 = 1;
  }

  while ((v14 & 1) != 0);
}

- (void)bind
{
  if ([(GLKEffectProperty *)self dirtyUniforms])
  {
    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x1000000) != 0)
    {
      glUniform4fv(self->_ambientColorLoc, 1, &self->_ambientColor.x);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x2000000) != 0)
    {
      glUniform4fv(self->_diffuseColorLoc, 1, &self->_diffuseColor.x);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x10000000) != 0)
    {
      glUniform4fv(self->_specularColorLoc, 1, &self->_specularColor.x);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x4000000) != 0)
    {
      glUniform4fv(self->_emissiveColorLoc, 1, &self->_emissiveColor.x);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x8000000) != 0)
    {
      glUniform1f(self->_shininessLoc, self->_shininess);
    }

    [(GLKEffectProperty *)self setDirtyUniforms:0];
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  *&v21.x = [v3 appendFormat:@"%@ = %p\n{\n", objc_msgSend(objc_opt_class(), "description"), self];
  x = self->_ambientColor.x;
  y = self->_ambientColor.y;
  z = self->_ambientColor.z;
  w = self->_ambientColor.w;
  *&v22.x = [v3 appendFormat:@"\tambientColor =   %@\n", NSStringFromGLKVector4(v21)];
  v8 = self->_diffuseColor.x;
  v9 = self->_diffuseColor.y;
  v10 = self->_diffuseColor.z;
  v11 = self->_diffuseColor.w;
  *&v23.x = [v3 appendFormat:@"\tdiffuseColor =   %@\n", NSStringFromGLKVector4(v22)];
  v12 = self->_specularColor.x;
  v13 = self->_specularColor.y;
  v14 = self->_specularColor.z;
  v15 = self->_specularColor.w;
  *&v24.x = [v3 appendFormat:@"\tspecularColor =  %@\n", NSStringFromGLKVector4(v23)];
  v16 = self->_emissiveColor.x;
  v17 = self->_emissiveColor.y;
  v18 = self->_emissiveColor.z;
  v19 = self->_emissiveColor.w;
  [v3 appendFormat:@"\temissiveColor =  %@\n", NSStringFromGLKVector4(v24)];
  [v3 appendFormat:@"\tshininess =      %6.4f\n", self->_shininess];
  [v3 appendFormat:@"}"];
  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GLKEffectPropertyMaterial;
  [(GLKEffectProperty *)&v2 dealloc];
}

- (GLKVector4)ambientColor
{
  x = self->_ambientColor.x;
  y = self->_ambientColor.y;
  z = self->_ambientColor.z;
  w = self->_ambientColor.w;
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

- (GLKVector4)diffuseColor
{
  x = self->_diffuseColor.x;
  y = self->_diffuseColor.y;
  z = self->_diffuseColor.z;
  w = self->_diffuseColor.w;
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

- (GLKVector4)specularColor
{
  x = self->_specularColor.x;
  y = self->_specularColor.y;
  z = self->_specularColor.z;
  w = self->_specularColor.w;
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

- (GLKVector4)emissiveColor
{
  x = self->_emissiveColor.x;
  y = self->_emissiveColor.y;
  z = self->_emissiveColor.z;
  w = self->_emissiveColor.w;
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

- (GLKBigInt_s)_colorMaterialEnabledMask
{
  p_colorMaterialEnabledMask = &self->_colorMaterialEnabledMask;
  n0 = self->_colorMaterialEnabledMask.n0;
  n1 = p_colorMaterialEnabledMask->n1;
  result.n1 = n1;
  result.n0 = n0;
  return result;
}

@end