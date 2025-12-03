@interface HSTHostStateEvent
- (HSTHostStateEvent)initWithDeviceOrientation:(unsigned __int8)orientation screenOrientation:(unsigned __int8)screenOrientation coverClosed:(BOOL)closed displayOff:(BOOL)off;
@end

@implementation HSTHostStateEvent

- (HSTHostStateEvent)initWithDeviceOrientation:(unsigned __int8)orientation screenOrientation:(unsigned __int8)screenOrientation coverClosed:(BOOL)closed displayOff:(BOOL)off
{
  v14.receiver = self;
  v14.super_class = HSTHostStateEvent;
  v10 = [(HSTEvent *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_deviceOrientation = orientation;
    v10->_screenOrientation = screenOrientation;
    v10->_coverClosed = closed;
    v10->_displayOff = off;
    v12 = v10;
  }

  return v11;
}

@end