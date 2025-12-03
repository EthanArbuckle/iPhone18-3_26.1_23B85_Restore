@interface ZoomMapAction
- (ZoomMapAction)initWithZoomFactor:(double)factor;
@end

@implementation ZoomMapAction

- (ZoomMapAction)initWithZoomFactor:(double)factor
{
  v5.receiver = self;
  v5.super_class = ZoomMapAction;
  result = [(ZoomMapAction *)&v5 init];
  if (result)
  {
    result->_zoomFactor = factor;
  }

  return result;
}

@end