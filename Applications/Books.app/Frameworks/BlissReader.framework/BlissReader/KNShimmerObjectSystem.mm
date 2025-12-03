@interface KNShimmerObjectSystem
- ($43FE7108CB68BB85E480ACA418397947)vertexUniforms;
- (void)drawWithPercent:(double)percent opacity:(double)opacity rotation:(double)rotation clockwise:(BOOL)clockwise texture:(id)texture context:(id)context;
- (void)setVertexUniforms:(id)uniforms;
@end

@implementation KNShimmerObjectSystem

- (void)drawWithPercent:(double)percent opacity:(double)opacity rotation:(double)rotation clockwise:(BOOL)clockwise texture:(id)texture context:(id)context
{
  clockwiseCopy = clockwise;
  contextCopy = context;
  v13 = fmax(percent * 1.1 + -0.1, 0.0);
  v14 = -v13;
  if (clockwiseCopy)
  {
    v14 = v13;
  }

  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeRotation(&v24, v14 + v14);
  if (contextCopy)
  {
    TSDMixFloats();
    if (v15 > 1.0)
    {
      v15 = 1.0;
    }

    v16 = v13;
    v17 = (1.0 - v15) * opacity;
    self[2]._vertexUniforms.SpeedMax = v16;
    *self[3].super.TSDGPUParticleSystem_opaque = v17;
    v18 = vcvt_f32_f64(*&v24.a);
    v19 = vcvt_f32_f64(*&v24.c);
    v20 = vcvt_f32_f64(*&v24.tx);
    self[3]._vertexUniforms.Opacity = 0.0;
    *&self[3]._anon_8[4] = v18;
    *self[4]._anon_8 = 0;
    self[4].super = v19;
    self[4]._vertexUniforms.SpeedMax = 1.0;
    *&self[4]._vertexUniforms.Percent = v20;
    [(KNShimmerSystem *)self speedMax];
    *&v21 = v21;
    *&self[5].super.TSDGPUParticleSystem_opaque[4] = LODWORD(v21);
    renderEncoder = [contextCopy renderEncoder];
    [renderEncoder setVertexBytes:&self->_vertexUniforms length:144 atIndex:1];

    renderEncoder2 = [contextCopy renderEncoder];
    [(KNShimmerObjectSystem *)self drawMetalWithEncoder:renderEncoder2];
  }
}

- ($43FE7108CB68BB85E480ACA418397947)vertexUniforms
{
  v3 = *&self[4]._vertexUniforms.Percent;
  v2[6] = *self[4].super.TSDGPUParticleSystem_opaque;
  v2[7] = v3;
  v2[8] = *&self[5].super.TSDGPUParticleSystem_opaque[4];
  v4 = *self[2]._anon_8;
  v2[2] = *&self[1]._vertexUniforms.Opacity;
  v2[3] = v4;
  v5 = *&self[3]._anon_8[4];
  v2[4] = *&self[2]._vertexUniforms.SpeedMax;
  v2[5] = v5;
  v7 = *&self->_vertexUniforms.Percent;
  v6 = *&self[1].super.TSDGPUParticleSystem_opaque[4];
  *v2 = v7;
  v2[1] = v6;
  result.var2 = *&v7;
  result.var1 = *&v6;
  return result;
}

- (void)setVertexUniforms:(id)uniforms
{
  *&self->_vertexUniforms.Percent = *v3;
  v4 = v3[4];
  v6 = v3[1];
  v5 = v3[2];
  *self[2]._anon_8 = v3[3];
  *&self[2]._vertexUniforms.SpeedMax = v4;
  *&self[1].super.TSDGPUParticleSystem_opaque[4] = v6;
  *&self[1]._vertexUniforms.Opacity = v5;
  v7 = v3[8];
  v9 = v3[5];
  v8 = v3[6];
  *&self[4]._vertexUniforms.Percent = v3[7];
  *&self[5].super.TSDGPUParticleSystem_opaque[4] = v7;
  *&self[3]._anon_8[4] = v9;
  *self[4].super.TSDGPUParticleSystem_opaque = v8;
}

@end