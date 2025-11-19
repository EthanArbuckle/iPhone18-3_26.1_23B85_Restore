@interface CSLNotificationAppController
- (id)applicationBundleIdentifier;
@end

@implementation CSLNotificationAppController

- (id)applicationBundleIdentifier
{
  v3 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:BPSNotificationAppBBSectionInfo];
  bbSectionInfo = self->_bbSectionInfo;
  self->_bbSectionInfo = v3;

  v5 = self->_bbSectionInfo;

  return [(BBSectionInfo *)v5 sectionID];
}

@end