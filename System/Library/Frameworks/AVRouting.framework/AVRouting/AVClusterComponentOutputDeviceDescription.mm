@interface AVClusterComponentOutputDeviceDescription
- (AVClusterComponentOutputDeviceDescription)initWithDeviceID:(id)a3 deviceName:(id)a4 deviceSubType:(int64_t)a5 isClusterLeader:(BOOL)a6 modelID:(id)a7;
- (void)dealloc;
@end

@implementation AVClusterComponentOutputDeviceDescription

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVClusterComponentOutputDeviceDescription;
  [(AVClusterComponentOutputDeviceDescription *)&v3 dealloc];
}

- (AVClusterComponentOutputDeviceDescription)initWithDeviceID:(id)a3 deviceName:(id)a4 deviceSubType:(int64_t)a5 isClusterLeader:(BOOL)a6 modelID:(id)a7
{
  v17.receiver = self;
  v17.super_class = AVClusterComponentOutputDeviceDescription;
  v12 = [(AVClusterComponentOutputDeviceDescription *)&v17 init];
  if (v12 && (v13 = [a3 copy], (v12->_deviceID = v13) != 0) && (v14 = objc_msgSend(a4, "copy"), (v12->_deviceName = v14) != 0))
  {
    v12->_modelID = [a7 copy];
    v12->_deviceType = 0;
    v12->_deviceSubType = a5;
    v12->_isClusterLeader = a6;
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end