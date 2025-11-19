@interface KNBuildShadowSystem
- ($94F468A8D4C62B317260615823C2B210)centerAtIndexPoint:(CGPoint)a3;
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3;
- ($94F468A8D4C62B317260615823C2B210)vertexPositionAtVertexIndex:(unint64_t)a3 particleIndexPoint:(CGPoint)a4;
- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3;
@end

@implementation KNBuildShadowSystem

- ($94F468A8D4C62B317260615823C2B210)vertexPositionAtVertexIndex:(unint64_t)a3 particleIndexPoint:(CGPoint)a4
{
  v6 = 3 * [(KNBuildShadowSystem *)self indexFromPoint:a4.x, a4.y];
  v7 = [(KNBuildCrumbleSystem *)self->_crumbleSystem dataBuffer];
  v8 = [(KNBuildCrumbleSystem *)self->_crumbleSystem positionAttribute];
  [v7 metalPoint2DForAttribute:v8 atIndex:v6 + a3];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)centerAtIndexPoint:(CGPoint)a3
{
  v4 = 3 * [(KNBuildShadowSystem *)self indexFromPoint:a3.x, a3.y];
  v5 = [(KNBuildCrumbleSystem *)self->_crumbleSystem dataBuffer];
  v6 = [(KNBuildCrumbleSystem *)self->_crumbleSystem centerAttribute];
  [v5 metalPoint2DForAttribute:v6 atIndex:v4];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)a3
{
  v4 = 3 * [(KNBuildShadowSystem *)self indexFromPoint:a3.x, a3.y];
  v5 = [(KNBuildCrumbleSystem *)self->_crumbleSystem dataBuffer];
  v6 = [(KNBuildCrumbleSystem *)self->_crumbleSystem rotationAttribute];
  [v5 metalPoint3DForAttribute:v6 atIndex:v4];
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

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3
{
  v4 = 3 * [(KNBuildShadowSystem *)self indexFromPoint:a3.x, a3.y];
  v5 = [(KNBuildCrumbleSystem *)self->_crumbleSystem dataBuffer];
  v6 = [(KNBuildCrumbleSystem *)self->_crumbleSystem speedAttribute];
  [v5 metalPoint3DForAttribute:v6 atIndex:v4];
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

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3
{
  v4 = 3 * [(KNBuildShadowSystem *)self indexFromPoint:a3.x, a3.y];
  v5 = [(KNBuildCrumbleSystem *)self->_crumbleSystem dataBuffer];
  v6 = [(KNBuildCrumbleSystem *)self->_crumbleSystem lifeSpanAttribute];
  [v5 metalPoint2DForAttribute:v6 atIndex:v4];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

@end