@interface BuddyCloudConfigMigrationUIConfiguration
- (BuddyCloudConfigMigrationUIConfiguration)initWithIsMandatory:(BOOL)a3 deadline:(id)a4 showsWiFiPickerButton:(BOOL)a5 pendingCloudConfig:(id)a6;
@end

@implementation BuddyCloudConfigMigrationUIConfiguration

- (BuddyCloudConfigMigrationUIConfiguration)initWithIsMandatory:(BOOL)a3 deadline:(id)a4 showsWiFiPickerButton:(BOOL)a5 pendingCloudConfig:(id)a6
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v14 = a5;
  obj = 0;
  objc_storeStrong(&obj, a6);
  v8 = v18;
  v18 = 0;
  v12.receiver = v8;
  v12.super_class = BuddyCloudConfigMigrationUIConfiguration;
  v9 = [(BuddyCloudConfigMigrationUIConfiguration *)&v12 init];
  v18 = v9;
  objc_storeStrong(&v18, v9);
  if (v9)
  {
    *(v18 + 8) = v16;
    objc_storeStrong(v18 + 2, location);
    *(v18 + 9) = v14;
    objc_storeStrong(v18 + 3, obj);
  }

  v10 = v18;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v18, 0);
  return v10;
}

@end