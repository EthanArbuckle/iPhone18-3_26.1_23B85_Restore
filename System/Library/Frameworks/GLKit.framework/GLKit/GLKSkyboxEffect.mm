@interface GLKSkyboxEffect
- (GLKSkyboxEffect)init;
- (GLKVector3)center;
- (id)description;
- (void)createAndBindVAOWithPositions:(float *)positions texCoords:(float *)coords;
- (void)dealloc;
- (void)draw;
- (void)prepareToDraw;
- (void)setCenter:(GLKVector3)center;
- (void)setXSize:(GLfloat)xSize;
- (void)setYSize:(GLfloat)ySize;
- (void)setZSize:(GLfloat)zSize;
- (void)updateSkyboxEffect;
@end

@implementation GLKSkyboxEffect

- (GLKSkyboxEffect)init
{
  v11.receiver = self;
  v11.super_class = GLKSkyboxEffect;
  v2 = [(GLKSkyboxEffect *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 15) = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *(v2 + 3) = _D0;
    *(v2 + 11) = 0;
    *(v2 + 8) = xmmword_238915100;
    *(v2 + 10) = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3->_transform = objc_alloc_init(GLKEffectPropertyTransform);
    v9 = objc_alloc_init(GLKEffectPropertyTexture);
    v3->_textureCubeMap = v9;
    [(GLKEffectPropertyTexture *)v9 setTarget:34067];
    [(GLKEffectPropertyTexture *)v3->_textureCubeMap setEnvMode:0];
    [(NSMutableArray *)[(GLKSkyboxEffect *)v3 propertyArray] addObject:v3->_transform];
    [(NSMutableArray *)[(GLKSkyboxEffect *)v3 propertyArray] addObject:v3->_textureCubeMap];
    v3->_effect = [[GLKEffect alloc] initWithPropertyArray:v3->_propertyArray];
    v3->_effectStale = 1;
  }

  return v3;
}

- (void)createAndBindVAOWithPositions:(float *)positions texCoords:(float *)coords
{
  params = 0;
  glGetIntegerv(0x8894u, &params);
  if (self->_vao)
  {
    glBindVertexArrayOES();
  }

  else
  {
    glGenVertexArraysOES();
    vao = self->_vao;
    glBindVertexArrayOES();
    glGenBuffers(1, &self->_texCoordVBO);
    glBindBuffer(0x8892u, self->_texCoordVBO);
    glBufferData(0x8892u, 288, coords, 0x88E8u);
    glVertexAttribPointer(3u, 3, 0x1406u, 0, 0, 0);
  }

  glGenBuffers(1, &self->_positionVBO);
  glBindBuffer(0x8892u, self->_positionVBO);
  glBufferData(0x8892u, 288, positions, 0x88E8u);
  glVertexAttribPointer(0, 3, 0x1406u, 0, 0, 0);
  glBindBuffer(0x8892u, params);
}

- (void)setXSize:(GLfloat)xSize
{
  if (self->_xSize != xSize)
  {
    self->_xSize = xSize;
    self->_effectStale = 1;
  }
}

- (void)setYSize:(GLfloat)ySize
{
  if (self->_ySize != ySize)
  {
    self->_ySize = ySize;
    self->_effectStale = 1;
  }
}

- (void)setZSize:(GLfloat)zSize
{
  if (self->_zSize != zSize)
  {
    self->_zSize = zSize;
    self->_effectStale = 1;
  }
}

- (void)setCenter:(GLKVector3)center
{
  if (self->_center.x != v3 || self->_center.y != v4 || self->_center.z != v5)
  {
    self->_center.x = v3;
    self->_center.y = v4;
    self->_center.z = v5;
    self->_effectStale = 1;
  }
}

- (void)updateSkyboxEffect
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_effectStale == 1)
  {
    if (self->_vao)
    {
      glDeleteBuffers(1, &self->_positionVBO);
    }

    v3 = 0;
    p_zSize = &self->_zSize;
    p_xSize = &self->_xSize;
    v6 = vld1q_dup_f32(p_xSize);
    p_ySize = &self->_ySize;
    v8 = vdupq_lane_s64(COERCE__INT64(self->_center.x), 0);
    v9 = vld1q_dup_f32(p_ySize);
    v10 = vdupq_lane_s64(COERCE__INT64(self->_center.y), 0);
    v11 = vld1q_dup_f32(p_zSize);
    v12 = vdupq_lane_s64(COERCE__INT64(self->_center.z), 0);
    __asm { FMOV            V6.2D, #0.5 }

    do
    {
      v18 = (&texCoords + v3);
      v25 = vld3q_f32(v18);
      v19 = vmulq_f32(v25.val[0], v6);
      v20 = vmulq_f32(v25.val[1], v9);
      v25.val[0] = vmulq_f32(v25.val[2], v11);
      v26.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v12, _Q6, vcvtq_f64_f32(*v25.val[0].f32))), vmlaq_f64(v12, _Q6, vcvt_hight_f64_f32(v25.val[0])));
      v21 = &v23[v3];
      v26.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v10, _Q6, vcvtq_f64_f32(*v20.f32))), vmlaq_f64(v10, _Q6, vcvt_hight_f64_f32(v20)));
      v26.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v8, _Q6, vcvtq_f64_f32(*v19.f32))), vmlaq_f64(v8, _Q6, vcvt_hight_f64_f32(v19)));
      vst3q_f32(v21, v26);
      v3 += 48;
    }

    while (v3 != 288);
    [(GLKEffect *)self->_effect setLabel:[(GLKSkyboxEffect *)self label]];
    [(GLKSkyboxEffect *)self createAndBindVAOWithPositions:v23 texCoords:&texCoords];
    self->_effectStale = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)prepareToDraw
{
  [(GLKSkyboxEffect *)self updateSkyboxEffect];
  vao = self->_vao;
  glBindVertexArrayOES();
  glEnableVertexAttribArray(0);
  glEnableVertexAttribArray(3u);
  effect = self->_effect;

  [(GLKEffect *)effect bind];
}

- (void)draw
{
  [(GLKSkyboxEffect *)self updateSkyboxEffect];
  for (i = 0; i != 24; i += 4)
  {
    glDrawArrays(5u, i, 4);
  }
}

- (void)dealloc
{
  glDeleteBuffers(1, &self->_positionVBO);
  glDeleteBuffers(1, &self->_texCoordVBO);
  glDeleteVertexArraysOES();
  v3.receiver = self;
  v3.super_class = GLKSkyboxEffect;
  [(GLKSkyboxEffect *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"self = %p\n{\n", self];
  [v3 appendFormat:@"center = { %6.3f, %6.3f, %6.3f }\n", self->_center.x, self->_center.y, self->_center.z];
  [v3 appendFormat:@"xSize = %6.3f\n", self->_xSize];
  [v3 appendFormat:@"ySize = %6.3f\n", self->_ySize];
  [v3 appendFormat:@"zSize = %6.3f\n", self->_zSize];
  [v3 appendFormat:@"textureCubeMap = %p\n", -[GLKSkyboxEffect textureCubeMap](self, "textureCubeMap")];
  [v3 appendFormat:@"%@\n", -[GLKEffectPropertyTexture description](-[GLKSkyboxEffect textureCubeMap](self, "textureCubeMap"), "description")];
  [v3 appendString:@"}"];
  return v3;
}

- (GLKVector3)center
{
  x = self->_center.x;
  y = self->_center.y;
  z = self->_center.z;
  result.z = *&a2;
  *&result.x = self;
  return result;
}

@end