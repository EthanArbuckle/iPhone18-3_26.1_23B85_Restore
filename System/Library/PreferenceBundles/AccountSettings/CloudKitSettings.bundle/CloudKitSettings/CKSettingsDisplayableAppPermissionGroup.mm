@interface CKSettingsDisplayableAppPermissionGroup
- (CKSettingsAppNameImage)primaryAppNameImage;
- (CKSettingsDisplayableAppPermissionGroup)initWithApplicationPermissionGroup:(id)group appNameImages:(id)images;
@end

@implementation CKSettingsDisplayableAppPermissionGroup

- (CKSettingsDisplayableAppPermissionGroup)initWithApplicationPermissionGroup:(id)group appNameImages:(id)images
{
  groupCopy = group;
  imagesCopy = images;
  v14.receiver = self;
  v14.super_class = CKSettingsDisplayableAppPermissionGroup;
  v9 = [(CKSettingsDisplayableAppPermissionGroup *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationPermissionGroup, group);
    v11 = [imagesCopy sortedArrayUsingComparator:&stru_14808];
    appNameImages = v10->_appNameImages;
    v10->_appNameImages = v11;
  }

  return v10;
}

- (CKSettingsAppNameImage)primaryAppNameImage
{
  appNameImages = [(CKSettingsDisplayableAppPermissionGroup *)self appNameImages];
  firstObject = [appNameImages firstObject];

  return firstObject;
}

@end