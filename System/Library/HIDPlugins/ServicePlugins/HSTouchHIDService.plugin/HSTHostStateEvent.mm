@interface HSTHostStateEvent
- (HSTHostStateEvent)initWithDeviceOrientation:(unsigned __int8)a3 screenOrientation:(unsigned __int8)a4 coverClosed:(BOOL)a5 displayOff:(BOOL)a6;
@end

@implementation HSTHostStateEvent

- (HSTHostStateEvent)initWithDeviceOrientation:(unsigned __int8)a3 screenOrientation:(unsigned __int8)a4 coverClosed:(BOOL)a5 displayOff:(BOOL)a6
{
  v14.receiver = self;
  v14.super_class = HSTHostStateEvent;
  v10 = [(HSTEvent *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_deviceOrientation = a3;
    v10->_screenOrientation = a4;
    v10->_coverClosed = a5;
    v10->_displayOff = a6;
    v12 = v10;
  }

  return v11;
}

@end