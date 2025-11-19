@interface AXRDeviceRemoteActionSectionContainer
- (AXRDeviceRemoteActionSectionContainer)initWithLocalizedTitle:(id)a3 preferredContextType:(int64_t)a4 remoteActions:(id)a5;
@end

@implementation AXRDeviceRemoteActionSectionContainer

- (AXRDeviceRemoteActionSectionContainer)initWithLocalizedTitle:(id)a3 preferredContextType:(int64_t)a4 remoteActions:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AXRDeviceRemoteActionSectionContainer;
  v11 = [(AXRDeviceRemoteActionSectionContainer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_localizedTitle, a3);
    v12->_preferredContextType = a4;
    objc_storeStrong(&v12->_remoteActions, a5);
  }

  return v12;
}

@end