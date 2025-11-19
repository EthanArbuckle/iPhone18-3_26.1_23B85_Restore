@interface TPSCollectionViewLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (CGPoint)edgeParallaxOffset;
- (CGPoint)parallaxOffset;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TPSCollectionViewLayoutAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TPSCollectionViewLayoutAttributes;
  v4 = [(TPSCollectionViewLayoutAttributes *)&v6 copyWithZone:a3];
  [v4 setParallaxOffset:{self->_parallaxOffset.x, self->_parallaxOffset.y}];
  [v4 setEdgeParallaxOffset:{self->_edgeParallaxOffset.x, self->_edgeParallaxOffset.y}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TPSCollectionViewLayoutAttributes;
  if (![(TPSCollectionViewLayoutAttributes *)&v13 isEqual:v4])
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 1;
    goto LABEL_12;
  }

  [v4 parallaxOffset];
  if (self->_parallaxOffset.x == v6 && self->_parallaxOffset.y == v5)
  {
    p_edgeParallaxOffset = &self->_edgeParallaxOffset;
    [v4 edgeParallaxOffset];
    v8 = p_edgeParallaxOffset->y == v11 && p_edgeParallaxOffset->x == v10;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (CGPoint)parallaxOffset
{
  x = self->_parallaxOffset.x;
  y = self->_parallaxOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)edgeParallaxOffset
{
  x = self->_edgeParallaxOffset.x;
  y = self->_edgeParallaxOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end