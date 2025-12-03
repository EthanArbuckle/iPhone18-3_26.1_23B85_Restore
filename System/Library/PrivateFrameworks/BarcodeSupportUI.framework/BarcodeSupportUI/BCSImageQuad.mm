@interface BCSImageQuad
- (BCSImageQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft;
- (CGPoint)_denormalizePoint:(CGPoint)point inBounds:(CGRect)bounds;
- (CGPoint)_normalizePoint:(CGPoint)point inBounds:(CGRect)bounds;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGRect)boundingBox;
- (CGRect)bounds;
- (CGSize)perspectiveCorrectedSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)adjustOrientationInImageSpace:(BOOL)space;
- (void)denormalize;
- (void)flip;
- (void)normalize;
@end

@implementation BCSImageQuad

- (BCSImageQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft
{
  y = bottomLeft.y;
  x = bottomLeft.x;
  v8 = bottomRight.y;
  v9 = bottomRight.x;
  v10 = right.y;
  v11 = right.x;
  v12 = left.y;
  v13 = left.x;
  v18.receiver = self;
  v18.super_class = BCSImageQuad;
  v14 = [(BCSImageQuad *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_topLeft.x = v13;
    v14->_topLeft.y = v12;
    v14->_topRight.x = v11;
    v14->_topRight.y = v10;
    v14->_bottomRight.x = v9;
    v14->_bottomRight.y = v8;
    v14->_bottomLeft.x = x;
    v14->_bottomLeft.y = y;
    v16 = v14;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromCGPoint(self->_topLeft);
  v5 = NSStringFromCGPoint(self->_topRight);
  v6 = NSStringFromCGPoint(self->_bottomRight);
  v7 = NSStringFromCGPoint(self->_bottomLeft);
  v8 = [v3 stringWithFormat:@"%@, %@, %@, %@", v4, v5, v6, v7];

  return v8;
}

- (CGRect)boundingBox
{
  v25[5] = *MEMORY[0x277D85DE8];
  [(BCSImageQuad *)self topLeft];
  v4 = v3;
  v6 = v5;
  [(BCSImageQuad *)self topRight];
  v24 = v7;
  v25[0] = v8;
  [(BCSImageQuad *)self bottomLeft];
  v25[1] = v9;
  v25[2] = v10;
  [(BCSImageQuad *)self bottomRight];
  v11 = 0;
  v25[3] = v12;
  v25[4] = v13;
  v14 = v6;
  v15 = v4;
  do
  {
    v16 = *&v23[v11 * 8 + 16];
    v17 = *&v25[v11];
    if (v4 >= v16)
    {
      v4 = *&v23[v11 * 8 + 16];
    }

    if (v15 < v16)
    {
      v15 = *&v23[v11 * 8 + 16];
    }

    if (v6 >= v17)
    {
      v6 = *&v25[v11];
    }

    if (v14 < v17)
    {
      v14 = *&v25[v11];
    }

    v11 += 2;
  }

  while (v11 != 6);
  v18 = *MEMORY[0x277D85DE8];
  v19 = v15 - v4;
  v20 = v14 - v6;
  v21 = v4;
  v22 = v6;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)normalize
{
  [(BCSImageQuad *)self boundingBox];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BCSImageQuad *)self _normalizePoint:self->_topLeft.x inBounds:self->_topLeft.y, v3, v5, v7, v9];
  self->_topLeft.x = v11;
  self->_topLeft.y = v12;
  [(BCSImageQuad *)self _normalizePoint:self->_topRight.x inBounds:self->_topRight.y, v4, v6, v8, v10];
  self->_topRight.x = v13;
  self->_topRight.y = v14;
  [(BCSImageQuad *)self _normalizePoint:self->_bottomRight.x inBounds:self->_bottomRight.y, v4, v6, v8, v10];
  self->_bottomRight.x = v15;
  self->_bottomRight.y = v16;
  [(BCSImageQuad *)self _normalizePoint:self->_bottomLeft.x inBounds:self->_bottomLeft.y, v4, v6, v8, v10];
  self->_bottomLeft.x = v17;
  self->_bottomLeft.y = v18;
}

- (void)denormalize
{
  [(BCSImageQuad *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BCSImageQuad *)self _denormalizePoint:self->_topLeft.x inBounds:self->_topLeft.y, v3, v5, v7, v9];
  self->_topLeft.x = v11;
  self->_topLeft.y = v12;
  [(BCSImageQuad *)self _denormalizePoint:self->_topRight.x inBounds:self->_topRight.y, v4, v6, v8, v10];
  self->_topRight.x = v13;
  self->_topRight.y = v14;
  [(BCSImageQuad *)self _denormalizePoint:self->_bottomRight.x inBounds:self->_bottomRight.y, v4, v6, v8, v10];
  self->_bottomRight.x = v15;
  self->_bottomRight.y = v16;
  [(BCSImageQuad *)self _denormalizePoint:self->_bottomLeft.x inBounds:self->_bottomLeft.y, v4, v6, v8, v10];
  self->_bottomLeft.x = v17;
  self->_bottomLeft.y = v18;
}

- (void)flip
{
  [(BCSImageQuad *)self boundingBox];
  self->_topLeft.y = v3 - self->_topLeft.y;
  self->_topRight.y = v3 - self->_topRight.y;
  self->_bottomLeft.y = v3 - self->_bottomLeft.y;
  self->_bottomRight.y = v3 - self->_bottomRight.y;
}

- (CGPoint)_normalizePoint:(CGPoint)point inBounds:(CGRect)bounds
{
  v4 = (point.x - bounds.origin.x) / bounds.size.width;
  v5 = (point.y - bounds.origin.y) / bounds.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_denormalizePoint:(CGPoint)point inBounds:(CGRect)bounds
{
  v4 = bounds.origin.x + point.x * bounds.size.width;
  v5 = bounds.origin.y + point.y * bounds.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)perspectiveCorrectedSize
{
  [(BCSImageQuad *)self topLeft];
  v28 = v3;
  v31 = v4;
  [(BCSImageQuad *)self topRight];
  v27 = v5;
  v29 = v6;
  [(BCSImageQuad *)self bottomRight];
  v30 = v7;
  v32 = v8;
  [(BCSImageQuad *)self bottomLeft];
  v9.f64[1] = v27;
  v10 = vsubq_f64(vdupq_lane_s64(v28, 0), v9);
  v11.f64[1] = v29;
  _Q3 = vsubq_f64(vdupq_lane_s64(v31, 0), v11);
  v13 = vsqrtq_f64(vmlaq_f64(vmulq_f64(_Q3, _Q3), v10, v10));
  v14 = vsubq_f64(vdupq_lane_s64(v30, 0), v9);
  v15 = vsubq_f64(vdupq_lane_s64(v32, 0), v11);
  v16 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v15, v15), v14, v14));
  v17 = vextq_s8(v16, v16, 8uLL);
  *&v15.f64[0] = vcvt_f32_f64(vdivq_f64(v13, v17));
  __asm { FMOV            V3.2S, #1.0 }

  v22 = vbsl_s8(vcgt_f32(*&v15.f64[0], *&_Q3.f64[0]), *&v15.f64[0], vdiv_f32(*&_Q3.f64[0], *&v15.f64[0]));
  v23 = v22.f32[1];
  if (v22.f32[0] >= v22.f32[1])
  {
    v23 = v22.f32[0];
  }

  if (v23 > 2.0)
  {
    v22 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v22), 2.0 / v23));
  }

  v24 = vcvtq_f64_f32(v22);
  v25 = vmulq_f64(vbslq_s8(vcgtq_f64(v17, v13), v17, v13), vextq_s8(v24, v24, 8uLL));
  v26 = v25.f64[1];
  result.height = v25.f64[0];
  result.width = v26;
  return result;
}

