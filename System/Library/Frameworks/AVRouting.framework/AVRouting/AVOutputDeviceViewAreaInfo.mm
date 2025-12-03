@interface AVOutputDeviceViewAreaInfo
- (AVOutputDeviceViewAreaInfo)initWithViewArea:(id)area transitionControl:(BOOL)control supportsFocusTransfer:(BOOL)transfer statusBarEdge:(id)edge safeArea:(id)safeArea;
- (void)dealloc;
@end

@implementation AVOutputDeviceViewAreaInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputDeviceViewAreaInfo;
  [(AVOutputDeviceViewAreaInfo *)&v3 dealloc];
}

- (AVOutputDeviceViewAreaInfo)initWithViewArea:(id)area transitionControl:(BOOL)control supportsFocusTransfer:(BOOL)transfer statusBarEdge:(id)edge safeArea:(id)safeArea
{
  v15.receiver = self;
  v15.super_class = AVOutputDeviceViewAreaInfo;
  v12 = [(AVOutputDeviceViewAreaInfo *)&v15 init];
  if (v12)
  {
    v12->_viewArea = area;
    v12->_transitionControl = control;
    v12->_supportsFocusTransfer = transfer;
    v12->_statusBarEdge = edge;
    v12->_safeArea = safeArea;
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end