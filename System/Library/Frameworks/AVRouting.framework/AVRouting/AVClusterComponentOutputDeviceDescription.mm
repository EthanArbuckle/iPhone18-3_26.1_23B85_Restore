@interface AVClusterComponentOutputDeviceDescription
- (AVClusterComponentOutputDeviceDescription)initWithDeviceID:(id)d deviceName:(id)name deviceSubType:(int64_t)type isClusterLeader:(BOOL)leader modelID:(id)iD;
- (void)dealloc;
@end

@implementation AVClusterComponentOutputDeviceDescription

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVClusterComponentOutputDeviceDescription;
  [(AVClusterComponentOutputDeviceDescription *)&v3 dealloc];
}

- (AVClusterComponentOutputDeviceDescription)initWithDeviceID:(id)d deviceName:(id)name deviceSubType:(int64_t)type isClusterLeader:(BOOL)leader modelID:(id)iD
{
  v17.receiver = self;
  v17.super_class = AVClusterComponentOutputDeviceDescription;
  v12 = [(AVClusterComponentOutputDeviceDescription *)&v17 init];
  if (v12 && (v13 = [d copy], (v12->_deviceID = v13) != 0) && (v14 = objc_msgSend(name, "copy"), (v12->_deviceName = v14) != 0))
  {
    v12->_modelID = [iD copy];
    v12->_deviceType = 0;
    v12->_deviceSubType = type;
    v12->_isClusterLeader = leader;
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end