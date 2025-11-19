@interface GKQuadtreeNode
- (GKQuad)quad;
@end

@implementation GKQuadtreeNode

- (GKQuad)quad
{
  quadMin = self->_quad.quadMin;
  quadMax = self->_quad.quadMax;
  result.quadMax = quadMax;
  result.quadMin = quadMin;
  return result;
}

@end