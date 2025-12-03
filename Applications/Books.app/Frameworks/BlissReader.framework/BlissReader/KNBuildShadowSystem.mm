@interface KNBuildShadowSystem
- ($94F468A8D4C62B317260615823C2B210)centerAtIndexPoint:(CGPoint)point;
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)point;
- ($94F468A8D4C62B317260615823C2B210)vertexPositionAtVertexIndex:(unint64_t)index particleIndexPoint:(CGPoint)point;
- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)point;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point;
@end

@implementation KNBuildShadowSystem

- ($94F468A8D4C62B317260615823C2B210)vertexPositionAtVertexIndex:(unint64_t)index particleIndexPoint:(CGPoint)point
{
  v6 = 3 * [(KNBuildShadowSystem *)self indexFromPoint:point.x, point.y];
  dataBuffer = [(KNBuildCrumbleSystem *)self->_crumbleSystem dataBuffer];
  positionAttribute = [(KNBuildCrumbleSystem *)self->_crumbleSystem positionAttribute];
  [dataBuffer metalPoint2DForAttribute:positionAttribute atIndex:v6 + index];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)centerAtIndexPoint:(CGPoint)point
{
  v4 = 3 * [(KNBuildShadowSystem *)self indexFromPoint:point.x, point.y];
  dataBuffer = [(KNBuildCrumbleSystem *)self->_crumbleSystem dataBuffer];
  centerAttribute = [(KNBuildCrumbleSystem *)self->_crumbleSystem centerAttribute];
  [dataBuffer metalPoint2DForAttribute:centerAttribute atIndex:v4];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)point
{
  v4 = 3 * [(KNBuildShadowSystem *)self indexFromPoint:point.x, point.y];
  dataBuffer = [(KNBuildCrumbleSystem *)self->_crumbleSystem dataBuffer];
  rotationAttribute = [(KNBuildCrumbleSystem *)self->_crumbleSystem rotationAttribute];
  [dataBuffer metalPoint3DForAttribute:rotationAttribute atIndex:v4];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v8;
  v14 = v10;
  v15 = v12;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point
{
  v4 = 3 * [(KNBuildShadowSystem *)self indexFromPoint:point.x, point.y];
  dataBuffer = [(KNBuildCrumbleSystem *)self->_crumbleSystem dataBuffer];
  speedAttribute = [(KNBuildCrumbleSystem *)self->_crumbleSystem speedAttribute];
  [dataBuffer metalPoint3DForAttribute:speedAttribute atIndex:v4];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v8;
  v14 = v10;
  v15 = v12;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)point
{
  v4 = 3 * [(KNBuildShadowSystem *)self indexFromPoint:point.x, point.y];
  dataBuffer = [(KNBuildCrumbleSystem *)self->_crumbleSystem dataBuffer];
  lifeSpanAttribute = [(KNBuildCrumbleSystem *)self->_crumbleSystem lifeSpanAttribute];
  [dataBuffer metalPoint2DForAttribute:lifeSpanAttribute atIndex:v4];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

@end