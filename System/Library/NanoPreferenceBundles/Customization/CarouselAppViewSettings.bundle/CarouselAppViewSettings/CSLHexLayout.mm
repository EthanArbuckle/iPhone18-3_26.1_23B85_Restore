@interface CSLHexLayout
- (CGPoint)contentOffset;
- (CGPoint)contentPointFromScrolledPoint:(CGPoint)point;
- (CGPoint)scrolledPointFromContentPoint:(CGPoint)point;
- (CSLHexLayout)initWithConfiguration:(HexLayoutConfiguration *)configuration;
- (HexLayoutConfiguration)configuration;
- (id).cxx_construct;
- (id)description;
- (void)applyRubberbandVectorToCenter:(float32x2_t *)center forHex:(float32x2_t)hex;
- (void)setRubberbandVector:(CSLHexLayout *)self;
@end

@implementation CSLHexLayout

- (CSLHexLayout)initWithConfiguration:(HexLayoutConfiguration *)configuration
{
  v9.receiver = self;
  v9.super_class = CSLHexLayout;
  result = [(CSLHexLayout *)&v9 init];
  if (result)
  {
    *&result->_configuration.var0 = *&configuration->var0;
    v5 = *&configuration->var4;
    v6 = *&configuration[1].var3;
    v7 = *&configuration[2].var2;
    result[1]._contentOffset.x = *&configuration[3].var1;
    *&result[1]._targetHex.q = v7;
    *result[1]._boundsRadius = v6;
    *&result->_configuration.var4 = v5;
    p_var3 = &configuration[1].var3;
    result->_targetHex = 0;
    *&v6 = vld1_dup_f32(p_var3);
    *result->_boundsRadius = vmul_f32(vsub_f32(*&configuration[2].var0, *&v6), 0x3F0000003F000000);
  }

  return result;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CSLHexLayout;
  v3 = [(CSLHexLayout *)&v6 description];
  v4 = [NSString stringWithFormat:@"<%@ %.2f%% offset:{%.2f, %.2f}>", v3, *&self->_percentComplete, *&self->_contentOffset.x, *&self->_contentOffset.y];

  return v4;
}

- (void)setRubberbandVector:(CSLHexLayout *)self
{
  __asm { FMOV            V1.2S, #-1.0 }

  v8 = vmaxnm_f32(v2, _D1);
  __asm { FMOV            V1.2S, #1.0 }

  *self->_rubberbandVector = vminnm_f32(v8, _D1);
}

- (void)applyRubberbandVectorToCenter:(float32x2_t *)center forHex:(float32x2_t)hex
{
  [(float32x2_t *)center rubberbandVector];
  v4 = vabs_f32(v3);
  if (fmaxf(v4.f32[0], v4.f32[1]) > 0.0)
  {
    [(float32x2_t *)center configuration];
    __asm
    {
      FMOV            V10.2S, #-1.0
      FMOV            V11.2S, #1.0
    }

    *v11.f32 = vmul_f32(vminnm_f32(vmaxnm_f32(vdiv_f32(hex, center[1]), _D10), _D11), vdup_n_s32(0x40490FDBu));
    vmul_f32(vadd_f32(*&_simd_cos_f4(v11), _D11), 0x3F0000003F000000);
  }
}

- (CGPoint)scrolledPointFromContentPoint:(CGPoint)point
{
  v3 = point.x - self->_contentOffset.x;
  v4 = point.y - self->_contentOffset.y;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)contentPointFromScrolledPoint:(CGPoint)point
{
  v3 = point.x + self->_contentOffset.x;
  v4 = point.y + self->_contentOffset.y;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (HexLayoutConfiguration)configuration
{
  v3 = *&self[3].var3;
  v4 = *&self[5].var1;
  *&retstr[1].var3 = *&self[4].var2;
  *&retstr[2].var2 = v4;
  *&retstr[3].var1 = *&self[6].var0;
  *&retstr->var0 = *&self[2].var4;
  *&retstr->var4 = v3;
  return self;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(self + 7) = 0;
  *(self + 8) = _D1;
  *(self + 9) = 0;
  *(self + 5) = xmmword_2BD80;
  *(self + 12) = vdup_n_s32(0x43960000u);
  *(self + 26) = 1104936960;
  *(self + 14) = 0;
  *(self + 15) = 0;
  return self;
}

@end