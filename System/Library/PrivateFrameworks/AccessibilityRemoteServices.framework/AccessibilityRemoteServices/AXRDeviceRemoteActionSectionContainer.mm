@interface AXRDeviceRemoteActionSectionContainer
- (AXRDeviceRemoteActionSectionContainer)initWithLocalizedTitle:(id)title preferredContextType:(int64_t)type remoteActions:(id)actions;
@end

@implementation AXRDeviceRemoteActionSectionContainer

- (AXRDeviceRemoteActionSectionContainer)initWithLocalizedTitle:(id)title preferredContextType:(int64_t)type remoteActions:(id)actions
{
  titleCopy = title;
  actionsCopy = actions;
  v14.receiver = self;
  v14.super_class = AXRDeviceRemoteActionSectionContainer;
  v11 = [(AXRDeviceRemoteActionSectionContainer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_localizedTitle, title);
    v12->_preferredContextType = type;
    objc_storeStrong(&v12->_remoteActions, actions);
  }

  return v12;
}

@end