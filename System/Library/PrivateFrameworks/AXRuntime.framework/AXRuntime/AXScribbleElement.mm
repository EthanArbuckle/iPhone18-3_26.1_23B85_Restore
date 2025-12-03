@interface AXScribbleElement
- (AXScribbleElement)initWithText:(id)text geometry:(CGRect)geometry;
- (CGRect)geometry;
@end

@implementation AXScribbleElement

- (AXScribbleElement)initWithText:(id)text geometry:(CGRect)geometry
{
  height = geometry.size.height;
  width = geometry.size.width;
  y = geometry.origin.y;
  x = geometry.origin.x;
  textCopy = text;
  v14.receiver = self;
  v14.super_class = AXScribbleElement;
  v11 = [(AXScribbleElement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_renderedText, text);
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