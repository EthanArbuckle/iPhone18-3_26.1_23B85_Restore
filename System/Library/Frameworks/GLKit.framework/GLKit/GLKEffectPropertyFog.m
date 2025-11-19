@interface GLKEffectPropertyFog
+ (void)setStaticMasksWithVshRoot:(id)a3 fshRoot:(id)a4;
- (GLKEffectPropertyFog)init;
- (GLKVector4)color;
- (id)description;
- (void)bind;
- (void)dealloc;
- (void)initializeMasks;
- (void)setColor:(GLKVector4)color;
- (void)setDensity:(GLfloat)density;
- (void)setEnabled:(GLBOOLean)enabled;
- (void)setEnd:(GLfloat)end;
- (void)setMode:(GLint)mode;
- (void)setShaderBindings;
- (void)setStart:(GLfloat)start;
@end

@implementation GLKEffectPropertyFog

- (GLKEffectPropertyFog)init
{
  v5.receiver = self;
  v5.super_class = GLKEffectPropertyFog;
  v2 = [(GLKEffectProperty *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 0;
    v2->_mode = 0;
    *&v2->_color.x = 0;
    *&v2->_color.v[2] = 0;
    v2->_density = 1.0;
    v2->_end = 1.0;
    v2->_start = 0.0;
    [(GLKEffectProperty *)v2 setMasksInitialized:0];
  }

  return v3;
}

- (void)initializeMasks
{
  *self->super._prv = [*(self->super._prv + 4) vshMask];
  *(self->super._prv + 2) = [*(self->super._prv + 4) fshMask];
  prv = self->super._prv;
  v4 = *prv;
  if (self->_enabled)
  {
    v5 = v4[1] | qword_27DF40568;
    *v4 |= _staticVshMasks;
    v4[1] = v5;
    v6 = *(prv + 2);
    v7 = *v6 | _staticFshMasks_0;
    v8 = v6[1] | _staticFshMasks_1;
  }

  else
  {
    v9 = v4[1] & ~qword_27DF40568;
    *v4 &= ~_staticVshMasks;
    v4[1] = v9;
    v6 = *(prv + 2);
    v7 = *v6 & ~_staticFshMasks_0;
    v8 = v6[1] & ~_staticFshMasks_1;
  }

  *v6 = v7;
  v6[1] = v8;
  mode = self->_mode;
  if (mode <= 2)
  {
    v11 = *(&off_278A57E40 + mode);
    v12 = *(&off_278A57E58 + mode);
    v13 = *(&off_278A57E70 + mode);
    v14 = *(&off_278A57E88 + mode);
    v15 = *(&off_278A57EA0 + mode);
    v16 = *(&off_278A57EB8 + mode);
    v17 = *v4 | *v11;
    v18 = v4[1] | *v12;
    *v4 = v17;
    v4[1] = v18;
    v19 = v17 & ~*v13;
    v20 = v18 & ~*v14;
    *v4 = v19;
    v4[1] = v20;
    v21 = v20 & ~*v16;
    *v4 = v19 & ~*v15;
    v4[1] = v21;
  }

  [(GLKEffectProperty *)self setMasksInitialized:1];
}

- (void)setEnabled:(GLBOOLean)enabled
{
  v3 = enabled;
  if (self->_enabled != enabled || ![(GLKEffectProperty *)self masksInitialized])
  {
    self->_enabled = v3;
    v5 = *self->super._prv;
    if (v3)
    {
      v6 = v5[1] | qword_27DF40568;
      *v5 |= _staticVshMasks;
      prv = self->super._prv;
      v5[1] = v6;
      v8 = *(prv + 2);
      v9 = *v8 | _staticFshMasks_0;
      v10 = v8[1] | _staticFshMasks_1;
    }

    else
    {
      v11 = v5[1] & ~qword_27DF40568;
      *v5 &= ~_staticVshMasks;
      v12 = self->super._prv;
      v5[1] = v11;
      v8 = *(v12 + 2);
      v9 = *v8 & ~_staticFshMasks_0;
      v10 = v8[1] & ~_staticFshMasks_1;
    }

    *v8 = v9;
    v8[1] = v10;
  }
}

- (void)setMode:(GLint)mode
{
  if (self->_mode == mode)
  {
    if ([(GLKEffectProperty *)self masksInitialized]|| mode >= 3)
    {
      return;
    }
  }

  else if (mode > 2)
  {
    return;
  }

  v5 = *(&off_278A57E70 + mode);
  v6 = *(&off_278A57E88 + mode);
  v7 = *(&off_278A57EA0 + mode);
  v8 = *self->super._prv;
  v9 = *(&off_278A57EB8 + mode);
  v10 = v8[1] | **(&off_278A57E58 + mode);
  *v8 |= **(&off_278A57E40 + mode);
  prv = self->super._prv;
  v8[1] = v10;
  v12 = *prv;
  v13 = *v12 & ~*v5;
  v14 = v12[1] & ~*v6;
  *v12 = v13;
  v15 = self->super._prv;
  v12[1] = v14;
  v16 = *v15;
  v17 = *(*v15 + 8) & ~*v9;
  *v16 = **v15 & ~*v7;
  v16[1] = v17;
  self->_mode = mode;
  v18 = [(GLKEffectProperty *)self dirtyUniforms]| 0x2000;

  [(GLKEffectProperty *)self setDirtyUniforms:v18];
}

- (void)setDensity:(GLfloat)density
{
  if (self->_density != density)
  {
    self->_density = density;
    v5 = [(GLKEffectProperty *)self dirtyUniforms]| 0x4000;

    [(GLKEffectProperty *)self setDirtyUniforms:v5];
  }
}

- (void)setStart:(GLfloat)start
{
  if (self->_start != start)
  {
    self->_start = start;
    v5 = [(GLKEffectProperty *)self dirtyUniforms]| 0x8000;

    [(GLKEffectProperty *)self setDirtyUniforms:v5];
  }
}

- (void)setEnd:(GLfloat)end
{
  if (self->_end != end)
  {
    self->_end = end;
    v5 = [(GLKEffectProperty *)self dirtyUniforms]| 0x10000;

    [(GLKEffectProperty *)self setDirtyUniforms:v5];
  }
}

- (void)setColor:(GLKVector4)color
{
  v8.i64[0] = __PAIR64__(LODWORD(v5), LODWORD(v4));
  v8.i64[1] = __PAIR64__(LODWORD(v7), LODWORD(v6));
  v9 = vceqq_f32(v8, self->_color);
  *v9.i8 = vand_s8(*&vextq_s8(v9, v9, 8uLL), vand_s8(*v9.i8, 0x100000001));
  if (!vand_s8(vdup_lane_s32(*v9.i8, 1), *v9.i8).u32[0])
  {
    self->_color.x = v4;
    self->_color.y = v5;
    self->_color.z = v6;
    self->_color.w = v7;
    v11 = [(GLKEffectProperty *)self dirtyUniforms:*&color.x]| 0x1000;

    [(GLKEffectProperty *)self setDirtyUniforms:v11];
  }
}

+ (void)setStaticMasksWithVshRoot:(id)a3 fshRoot:(id)a4
{
  v6 = 0;
  _allVshMasks = 0uLL;
  _allFshMasks = 0uLL;
  v7 = &qword_27DF40568;
  do
  {
    v8 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", _maskStrs[v6], a3, [a3 index]);
    *(v7 - 1) = v8;
    *v7 = v9;
    *&_allVshMasks = _allVshMasks | v8;
    *(&_allVshMasks + 1) |= v9;
    ++v6;
    v7 += 2;
  }

  while (v6 != 4);
  _staticFshMasks_0 = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", @"fog enabled", a4, [a4 index]);
  _staticFshMasks_1 = v10;
  *&_allFshMasks = _allFshMasks | _staticFshMasks_0;
  *(&_allFshMasks + 1) |= v10;
}

- (void)setShaderBindings
{
  params = 0;
  glGetIntegerv(0x8B8Du, &params);
  self->_modeLoc = glGetUniformLocation(params, "fog.mode");
  self->_colorLoc = glGetUniformLocation(params, "fog.color");
  self->_densityLoc = glGetUniformLocation(params, "fog.density");
  self->_startLoc = glGetUniformLocation(params, "fog.start");
  self->_endLoc = glGetUniformLocation(params, "fog.end");
  [(GLKEffectPropertyFog *)self dirtyAllUniforms];
}

- (void)bind
{
  if ([(GLKEffectProperty *)self dirtyUniforms])
  {
    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x1000) != 0)
    {
      glUniform4fv(self->_colorLoc, 1, &self->_color.x);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x2000) != 0)
    {
      glUniform1i(self->_modeLoc, self->_mode);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x4000) != 0)
    {
      glUniform1f(self->_densityLoc, self->_density);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x8000) != 0)
    {
      glUniform1f(self->_startLoc, self->_start);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x10000) != 0)
    {
      glUniform1f(self->_endLoc, self->_end);
    }

    [(GLKEffectProperty *)self setDirtyUniforms:0];
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"%@ = %p\n{\n", objc_msgSend(objc_opt_class(), "description"), self];
  [v3 appendFormat:@"\tenabled = %d\n", self->_enabled];
  mode = self->_mode;
  v5 = @"GLKFogModeLinear";
  if (mode == 1)
  {
    v5 = @"GLKFogModeExp2";
  }

  if (mode)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"GLKFogModeExp";
  }

  *&v12.x = [v3 appendFormat:@"\tmode =    %@\n", v6];
  x = self->_color.x;
  y = self->_color.y;
  z = self->_color.z;
  w = self->_color.w;
  [v3 appendFormat:@"\tcolor =   %@\n", NSStringFromGLKVector4(v12)];
  [v3 appendFormat:@"\tdensity = %6.4f\n", self->_density];
  [v3 appendFormat:@"\tstart =   %6.4f\n", self->_start];
  [v3 appendFormat:@"\tend =     %6.4f\n", self->_end];
  [v3 appendFormat:@"}"];
  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GLKEffectPropertyFog;
  [(GLKEffectProperty *)&v2 dealloc];
}

- (GLKVector4)color
{
  x = self->_color.x;
  y = self->_color.y;
  z = self->_color.z;
  w = self->_color.w;
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

@end