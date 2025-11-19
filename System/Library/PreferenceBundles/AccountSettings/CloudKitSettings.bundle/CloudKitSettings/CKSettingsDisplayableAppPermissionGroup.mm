@interface CKSettingsDisplayableAppPermissionGroup
- (CKSettingsAppNameImage)primaryAppNameImage;
- (CKSettingsDisplayableAppPermissionGroup)initWithApplicationPermissionGroup:(id)a3 appNameImages:(id)a4;
@end

@implementation CKSettingsDisplayableAppPermissionGroup

- (CKSettingsDisplayableAppPermissionGroup)initWithApplicationPermissionGroup:(id)a3 appNameImages:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CKSettingsDisplayableAppPermissionGroup;
  v9 = [(CKSettingsDisplayableAppPermissionGroup *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationPermissionGroup, a3);
    v11 = [v8 sortedArrayUsingComparator:&stru_14808];
    appNameImages = v10->_appNameImages;
    v10->_appNameImages = v11;
  }

  return v10;
}

- (CKSettingsAppNameImage)primaryAppNameImage
{
  v2 = [(CKSettingsDisplayableAppPermissionGroup *)self appNameImages];
  v3 = [v2 firstObject];

  return v3;
}

@end