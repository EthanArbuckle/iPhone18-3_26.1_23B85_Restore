@interface CSLScrollableUniformHexLayout
- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributesForItemAtHex:(Hex)a3;
- (Hex)hexAtPoint:(CGPoint)a3;
@end

@implementation CSLScrollableUniformHexLayout

- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributesForItemAtHex:(Hex)a3
{
  v5 = v3;
  *v3->f32 = 0u;
  *v3[2].f32 = 0u;
  v9.receiver = self;
  v9.super_class = CSLScrollableUniformHexLayout;
  [(CSLUniformHexLayout *)&v9 layoutAttributesForItemAtHex:a3];
  [(CSLHexLayout *)self scrolledPointFromContentPoint:vcvtq_f64_f32(*v5)];
  *&v8.var0 = v8.var0;
  v6 = *v5->f32;
  v5[1].i32[0] = v5[1];
  LODWORD(v6) = LODWORD(v8.var0);
  *&v8.var0 = v7;
  DWORD1(v6) = LODWORD(v8.var0);
  *v5 = v6;
  return v8;
}

- (Hex)hexAtPoint:(CGPoint)a3
{
  [(CSLHexLayout *)self contentPointFromScrolledPoint:a3.x, a3.y];
  v5.receiver = self;
  v5.super_class = CSLScrollableUniformHexLayout;
  return [(CSLUniformHexLayout *)&v5 hexAtPoint:?];
}

@end