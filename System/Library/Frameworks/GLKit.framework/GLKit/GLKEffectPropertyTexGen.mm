@interface GLKEffectPropertyTexGen
- (void)bind;
- (void)dealloc;
- (void)initializeMasks;
- (void)setMode:(int)a3;
- (void)setModeNameString:(char *)a3;
- (void)setPlane:(float *)a3;
- (void)setPlaneNameString:(char *)a3;
- (void)setShaderBindings;
@end

@implementation GLKEffectPropertyTexGen

- (void)setMode:(int)a3
{
  if (self->_mode != a3 || ![(GLKEffectProperty *)self masksInitialized])
  {
    self->_mode = a3;
    _normalizedNormalsMask(*(self->super._prv + 4));
    _vNormalEyeMask(*(self->super._prv + 4));
    _vPositionEyeMask(*(self->super._prv + 4));
    _useTexCoordAttribMask(*(self->super._prv + 4));
    v5 = [(GLKEffectProperty *)self dirtyUniforms]| 0x400000;

    [(GLKEffectProperty *)self setDirtyUniforms:v5];
  }
}

- (void)setPlane:(float *)a3
{
  plane = self->_plane;
  if (*a3 != *plane || a3[1] != plane[1] || a3[2] != plane[2] || a3[3] != plane[3])
  {
    *plane = *a3;
    v5 = [(GLKEffectProperty *)self dirtyUniforms]| 0x800000;

    [(GLKEffectProperty *)self setDirtyUniforms:v5];
  }
}

- (void)setModeNameString:(char *)a3
{
  modeNameString = self->_modeNameString;
  if (modeNameString)
  {
    free(modeNameString);
  }

  self->_modeNameString = strdup(a3);
}

- (void)setPlaneNameString:(char *)a3
{
  planeNameString = self->_planeNameString;
  if (planeNameString)
  {
    free(planeNameString);
  }

  self->_planeNameString = strdup(a3);
}

- (void)setShaderBindings
{
  v6 = *MEMORY[0x277D85DE8];
  params = 0;
  glGetIntegerv(0x8B8Du, &params);
  snprintf(__str, 0x3FuLL, "textures[%d].texGen[%d].mode", self->_textureIndex, self->_coord);
  [(GLKEffectPropertyTexGen *)self setModeNameString:__str];
  snprintf(__str, 0x3FuLL, "textures[%d].texGen[%d].plane", self->_textureIndex, self->_coord);
  [(GLKEffectPropertyTexGen *)self setPlaneNameString:__str];
  self->_modeLoc = glGetUniformLocation(params, [(GLKEffectPropertyTexGen *)self modeNameString]);
  self->_planeLoc = glGetUniformLocation(params, [(GLKEffectPropertyTexGen *)self planeNameString]);
  [(GLKEffectPropertyTexGen *)self dirtyAllUniforms];
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initializeMasks
{
  _normalizedNormalsMask(*(self->super._prv + 4));
  _vNormalEyeMask(*(self->super._prv + 4));
  _vPositionEyeMask(*(self->super._prv + 4));
  _useTexCoordAttribMask(*(self->super._prv + 4));

  [(GLKEffectProperty *)self setMasksInitialized:1];
}

- (void)bind
{
  if ([(GLKEffectProperty *)self dirtyUniforms])
  {
    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x400000) != 0)
    {
      glUniform1i(self->_modeLoc, self->_mode);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x800000) != 0)
    {
      glUniform4fv(self->_planeLoc, 1, self->_plane);
    }

    [(GLKEffectProperty *)self setDirtyUniforms:0];
  }
}

- (void)dealloc
{
  free(self->_plane);
  modeNameString = self->_modeNameString;
  if (modeNameString)
  {
    free(modeNameString);
  }

  planeNameString = self->_planeNameString;
  if (planeNameString)
  {
    free(planeNameString);
  }

  v5.receiver = self;
  v5.super_class = GLKEffectPropertyTexGen;
  [(GLKEffectProperty *)&v5 dealloc];
}

@end