@interface WKTextSelectionRectCustomHandleInfo
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (WKTextSelectionRectCustomHandleInfo)initWithFloatQuad:(const FloatQuad *)a3 isHorizontal:(BOOL)a4;
- (id).cxx_construct;
@end

@implementation WKTextSelectionRectCustomHandleInfo

- (WKTextSelectionRectCustomHandleInfo)initWithFloatQuad:(const FloatQuad *)a3 isHorizontal:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = WKTextSelectionRectCustomHandleInfo;
  result = [(WKTextSelectionRectCustomHandleInfo *)&v8 init];
  if (result)
  {
    v7 = *&a3->m_p3.m_x;
    *&result->_quad.m_p1.m_x = *&a3->m_p1.m_x;
    *&result->_quad.m_p3.m_x = v7;
    result->_isHorizontal = a4;
  }

  return result;
}

- (CGPoint)bottomLeft
{
  WebCore::FloatPoint::operator CGPoint();
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)topLeft
{
  WebCore::FloatPoint::operator CGPoint();
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)bottomRight
{
  WebCore::FloatPoint::operator CGPoint();
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)topRight
{
  WebCore::FloatPoint::operator CGPoint();
  result.y = v3;
  result.x = v2;
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end