@interface WKTextSelectionRect
- (CGRect)rect;
- (FloatQuad)_convertQuadToSelectionContainer:(SEL)container;
- (WKTextSelectionRect)initWithCGRect:(CGRect)rect;
- (WKTextSelectionRect)initWithSelectionGeometry:(const void *)geometry delegate:(id)delegate;
- (id).cxx_construct;
- (id)_customHandleInfo;
- (id)_path;
@end

@implementation WKTextSelectionRect

- (WKTextSelectionRect)initWithCGRect:(CGRect)rect
{
  rectCopy = rect;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  memset(v10, 0, 13);
  v9 = 0;
  v10[13] = 1;
  v12 = 0;
  v11[0] = 0;
  *(v11 + 3) = 0;
  v6.m_location = WebCore::enclosingIntRect(&rectCopy, a2);
  v6.m_size = v4;
  WebCore::SelectionGeometry::setRect(v7, &v6);
  return [(WKTextSelectionRect *)self initWithSelectionGeometry:v7 delegate:0];
}

- (WKTextSelectionRect)initWithSelectionGeometry:(const void *)geometry delegate:(id)delegate
{
  v13.receiver = self;
  v13.super_class = WKTextSelectionRect;
  v6 = [(WKTextSelectionRect *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v8 = *(geometry + 1);
    *(v6 + 24) = *geometry;
    *(v6 + 40) = v8;
    v10 = *(geometry + 3);
    v9 = *(geometry + 4);
    v11 = *(geometry + 2);
    *(v6 + 26) = *(geometry + 20);
    *(v6 + 72) = v10;
    *(v6 + 88) = v9;
    *(v6 + 56) = v11;
    objc_storeWeak(v6 + 14, delegate);
  }

  return v7;
}

- (id)_path
{
  p_selectionGeometry = &self->_selectionGeometry;
  if (!self->_selectionGeometry.m_behavior)
  {
    return 0;
  }

  if (objc_loadWeak(&self->_delegate))
  {
    [objc_loadWeak(&self->_delegate) scaleFactorForSelectionRect:self];
  }

  WebCore::SelectionGeometry::rect(p_selectionGeometry);
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  WebCore::FloatPoint::operator CGPoint();
  [bezierPath moveToPoint:?];
  WebCore::FloatPoint::operator CGPoint();
  [bezierPath addLineToPoint:?];
  WebCore::FloatPoint::operator CGPoint();
  [bezierPath addLineToPoint:?];
  WebCore::FloatPoint::operator CGPoint();
  [bezierPath addLineToPoint:?];
  WebCore::FloatPoint::operator CGPoint();
  [bezierPath addLineToPoint:?];
  [bezierPath closePath];
  return bezierPath;
}

- (FloatQuad)_convertQuadToSelectionContainer:(SEL)container
{
  result = objc_loadWeak(&self->_delegate);
  if (result)
  {
    result = objc_loadWeak(&self->_delegate);
    if (result)
    {

      return [(FloatQuad *)result selectionRect:self convertQuadToSelectionContainer:a4];
    }

    else
    {
      *&retstr->m_p1.m_x = 0u;
      *&retstr->m_p3.m_x = 0u;
    }
  }

  else
  {
    v8 = *&a4->m_p3.m_x;
    *&retstr->m_p1.m_x = *&a4->m_p1.m_x;
    *&retstr->m_p3.m_x = v8;
  }

  return result;
}

- (id)_customHandleInfo
{
  p_selectionGeometry = &self->_selectionGeometry;
  if (!self->_selectionGeometry.m_behavior)
  {
    return 0;
  }

  v3 = *&self->_selectionGeometry.m_quad.m_p3.m_x;
  v8[0] = *&p_selectionGeometry->m_quad.m_p1.m_x;
  v8[1] = v3;
  [(WKTextSelectionRect *)self _convertQuadToSelectionContainer:v8];
  v4 = [[WKTextSelectionRectCustomHandleInfo alloc] initWithFloatQuad:v9 isHorizontal:p_selectionGeometry->m_isHorizontal];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

- (CGRect)rect
{
  WebCore::SelectionGeometry::rect(&self->_selectionGeometry);
  WebCore::IntRect::operator CGRect();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 28) = 0;
  *(self + 68) = 0;
  *(self + 60) = 0;
  *(self + 73) = 0;
  *(self + 81) = 1;
  *(self + 104) = 0;
  *(self + 82) = 0;
  *(self + 85) = 0;
  return self;
}

@end