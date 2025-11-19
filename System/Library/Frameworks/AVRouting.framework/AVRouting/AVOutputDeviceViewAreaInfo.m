@interface AVOutputDeviceViewAreaInfo
- (AVOutputDeviceViewAreaInfo)initWithViewArea:(id)a3 transitionControl:(BOOL)a4 supportsFocusTransfer:(BOOL)a5 statusBarEdge:(id)a6 safeArea:(id)a7;
- (void)dealloc;
@end

@implementation AVOutputDeviceViewAreaInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputDeviceViewAreaInfo;
  [(AVOutputDeviceViewAreaInfo *)&v3 dealloc];
}

- (AVOutputDeviceViewAreaInfo)initWithViewArea:(id)a3 transitionControl:(BOOL)a4 supportsFocusTransfer:(BOOL)a5 statusBarEdge:(id)a6 safeArea:(id)a7
{
  v15.receiver = self;
  v15.super_class = AVOutputDeviceViewAreaInfo;
  v12 = [(AVOutputDeviceViewAreaInfo *)&v15 init];
  if (v12)
  {
    v12->_viewArea = a3;
    v12->_transitionControl = a4;
    v12->_supportsFocusTransfer = a5;
    v12->_statusBarEdge = a6;
    v12->_safeArea = a7;
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end