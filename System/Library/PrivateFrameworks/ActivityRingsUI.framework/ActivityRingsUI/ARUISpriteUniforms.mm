@interface ARUISpriteUniforms
- ($3BA783FF50B239963188BE194EBFFEBA)uniforms;
- (ARUISpriteUniforms)initWithSprite:(id)sprite inContext:(id)context;
- (void)_updateUniformsWithSprite:(id)sprite;
- (void)_updateVertexAttributesWithSprite:(id)sprite inContet:(id)contet;
@end

@implementation ARUISpriteUniforms

- (ARUISpriteUniforms)initWithSprite:(id)sprite inContext:(id)context
{
  spriteCopy = sprite;
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = ARUISpriteUniforms;
  v8 = [(ARUISpriteUniforms *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ARUISpriteUniforms *)v8 _updateVertexAttributesWithSprite:spriteCopy inContet:contextCopy];
    [(ARUISpriteUniforms *)v9 _updateUniformsWithSprite:spriteCopy];
  }

  return v9;
}

- (void)_updateVertexAttributesWithSprite:(id)sprite inContet:(id)contet
{
  spriteCopy = sprite;
  contetCopy = contet;
  [contetCopy skewAdjustmentMatrix];
  v30 = v8;
  v31 = v7;
  v28 = v10;
  v29 = v9;
  [contetCopy drawableDiameter];
  [contetCopy screenScale];
  [spriteCopy translation];
  [spriteCopy translation];
  *v11.i64 = matrix_float4x4_translation();
  v26 = v12;
  v27 = v11;
  v24 = v14;
  v25 = v13;
  [spriteCopy size];
  matrix_float4x4_uniform_scale();
  v15 = 0;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  do
  {
    *(&v37 + v15) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v33 + v15))), v26, *(&v33 + v15), 1), v25, *(&v33 + v15), 2), v24, *(&v33 + v15), 3);
    v15 += 16;
  }

  while (v15 != 64);
  v20 = 0;
  v33 = v37;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  do
  {
    *(&v37 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*(&v33 + v20))), v30, *(&v33 + v20), 1), v29, *(&v33 + v20), 2), v28, *(&v33 + v20), 3);
    v20 += 16;
  }

  while (v20 != 64);
  v21 = v38;
  v22 = v39;
  v23 = v40;
  *&self[1].super.isa = v37;
  *self[1]._anon_10 = v21;
  *&self[1]._anon_10[16] = v22;
  *&self[2].super.isa = v23;
}

- (void)_updateUniformsWithSprite:(id)sprite
{
  spriteCopy = sprite;
  [spriteCopy textureRect];
  *self->_anon_10 = v5;
  [spriteCopy opacity];
  v7 = v6;

  *&self->_anon_10[16] = v7;
}

- ($3BA783FF50B239963188BE194EBFFEBA)uniforms
{
  v3 = *self->_anon_10;
  v4 = *&self->_anon_10[16];
  *v2 = v3;
  v2[1] = v4;
  return v3;
}

@end