@interface DebugFrameConfig
- (CGRect)frame;
- (UILayoutGuide)layoutGuide;
@end

@implementation DebugFrameConfig

- (UILayoutGuide)layoutGuide
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutGuide);

  return WeakRetained;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end