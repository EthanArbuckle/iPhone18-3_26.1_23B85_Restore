@interface THHighlightLine
- (CGRect)currentLineRect;
- (CGRect)fullLineRect;
- (void)dealloc;
@end

@implementation THHighlightLine

- (void)dealloc
{
  [(THHighlightLine *)self setContentLayer:0];
  v3.receiver = self;
  v3.super_class = THHighlightLine;
  [(THHighlightLine *)&v3 dealloc];
}

- (CGRect)fullLineRect
{
  x = self->_fullLineRect.origin.x;
  y = self->_fullLineRect.origin.y;
  width = self->_fullLineRect.size.width;
  height = self->_fullLineRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)currentLineRect
{
  x = self->_currentLineRect.origin.x;
  y = self->_currentLineRect.origin.y;
  width = self->_currentLineRect.size.width;
  height = self->_currentLineRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end