@interface ZoomMapAction
- (ZoomMapAction)initWithZoomFactor:(double)a3;
@end

@implementation ZoomMapAction

- (ZoomMapAction)initWithZoomFactor:(double)a3
{
  v5.receiver = self;
  v5.super_class = ZoomMapAction;
  result = [(ZoomMapAction *)&v5 init];
  if (result)
  {
    result->_zoomFactor = a3;
  }

  return result;
}

@end