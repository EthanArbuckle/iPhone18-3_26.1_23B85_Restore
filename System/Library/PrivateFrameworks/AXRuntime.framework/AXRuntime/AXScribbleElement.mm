@interface AXScribbleElement
- (AXScribbleElement)initWithText:(id)a3 geometry:(CGRect)a4;
- (CGRect)geometry;
@end

@implementation AXScribbleElement

- (AXScribbleElement)initWithText:(id)a3 geometry:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = AXScribbleElement;
  v11 = [(AXScribbleElement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_renderedText, a3);
    v12->_geometry.origin.x = x;
    v12->_geometry.origin.y = y;
    v12->_geometry.size.width = width;
    v12->_geometry.size.height = height;
  }

  return v12;
}

- (CGRect)geometry
{
  x = self->_geometry.origin.x;
  y = self->_geometry.origin.y;
  width = self->_geometry.size.width;
  height = self->_geometry.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end