@interface GLKEffectPropertyTexture
+ (void)clearAllTexturingMasks:(GLKBigInt_s *)masks fshMask:(GLKBigInt_s *)mask;
+ (void)setStaticMasksWithVshRoot:(id)root fshRoot:(id)fshRoot;
- (BOOL)includeVshShaderTextForRootNode:(id)node;
- (GLKBigInt_s)allFshMasks;
- (GLKEffectPropertyTexGen)texGenR;
- (GLKEffectPropertyTexGen)texGenS;
- (GLKEffectPropertyTexGen)texGenT;
- (GLKEffectPropertyTexture)init;
- (id)description;
- (unsigned)normalizedNormalsMask;
- (unsigned)useTexCoordAttribMask;
- (unsigned)vNormalEyeMask;
- (unsigned)vPositionEyeMask;
- (void)bind;
- (void)dealloc;
- (void)initializeMasks;
- (void)setEnabled:(GLBOOLean)enabled;
- (void)setEnvMode:(GLKTextureEnvMode)envMode;
- (void)setMatrixEnabled:(unsigned __int8)enabled;
- (void)setShaderBindings;
- (void)setTarget:(GLKTextureTarget)target;
- (void)setUnit2dNameString:(char *)string;
- (void)setUnitCubeNameString:(char *)string;
@end

@implementation GLKEffectPropertyTexture

