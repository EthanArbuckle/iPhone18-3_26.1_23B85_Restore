@interface PKRendererTileProperties
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)drawingTransform;
- (CGPoint)offset;
- (PKRendererTileProperties)initWithLevel:(int64_t)a3 offset:(CGPoint)a4 drawingTransform:(CGAffineTransform *)a5 sixChannelMode:(BOOL)a6 transparentBlending:(BOOL)a7 extendedDynamicRange:(BOOL)a8;
@end

@implementation PKRendererTileProperties

- (PKRendererTileProperties)initWithLevel:(int64_t)a3 offset:(CGPoint)a4 drawingTransform:(CGAffineTransform *)a5 sixChannelMode:(BOOL)a6 transparentBlending:(BOOL)a7 extendedDynamicRange:(BOOL)a8
{
  y = a4.y;
  x = a4.x;
  v18.receiver = self;
  v18.super_class = PKRendererTileProperties;
  result = [(PKRendererTileProperties *)&v18 init];
  if (result)
  {
    result->_level = a3;
    result->_offset.x = x;
    result->_offset.y = y;
    result->_sixChannelMode = a6;
    v16 = *&a5->a;
    v17 = *&a5->c;
    *&result->_drawingTransform.tx = *&a5->tx;
    *&result->_drawingTransform.c = v17;
    *&result->_drawingTransform.a = v16;
    result->_extendedDynamicRange = a8;
    result->_transparentBlending = a7;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PKRendererTileProperties *)self level];
    if (v6 != [v5 level])
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

    v14 = [(PKRendererTileProperties *)self sixChannelMode];
    if (v14 != [v5 sixChannelMode])
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
      v17 = [(PKRendererTileProperties *)self transparentBlending];
      v12 = v17 ^ [v5 transparentBlending] ^ 1;
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