- (void)adjustOrientationInImageSpace:(BOOL)space
{
  spaceCopy = space;
  v44[4] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAE60];
  [(BCSImageQuad *)self topLeft];
  v6 = [v5 valueWithCGPoint:?];
  v44[0] = v6;
  v7 = MEMORY[0x277CCAE60];
  [(BCSImageQuad *)self topRight];
  v8 = [v7 valueWithCGPoint:?];
  v44[1] = v8;
  v9 = MEMORY[0x277CCAE60];
  [(BCSImageQuad *)self bottomLeft];
  v10 = [v9 valueWithCGPoint:?];
  v44[2] = v10;
  v11 = MEMORY[0x277CCAE60];
  [(BCSImageQuad *)self bottomRight];
  v12 = [v11 valueWithCGPoint:?];
  v44[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];

  v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_0];
  v15 = [v14 objectAtIndexedSubscript:0];
  [v15 CGPointValue];
  v17 = v16;

  v18 = [v14 objectAtIndexedSubscript:1];
  [v18 CGPointValue];
  v20 = v19;

  v21 = [v14 objectAtIndexedSubscript:2];
  [v21 CGPointValue];
  v23 = v22;

  v24 = [v14 objectAtIndexedSubscript:3];
  [v24 CGPointValue];
  v26 = v25;

  v27 = v26 < v23;
  if (spaceCopy)
  {
    v27 = v26 > v23;
    v28 = v17 <= v20;
  }

  else
  {
    v28 = v17 >= v20;
  }

  if (v27)
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  if (v27)
  {
    v30 = 2;
  }

  else
  {
    v30 = 3;
  }

  v31 = [v14 objectAtIndexedSubscript:v28];
  [v31 CGPointValue];
  self->_topLeft.x = v32;
  self->_topLeft.y = v33;

  v34 = [v14 objectAtIndexedSubscript:v29];
  [v34 CGPointValue];
  self->_topRight.x = v35;
  self->_topRight.y = v36;

  v37 = [v14 objectAtIndexedSubscript:v28 ^ 1];
  [v37 CGPointValue];
  self->_bottomLeft.x = v38;
  self->_bottomLeft.y = v39;

  v40 = [v14 objectAtIndexedSubscript:v30];
  [v40 CGPointValue];
  self->_bottomRight.x = v41;
  self->_bottomRight.y = v42;

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __46__BCSImageQuad_adjustOrientationInImageSpace___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x277CCABB0];
  [v4 CGPointValue];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x277CCABB0];
  [v5 CGPointValue];
  v9 = [v8 numberWithDouble:?];
  v10 = [v7 compare:v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BCSImageQuad alloc];
  [(BCSImageQuad *)self topLeft];
  v6 = v5;
  v8 = v7;
  [(BCSImageQuad *)self topRight];
  v10 = v9;
  v12 = v11;
  [(BCSImageQuad *)self bottomRight];
  v14 = v13;
  v16 = v15;
  [(BCSImageQuad *)self bottomLeft];

  return [(BCSImageQuad *)v4 initWithTopLeft:v6 topRight:v8 bottomRight:v10 bottomLeft:v12, v14, v16, v17, v18];
}

- (CGPoint)topLeft
{
  x = self->_topLeft.x;
  y = self->_topLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)topRight
{
  x = self->_topRight.x;
  y = self->_topRight.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomRight
{
  x = self->_bottomRight.x;
  y = self->_bottomRight.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomLeft
{
  x = self->_bottomLeft.x;
  y = self->_bottomLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end