- (GLKEffectPropertyTexture)init
{
  v5.receiver = self;
  v5.super_class = GLKEffectPropertyTexture;
  v2 = [(GLKEffectProperty *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_target = 3553;
    v2->_texGenR = 0;
    v2->_texGenT = 0;
    v2->_texGenS = 0;
    v2->_texGenArray = 0;
    [(GLKEffectPropertyTexture *)v2 setUnit2dNameString:0];
    [(GLKEffectPropertyTexture *)v3 setUnitCubeNameString:0];
    v3->_enabled = 1;
    v3->_matrixEnabled = 0;
    v3->_envMode = 1;
    v3->_textureIndex = -1;
    v3->_name = 0;
  }

  return v3;
}

- (GLKEffectPropertyTexGen)texGenS
{
  result = self->_texGenS;
  if (!result)
  {
    if (!self->_texGenArray)
    {
      self->_texGenArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v4 = [[GLKEffectPropertyTexGen alloc] initWithMode:0 coord:0];
    self->_texGenS = v4;
    [(GLKEffectPropertyTexGen *)v4 setTextureIndex:self->_textureIndex];
    [(GLKEffectProperty *)self->_texGenS setEffect:*(self->super._prv + 4)];
    _texGenSMask(self);
    v5 = &qword_27DF408F0;
    if (self->_enabled && (texGenR = self->_texGenR) != 0 && self->_texGenS && self->_texGenT && [(GLKEffectPropertyTexGen *)texGenR mode]== 3 && self->_target == 34067)
    {
      v7 = &qword_27DF408F0;
      v5 = &unk_27DF40920;
    }

    else
    {
      v7 = &unk_27DF40920;
    }

    prv = self->super._prv;
    v9 = *(prv + 2);
    textureIndex = self->_textureIndex;
    v11 = vorrq_s8(*v9, *&v7[2 * textureIndex]);
    *v9 = v11;
    *v9 = vbicq_s8(v11, *&v5[2 * textureIndex]);
    _modelviewMatrixMask(*(prv + 4));
    [(NSMutableArray *)self->_texGenArray addObject:self->_texGenS];
    return self->_texGenS;
  }

  return result;
}

- (GLKEffectPropertyTexGen)texGenT
{
  result = self->_texGenT;
  if (!result)
  {
    if (!self->_texGenArray)
    {
      self->_texGenArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v4 = [[GLKEffectPropertyTexGen alloc] initWithMode:0 coord:1];
    self->_texGenT = v4;
    [(GLKEffectPropertyTexGen *)v4 setTextureIndex:self->_textureIndex];
    [(GLKEffectProperty *)self->_texGenT setEffect:*(self->super._prv + 4)];
    _texGenTMask(self);
    v5 = &qword_27DF408F0;
    if (self->_enabled && (texGenR = self->_texGenR) != 0 && self->_texGenS && self->_texGenT && [(GLKEffectPropertyTexGen *)texGenR mode]== 3 && self->_target == 34067)
    {
      v7 = &qword_27DF408F0;
      v5 = &unk_27DF40920;
    }

    else
    {
      v7 = &unk_27DF40920;
    }

    prv = self->super._prv;
    v9 = *(prv + 2);
    textureIndex = self->_textureIndex;
    v11 = vorrq_s8(*v9, *&v7[2 * textureIndex]);
    *v9 = v11;
    *v9 = vbicq_s8(v11, *&v5[2 * textureIndex]);
    _modelviewMatrixMask(*(prv + 4));
    [(NSMutableArray *)self->_texGenArray addObject:self->_texGenT];
    return self->_texGenT;
  }

  return result;
}

- (GLKEffectPropertyTexGen)texGenR
{
  result = self->_texGenR;
  if (!result)
  {
    if (!self->_texGenArray)
    {
      self->_texGenArray = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v4 = [[GLKEffectPropertyTexGen alloc] initWithMode:0 coord:2];
    self->_texGenR = v4;
    [(GLKEffectPropertyTexGen *)v4 setTextureIndex:self->_textureIndex];
    [(GLKEffectProperty *)self->_texGenR setEffect:*(self->super._prv + 4)];
    _texGenRMask(self);
    v5 = &qword_27DF408F0;
    if (self->_enabled && (texGenR = self->_texGenR) != 0 && self->_texGenS && self->_texGenT && [(GLKEffectPropertyTexGen *)texGenR mode]== 3 && self->_target == 34067)
    {
      v7 = &qword_27DF408F0;
      v5 = &unk_27DF40920;
    }

    else
    {
      v7 = &unk_27DF40920;
    }

    prv = self->super._prv;
    v9 = *(prv + 2);
    textureIndex = self->_textureIndex;
    v11 = vorrq_s8(*v9, *&v7[2 * textureIndex]);
    *v9 = v11;
    *v9 = vbicq_s8(v11, *&v5[2 * textureIndex]);
    _modelviewMatrixMask(*(prv + 4));
    [(NSMutableArray *)self->_texGenArray addObject:self->_texGenR];
    return self->_texGenR;
  }

  return result;
}

- (void)setShaderBindings
{
  v15 = *MEMORY[0x277D85DE8];
  params = 0;
  glGetIntegerv(0x8B8Du, &params);
  self->_unit2dLoc = glGetUniformLocation(params, self->_unit2dNameString);
  self->_unitCubeLoc = glGetUniformLocation(params, self->_unitCubeNameString);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  texGenArray = self->_texGenArray;
  v4 = [(NSMutableArray *)texGenArray countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(texGenArray);
        }

        [*(*(&v9 + 1) + 8 * i) setShaderBindings];
      }

      v5 = [(NSMutableArray *)texGenArray countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  [(GLKEffectProperty *)self setDirtyUniforms:0x200000];
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)setStaticMasksWithVshRoot:(id)root fshRoot:(id)fshRoot
{
  v6 = 0;
  v7 = &unk_27DF408C8;
  do
  {
    *(v7 - 1) = +[GLKShaderBlockNode maskForLabel:root:index:](GLKShaderBlockNode, "maskForLabel:root:index:", [MEMORY[0x277CCACA8] stringWithFormat:@"texturing%d", v6], fshRoot, v6);
    *v7 = v8;
    ++v6;
    v7 += 2;
  }

  while (v6 != 3);
  v9 = &unk_27DF408F8;
  for (i = 1; i != 24; ++i)
  {
    v11 = 0;
    v12 = _fshMaskStr[i];
    v13 = v9;
    do
    {
      *(v13 - 1) = [GLKShaderBlockNode maskForLabel:v12 root:fshRoot index:v11];
      *v13 = v14;
      ++v11;
      v13 += 2;
    }

    while (v11 != 3);
    v9 += 6;
  }

  _staticFshVPositionMask_0 = [GLKShaderBlockNode maskForLabel:@"v_position" root:fshRoot index:0];
  _staticFshVPositionMask_1 = v15;
  _staticVshVPositionMask_0 = [GLKShaderBlockNode maskForLabel:@"v_position" root:root index:0];
  _staticVshVPositionMask_1 = v16;
}

+ (void)clearAllTexturingMasks:(GLKBigInt_s *)masks fshMask:(GLKBigInt_s *)mask
{
  v4 = 0;
  v5 = masks->n1 & ~_staticVshVPositionMask_1;
  masks->n0 &= ~_staticVshVPositionMask_0;
  masks->n1 = v5;
  v6 = vbicq_s8(*mask, __PAIR128__(_staticFshVPositionMask_1, _staticFshVPositionMask_0));
  *mask = v6;
  v7 = &_staticFshMasks_1;
  do
  {
    for (i = 0; i != 144; i += 6)
    {
      v6 = vbicq_s8(v6, *&v7[i]);
      *mask = v6;
    }

    ++v4;
    v7 += 2;
  }

  while (v4 != 3);
}

- (BOOL)includeVshShaderTextForRootNode:(id)node
{
  v3 = *(node + 1);
  result = v3 != _staticVshVPositionMask_0 || (v4 = *(node + 2), v4 != _staticVshVPositionMask_1) || (v5 = *self->super._prv, (*v5 & v3) != 0) || (v4 & v5[1]) != 0;
  return result;
}

- (void)setUnit2dNameString:(char *)string
{
  unit2dNameString = self->_unit2dNameString;
  if (unit2dNameString)
  {
    free(unit2dNameString);
    self->_unit2dNameString = 0;
  }

  if (string)
  {
    self->_unit2dNameString = strdup(string);
  }
}

- (void)setUnitCubeNameString:(char *)string
{
  unitCubeNameString = self->_unitCubeNameString;
  if (unitCubeNameString)
  {
    free(unitCubeNameString);
    self->_unitCubeNameString = 0;
  }

  if (string)
  {
    self->_unitCubeNameString = strdup(string);
  }
}

- (void)setEnabled:(GLBOOLean)enabled
{
  v3 = enabled;
  if (self->_enabled != enabled || [(GLKEffectProperty *)self masksInitialized])
  {
    self->_enabled = v3;
    v5 = *(self->super._prv + 2);
    v6 = &_staticFshMasks_1[2 * self->_textureIndex];
    v7 = *v6;
    if (v3)
    {
      v8 = *v5 | v7;
      v9 = v5[1] | v6[1];
    }

    else
    {
      v8 = *v5 & ~v7;
      v9 = v5[1] & ~v6[1];
    }

    *v5 = v8;
    v5[1] = v9;
    v10 = &qword_27DF408F0;
    if (self->_enabled && (texGenR = self->_texGenR) != 0 && self->_texGenS && self->_texGenT && [(GLKEffectPropertyTexGen *)texGenR mode]== 3 && self->_target == 34067)
    {
      v12 = &qword_27DF408F0;
      v10 = &unk_27DF40920;
    }

    else
    {
      v12 = &unk_27DF40920;
    }

    textureIndex = self->_textureIndex;
    **(self->super._prv + 2) = vorrq_s8(**(self->super._prv + 2), *&v12[2 * textureIndex]);
    **(self->super._prv + 2) = vbicq_s8(**(self->super._prv + 2), *&v10[2 * textureIndex]);
    _modelviewMatrixMask(*(self->super._prv + 4));
    _texGenSMask(self);
    _texGenTMask(self);
    _texGenRMask(self);
    _normalizedNormalsMask(*(self->super._prv + 4));
    _vNormalEyeMask(*(self->super._prv + 4));
    _texturingEnabledMask(*(self->super._prv + 4));
    _vPositionEyeMask(*(self->super._prv + 4));
    v14 = *(self->super._prv + 4);

    _useTexCoordAttribMask(v14);
  }
}

- (void)initializeMasks
{
  texGenS = self->_texGenS;
  if (texGenS)
  {
    [(GLKEffectProperty *)texGenS setEffect:*(self->super._prv + 4)];
    [(GLKEffectPropertyTexGen *)self->_texGenS initializeMasks];
  }

  texGenT = self->_texGenT;
  if (texGenT)
  {
    [(GLKEffectProperty *)texGenT setEffect:*(self->super._prv + 4)];
    [(GLKEffectPropertyTexGen *)self->_texGenT initializeMasks];
  }

  texGenR = self->_texGenR;
  if (texGenR)
  {
    [(GLKEffectProperty *)texGenR setEffect:*(self->super._prv + 4)];
    [(GLKEffectPropertyTexGen *)self->_texGenR initializeMasks];
  }

  *self->super._prv = [*(self->super._prv + 4) vshMask];
  *(self->super._prv + 2) = [*(self->super._prv + 4) fshMask];
  _setMasks_0(self);
  _normalizedNormalsMask(*(self->super._prv + 4));
  _vNormalEyeMask(*(self->super._prv + 4));
  _texturingEnabledMask(*(self->super._prv + 4));
  _vPositionEyeMask(*(self->super._prv + 4));
  _useTexCoordAttribMask(*(self->super._prv + 4));

  [(GLKEffectProperty *)self setMasksInitialized:1];
}

- (void)setEnvMode:(GLKTextureEnvMode)envMode
{
  if (self->_envMode != envMode)
  {
    self->_envMode = envMode;
    if (envMode <= GLKTextureEnvModeDecal)
    {
      v3 = *(&off_278A57FF0 + envMode);
      v4 = *(&off_278A58008 + envMode);
      textureIndex = self->_textureIndex;
      **(self->super._prv + 2) = vorrq_s8(**(self->super._prv + 2), *(*(&off_278A57FD8 + envMode) + textureIndex));
      **(self->super._prv + 2) = vbicq_s8(**(self->super._prv + 2), *(v3 + 16 * textureIndex));
      **(self->super._prv + 2) = vbicq_s8(**(self->super._prv + 2), *(v4 + 16 * textureIndex));
    }
  }
}

- (void)setTarget:(GLKTextureTarget)target
{
  if (self->_target == target)
  {
    return;
  }

  self->_target = target;
  v4 = &unk_27DF40A70;
  if (target == GLKTextureTarget2D)
  {
    v5 = &unk_27DF40AA0;
  }

  else
  {
    if (target != GLKTextureTargetCubeMap)
    {
      goto LABEL_7;
    }

    v5 = &unk_27DF40A70;
    v4 = &unk_27DF40AA0;
  }

  textureIndex = self->_textureIndex;
  **(self->super._prv + 2) = vorrq_s8(**(self->super._prv + 2), v4[textureIndex]);
  **(self->super._prv + 2) = vbicq_s8(**(self->super._prv + 2), v5[textureIndex]);
LABEL_7:
  v7 = &qword_27DF408F0;
  if (self->_enabled && (texGenR = self->_texGenR) != 0 && self->_texGenS && self->_texGenT && [(GLKEffectPropertyTexGen *)texGenR mode]== 3 && self->_target == 34067)
  {
    v9 = &qword_27DF408F0;
    v7 = &unk_27DF40920;
  }

  else
  {
    v9 = &unk_27DF40920;
  }

  v10 = self->_textureIndex;
  **(self->super._prv + 2) = vorrq_s8(**(self->super._prv + 2), *&v9[2 * v10]);
  **(self->super._prv + 2) = vbicq_s8(**(self->super._prv + 2), *&v7[2 * v10]);
  _modelviewMatrixMask(*(self->super._prv + 4));
  v11 = [(GLKEffectProperty *)self dirtyUniforms]| 0x200000;

  [(GLKEffectProperty *)self setDirtyUniforms:v11];
}

- (void)setMatrixEnabled:(unsigned __int8)enabled
{
  if (self->_matrixEnabled != enabled)
  {
    self->_matrixEnabled = enabled;
    v3 = *(self->super._prv + 2);
    v4 = _staticFshMasks_1[2 * self->_textureIndex + 84];
    if (enabled)
    {
      v5 = *v3 | v4;
      v6 = v3[1] | _staticFshMasks_1[2 * self->_textureIndex + 85];
    }

    else
    {
      v5 = *v3 & ~v4;
      v6 = v3[1] & ~_staticFshMasks_1[2 * self->_textureIndex + 85];
    }

    *v3 = v5;
    v3[1] = v6;
  }
}

- (unsigned)normalizedNormalsMask
{
  result = 0;
  if (self->_enabled)
  {
    texGenS = self->_texGenS;
    if (texGenS)
    {
      if ([(GLKEffectPropertyTexGen *)texGenS mode]== 2 || [(GLKEffectPropertyTexGen *)self->_texGenS mode]== 3)
      {
        return 1;
      }
    }

    texGenT = self->_texGenT;
    if (texGenT)
    {
      if ([(GLKEffectPropertyTexGen *)texGenT mode]== 2 || [(GLKEffectPropertyTexGen *)self->_texGenT mode]== 3)
      {
        return 1;
      }
    }

    texGenR = self->_texGenR;
    if (texGenR)
    {
      if ([(GLKEffectPropertyTexGen *)texGenR mode]== 2 || [(GLKEffectPropertyTexGen *)self->_texGenR mode]== 3)
      {
        return 1;
      }
    }
  }

  return result;
}

- (unsigned)vPositionEyeMask
{
  if (!self->_enabled)
  {
    goto LABEL_15;
  }

  texGenS = self->_texGenS;
  if (!texGenS)
  {
    goto LABEL_19;
  }

  if ([(GLKEffectPropertyTexGen *)texGenS mode]== 2 || [(GLKEffectPropertyTexGen *)self->_texGenS mode]== 3)
  {
    goto LABEL_13;
  }

  mode = [(GLKEffectPropertyTexGen *)self->_texGenS mode];
  if (mode != 1)
  {
LABEL_19:
    texGenT = self->_texGenT;
    if (!texGenT)
    {
      goto LABEL_10;
    }

    if ([(GLKEffectPropertyTexGen *)texGenT mode]== 2 || [(GLKEffectPropertyTexGen *)self->_texGenT mode]== 3)
    {
      goto LABEL_13;
    }

    mode = [(GLKEffectPropertyTexGen *)self->_texGenT mode];
    if (mode != 1)
    {
LABEL_10:
      texGenR = self->_texGenR;
      if (texGenR)
      {
        if ([(GLKEffectPropertyTexGen *)texGenR mode]== 2 || [(GLKEffectPropertyTexGen *)self->_texGenR mode]== 3)
        {
LABEL_13:
          LOBYTE(mode) = 1;
          return mode;
        }

        mode = [(GLKEffectPropertyTexGen *)self->_texGenR mode];
        if (mode == 1)
        {
          return mode;
        }
      }

LABEL_15:
      LOBYTE(mode) = 0;
    }
  }

  return mode;
}

- (unsigned)vNormalEyeMask
{
  result = 0;
  if (self->_enabled)
  {
    texGenS = self->_texGenS;
    if (texGenS)
    {
      if ([(GLKEffectPropertyTexGen *)texGenS mode]== 2 || [(GLKEffectPropertyTexGen *)self->_texGenS mode]== 3)
      {
        return 1;
      }
    }

    texGenT = self->_texGenT;
    if (texGenT)
    {
      if ([(GLKEffectPropertyTexGen *)texGenT mode]== 2 || [(GLKEffectPropertyTexGen *)self->_texGenT mode]== 3)
      {
        return 1;
      }
    }

    texGenR = self->_texGenR;
    if (texGenR)
    {
      if ([(GLKEffectPropertyTexGen *)texGenR mode]== 2 || [(GLKEffectPropertyTexGen *)self->_texGenR mode]== 3)
      {
        return 1;
      }
    }
  }

  return result;
}

- (unsigned)useTexCoordAttribMask
{
  if (!self->_enabled)
  {
    return 0;
  }

  texGenS = self->_texGenS;
  result = 1;
  if (texGenS && ([(GLKEffectPropertyTexGen *)texGenS mode]== 2 || [(GLKEffectPropertyTexGen *)self->_texGenS mode]== 3))
  {
    texGenT = self->_texGenT;
    if (texGenT && ([(GLKEffectPropertyTexGen *)texGenT mode]== 2 || [(GLKEffectPropertyTexGen *)self->_texGenT mode]== 3))
    {
      texGenR = self->_texGenR;
      if (texGenR)
      {
        if ([(GLKEffectPropertyTexGen *)texGenR mode]== 2 || [(GLKEffectPropertyTexGen *)self->_texGenR mode]== 3)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"%@ = %p\n{\n", objc_msgSend(objc_opt_class(), "description"), self];
  [v3 appendFormat:@"\tenabled =\t\t%d\n", self->_enabled];
  [v3 appendFormat:@"\tname =   \t\t%d\n", self->_name];
  target = self->_target;
  if (target == 3553)
  {
    v5 = @"\ttarget = \t\tGLKTextureTarget2D\n";
  }

  else
  {
    if (target != 34067)
    {
      goto LABEL_6;
    }

    v5 = @"\ttarget = \t\tGLKTextureTargetCubeMap\n";
  }

  [v3 appendFormat:v5];
LABEL_6:
  envMode = self->_envMode;
  if (envMode <= 2)
  {
    [v3 appendFormat:off_278A58020[envMode]];
  }

  [v3 appendFormat:@"}"];
  return v3;
}

- (void)bind
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_enabled)
  {
    glActiveTexture(self->_textureIndex + 33984);
    glBindTexture(self->_target, self->_name);
    if ([(GLKEffectProperty *)self dirtyUniforms])
    {
      if (([(GLKEffectProperty *)self dirtyUniforms]& 0x200000) != 0)
      {
        if (self->_target == 3553)
        {
          v3 = &OBJC_IVAR___GLKEffectPropertyTexture__unit2dLoc;
        }

        else
        {
          v3 = &OBJC_IVAR___GLKEffectPropertyTexture__unitCubeLoc;
        }

        glUniform1i(*(&self->super.super.isa + *v3), self->_textureIndex);
      }

      [(GLKEffectProperty *)self setDirtyUniforms:0];
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    texGenArray = self->_texGenArray;
    v5 = [(NSMutableArray *)texGenArray countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(texGenArray);
          }

          [*(*(&v10 + 1) + 8 * i) bind];
        }

        v6 = [(NSMutableArray *)texGenArray countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  unitCubeNameString = self->_unitCubeNameString;
  if (unitCubeNameString)
  {
    free(unitCubeNameString);
  }

  unit2dNameString = self->_unit2dNameString;
  if (unit2dNameString)
  {
    free(unit2dNameString);
  }

  v5.receiver = self;
  v5.super_class = GLKEffectPropertyTexture;
  [(GLKEffectProperty *)&v5 dealloc];
}

- (GLKBigInt_s)allFshMasks
{
  p_allFshMasks = &self->_allFshMasks;
  n0 = self->_allFshMasks.n0;
  n1 = p_allFshMasks->n1;
  result.n1 = n1;
  result.n0 = n0;
  return result;
}

@end