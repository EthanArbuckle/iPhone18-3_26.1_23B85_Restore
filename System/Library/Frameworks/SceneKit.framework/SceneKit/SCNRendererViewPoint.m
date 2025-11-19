@interface SCNRendererViewPoint
- ($54B668FA3CFF7C50914A1C899F2834C0)viewport;
- (SCNMatrix4)projectionMatrix;
- (SCNMatrix4)viewMatrix;
- (__n128)setSimdProjectionMatrix:(__n128)a3;
- (__n128)setSimdViewMatrix:(__n128)a3;
- (void)dealloc;
- (void)setProjectionMatrix:(SCNMatrix4 *)a3;
- (void)setViewMatrix:(SCNMatrix4 *)a3;
- (void)setViewport:(id *)a3;
@end

@implementation SCNRendererViewPoint

- (__n128)setSimdViewMatrix:(__n128)a3
{
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  return result;
}

- (__n128)setSimdProjectionMatrix:(__n128)a3
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  result[11] = a5;
  return result;
}

- ($54B668FA3CFF7C50914A1C899F2834C0)viewport
{
  v3 = *&self->var4;
  *&retstr->var0 = *&self->var2;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[1].var0;
  return self;
}

- (void)setViewport:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var4;
  *&self->_viewport.width = *&a3->var2;
  *&self->_viewport.znear = v4;
  *&self->_viewport.originX = v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNRendererViewPoint;
  [(SCNRendererViewPoint *)&v3 dealloc];
}

- (SCNMatrix4)viewMatrix
{
  v3 = *&self[1].m21;
  *&retstr->m11 = *&self[1].m11;
  *&retstr->m21 = v3;
  v4 = *&self[1].m41;
  *&retstr->m31 = *&self[1].m31;
  *&retstr->m41 = v4;
  return self;
}

- (void)setViewMatrix:(SCNMatrix4 *)a3
{
  v3 = *&a3->m11;
  v4 = *&a3->m21;
  v5 = *&a3->m41;
  *&self->_viewMatrix.m31 = *&a3->m31;
  *&self->_viewMatrix.m41 = v5;
  *&self->_viewMatrix.m11 = v3;
  *&self->_viewMatrix.m21 = v4;
}

- (SCNMatrix4)projectionMatrix
{
  v3 = *&self[2].m21;
  *&retstr->m11 = *&self[2].m11;
  *&retstr->m21 = v3;
  v4 = *&self[2].m41;
  *&retstr->m31 = *&self[2].m31;
  *&retstr->m41 = v4;
  return self;
}

- (void)setProjectionMatrix:(SCNMatrix4 *)a3
{
  v3 = *&a3->m11;
  v4 = *&a3->m21;
  v5 = *&a3->m41;
  *&self->_projectionMatrix.m31 = *&a3->m31;
  *&self->_projectionMatrix.m41 = v5;
  *&self->_projectionMatrix.m11 = v3;
  *&self->_projectionMatrix.m21 = v4;
}

@end