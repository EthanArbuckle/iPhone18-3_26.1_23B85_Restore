@interface CSLOverviewHexLayout
- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributesForItemAtHex:(Hex)hex;
- (CSLOverviewHexLayout)initWithConfiguration:(HexLayoutConfiguration *)configuration;
- (Hex)hexAtPoint:(CGPoint)point;
- (void)updateConstants;
- (void)updateWithBounds:(CGRect)bounds;
- (void)updateWithNormalizedGraphQuadrantSize:(CGSize)size;
@end

@implementation CSLOverviewHexLayout

- (CSLOverviewHexLayout)initWithConfiguration:(HexLayoutConfiguration *)configuration
{
  v4 = *&configuration[2].var2;
  v16 = *&configuration[1].var3;
  v17 = v4;
  v18 = *&configuration[3].var1;
  v5 = *&configuration->var4;
  v14 = *&configuration->var0;
  v15 = v5;
  v13.receiver = self;
  v13.super_class = CSLOverviewHexLayout;
  v6 = [(CSLHexLayout *)&v13 initWithConfiguration:&v14];
  if (v6)
  {
    v7 = [CSLUniformHexLayout alloc];
    v8 = *&configuration[2].var2;
    v16 = *&configuration[1].var3;
    v17 = v8;
    v18 = *&configuration[3].var1;
    v9 = *&configuration->var4;
    v14 = *&configuration->var0;
    v15 = v9;
    v10 = [(CSLUniformHexLayout *)v7 initWithConfiguration:&v14];
    uniformLayout = v6->_uniformLayout;
    v6->_uniformLayout = v10;

    v6->_constantsDirty = 1;
    v6->_normalizedGraphRadius = 7.0;
    v6->_fitsToQuadrantSize = 1;
    v6->_maxScale = 1.0;
    v6->_diameterScale = 1.0;
  }

  return v6;
}

- (void)updateWithBounds:(CGRect)bounds
{
  v3 = bounds.size.height * 0.5;
  if (bounds.size.width * 0.5 != self->_quadrantSize.width || v3 != self->_quadrantSize.height)
  {
    self->_quadrantSize.width = bounds.size.width * 0.5;
    self->_quadrantSize.height = v3;
    self->_constantsDirty = 1;
  }
}

- (void)updateWithNormalizedGraphQuadrantSize:(CGSize)size
{
  if (size.width != self->_normalizedGraphQuadrantSize.width || size.height != self->_normalizedGraphQuadrantSize.height)
  {
    self->_normalizedGraphQuadrantSize = size;
    self->_constantsDirty = 1;
  }
}

- (void)updateConstants
{
  if (!self->_constantsDirty)
  {
    return;
  }

  maxScale = self->_maxScale;
  self->_scale = maxScale;
  if (self->_fitsToQuadrantSize)
  {
    [(CSLUniformHexLayout *)self->_uniformLayout hexSideSize];
    *&v4 = v4;
    v5 = *&v4;
    v6 = (self->_normalizedGraphQuadrantSize.width + 1.0) * v5;
    v7 = (self->_normalizedGraphQuadrantSize.height + 1.0) * v5;
    width = self->_quadrantSize.width;
    if (width < v6)
    {
      height = self->_quadrantSize.height;
      v10 = v7;
LABEL_6:
      maxScale = width / v6;
      v11 = height / v10;
      if (maxScale >= v11)
      {
        maxScale = height / v10;
      }

      self->_scale = maxScale;
      goto LABEL_10;
    }

    v10 = v7;
    height = self->_quadrantSize.height;
    if (height < v10)
    {
      goto LABEL_6;
    }

    maxScale = self->_scale;
  }

LABEL_10:
  v12 = maxScale;
  v13 = self->_maxScale;
  if (v13 < v12)
  {
    v14 = v13;
    self->_scale = v14;
  }

  self->_constantsDirty = 0;
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)layoutAttributesForItemAtHex:(Hex)hex
{
  v6 = v3;
  [(CSLOverviewHexLayout *)self updateConstants];
  v7 = 0uLL;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  uniformLayout = self->_uniformLayout;
  if (uniformLayout)
  {
    [(CSLUniformHexLayout *)uniformLayout layoutAttributesForItemAtHex:hex];
    v7 = *v6;
  }

  else
  {
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
  }

  v9 = vmulq_n_f32(v7, self->_scale);
  *v6 = v9;
  v10 = self->_diameterScale * v9.f32[2];
  *(v6 + 8) = v10;
  [(CSLHexLayout *)self scrolledPointFromContentPoint:vcvtq_f64_f32(*v9.f32)];
  v12 = v11;
  v14 = v13;
  *&v11 = v11;
  v15 = *v6;
  *(v6 + 8) = *(v6 + 8);
  v15.i32[0] = LODWORD(v11);
  *&v11 = v14;
  v15.i32[1] = LODWORD(v11);
  *v6 = v15.i64[0];
  v16.var0 = self->_falloffPercentage;
  if (v16.var0 > 0.0 && v16.var0 < 1.0)
  {
    width = self->_quadrantSize.width;
    v19 = 0.0;
    v20 = 0.0;
    if (CSLPRFGreater())
    {
      v20 = fabs(v12) / self->_quadrantSize.width;
    }

    height = self->_quadrantSize.height;
    if (CSLPRFGreater())
    {
      v19 = fabs(v14) / self->_quadrantSize.height;
    }

    v16.var0 = self->_falloffPercentage + (1.0 - self->_falloffPercentage) * (1.0 - sqrtf((v19 * v19) + (v20 * v20)));
    *&v16.var0 = v16.var0;
    *&v16.var0 = *(v6 + 8) * *&v16.var0;
    *(v6 + 8) = LODWORD(v16.var0);
  }

  return v16;
}

- (Hex)hexAtPoint:(CGPoint)point
{
  uniformLayout = self->_uniformLayout;
  [(CSLHexLayout *)self contentPointFromScrolledPoint:point.x / self->_scale, point.y / self->_scale];

  return [(CSLUniformHexLayout *)uniformLayout hexAtPoint:?];
}

@end