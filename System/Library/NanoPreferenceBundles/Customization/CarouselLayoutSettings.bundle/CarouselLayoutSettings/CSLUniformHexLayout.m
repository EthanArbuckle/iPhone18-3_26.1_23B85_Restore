@interface CSLUniformHexLayout
- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributesForItemAtHex:(Hex)a3;
- (CSLUniformHexLayout)initWithConfiguration:(HexLayoutConfiguration *)a3;
- (Hex)hexAtPoint:(CGPoint)a3;
@end

@implementation CSLUniformHexLayout

- (CSLUniformHexLayout)initWithConfiguration:(HexLayoutConfiguration *)a3
{
  v4 = *&a3[2].var2;
  v8[2] = *&a3[1].var3;
  v8[3] = v4;
  v9 = *&a3[3].var1;
  v5 = *&a3->var4;
  v8[0] = *&a3->var0;
  v8[1] = v5;
  v7.receiver = self;
  v7.super_class = CSLUniformHexLayout;
  result = [(CSLHexLayout *)&v7 initWithConfiguration:v8];
  if (result)
  {
    result->_diameter = a3[1].var3;
    result->_hexSideSize = a3[2].var2;
  }

  return result;
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributesForItemAtHex:(Hex)a3
{
  v5 = v3;
  v6.f32[0] = vcvts_n_f32_s32(a3.r, 1uLL) + a3.q;
  v6.f32[1] = a3.r;
  hexSideSize = self->_hexSideSize;
  [(CSLHexLayout *)self applyRubberbandVectorToCenter:COERCE_DOUBLE(vmul_n_f32(vmul_f32(v6 forHex:0x3FC000003FDDB3D7), hexSideSize))];
  v8 = self->_diameter * *(&v9 + 2);
  *(&v9 + 2) = v8;
  *v5 = v9;
  *(v5 + 16) = 0;
  return v9;
}

- (Hex)hexAtPoint:(CGPoint)a3
{
  v7 = 0;
  hexSideSize = self->_hexSideSize;
  v4 = a3.x / hexSideSize;
  v5 = a3.y / hexSideSize;
  return *sub_13BD0(&v7, -(v5 - (v4 * 1.7321)) / 3.0, -(-(v5 - (v4 * 1.7321)) / 3.0) - (v5 * 0.66667), v5 * 0.66667);
}

@end