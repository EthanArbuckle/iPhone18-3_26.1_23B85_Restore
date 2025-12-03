@interface CSLUniformHexLayout
- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributesForItemAtHex:(Hex)hex;
- (CSLUniformHexLayout)initWithConfiguration:(HexLayoutConfiguration *)configuration;
- (Hex)hexAtPoint:(CGPoint)point;
@end

@implementation CSLUniformHexLayout

- (CSLUniformHexLayout)initWithConfiguration:(HexLayoutConfiguration *)configuration
{
  v4 = *&configuration[2].var2;
  v8[2] = *&configuration[1].var3;
  v8[3] = v4;
  v9 = *&configuration[3].var1;
  v5 = *&configuration->var4;
  v8[0] = *&configuration->var0;
  v8[1] = v5;
  v7.receiver = self;
  v7.super_class = CSLUniformHexLayout;
  result = [(CSLHexLayout *)&v7 initWithConfiguration:v8];
  if (result)
  {
    result->_diameter = configuration[1].var3;
    result->_hexSideSize = configuration[2].var2;
  }

  return result;
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributesForItemAtHex:(Hex)hex
{
  v5 = v3;
  v6.f32[0] = vcvts_n_f32_s32(hex.r, 1uLL) + hex.q;
  v6.f32[1] = hex.r;
  hexSideSize = self->_hexSideSize;
  [(CSLHexLayout *)self applyRubberbandVectorToCenter:COERCE_DOUBLE(vmul_n_f32(vmul_f32(v6 forHex:0x3FC000003FDDB3D7), hexSideSize))];
  v8 = self->_diameter * *(&v9 + 2);
  *(&v9 + 2) = v8;
  *v5 = v9;
  *(v5 + 16) = 0;
  return v9;
}

- (Hex)hexAtPoint:(CGPoint)point
{
  v7 = 0;
  hexSideSize = self->_hexSideSize;
  v4 = point.x / hexSideSize;
  v5 = point.y / hexSideSize;
  return *sub_1BC4(&v7, -(v5 - (v4 * 1.7321)) / 3.0, -(-(v5 - (v4 * 1.7321)) / 3.0) - (v5 * 0.66667), v5 * 0.66667);
}

@end