@interface PKRendererTileProperties
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)drawingTransform;
- (CGPoint)offset;
- (PKRendererTileProperties)initWithLevel:(int64_t)level offset:(CGPoint)offset drawingTransform:(CGAffineTransform *)transform sixChannelMode:(BOOL)mode transparentBlending:(BOOL)blending extendedDynamicRange:(BOOL)range;
@end

@implementation PKRendererTileProperties

- (PKRendererTileProperties)initWithLevel:(int64_t)level offset:(CGPoint)offset drawingTransform:(CGAffineTransform *)transform sixChannelMode:(BOOL)mode transparentBlending:(BOOL)blending extendedDynamicRange:(BOOL)range
{
  y = offset.y;
  x = offset.x;
  v18.receiver = self;
  v18.super_class = PKRendererTileProperties;
  result = [(PKRendererTileProperties *)&v18 init];
  if (result)
  {
    result->_level = level;
    result->_offset.x = x;
    result->_offset.y = y;
    result->_sixChannelMode = mode;
    v16 = *&transform->a;
    v17 = *&transform->c;
    *&result->_drawingTransform.tx = *&transform->tx;
    *&result->_drawingTransform.c = v17;
    *&result->_drawingTransform.a = v16;
    result->_extendedDynamicRange = range;
    result->_transparentBlending = blending;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    level = [(PKRendererTileProperties *)self level];
    if (level != [v5 level])
    {
      goto LABEL_12;
    }

    [v5 offset];
    v8 = v7;
    v10 = v9;
    [(PKRendererTileProperties *)self offset];
    LOBYTE(v12) = 0;
    if (v8 != v13 || v10 != v11)
    {
      goto LABEL_13;
    }

    sixChannelMode = [(PKRendererTileProperties *)self sixChannelMode];
    if (sixChannelMode != [v5 sixChannelMode])
    {
      goto LABEL_12;
    }

    [(PKRendererTileProperties *)self drawingTransform];
    if (v5)
    {
      [v5 drawingTransform];
    }

    else
    {
      memset(v18, 0, sizeof(v18));
    }

    if (DKDNearlyEqualTransforms(v19, v18) && (v15 = -[PKRendererTileProperties extendedDynamicRange](self, "extendedDynamicRange"), v15 == [v5 extendedDynamicRange]))
    {
      transparentBlending = [(PKRendererTileProperties *)self transparentBlending];
      v12 = transparentBlending ^ [v5 transparentBlending] ^ 1;
    }

    else
    {
LABEL_12:
      LOBYTE(v12) = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  LOBYTE(v12) = 0;
LABEL_14:

  return v12;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)drawingTransform
{
  v3 = *&self[1].b;
  *&retstr->a = *&self->ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].d;
  return self;
}

@end