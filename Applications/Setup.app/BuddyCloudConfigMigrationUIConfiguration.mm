@interface BuddyCloudConfigMigrationUIConfiguration
- (BuddyCloudConfigMigrationUIConfiguration)initWithIsMandatory:(BOOL)mandatory deadline:(id)deadline showsWiFiPickerButton:(BOOL)button pendingCloudConfig:(id)config;
@end

@implementation BuddyCloudConfigMigrationUIConfiguration

- (BuddyCloudConfigMigrationUIConfiguration)initWithIsMandatory:(BOOL)mandatory deadline:(id)deadline showsWiFiPickerButton:(BOOL)button pendingCloudConfig:(id)config
{
  selfCopy = self;
  v17 = a2;
  mandatoryCopy = mandatory;
  location = 0;
  objc_storeStrong(&location, deadline);
  buttonCopy = button;
  obj = 0;
  objc_storeStrong(&obj, config);
  v8 = selfCopy;
  selfCopy = 0;
  v12.receiver = v8;
  v12.super_class = BuddyCloudConfigMigrationUIConfiguration;
  v9 = [(BuddyCloudConfigMigrationUIConfiguration *)&v12 init];
  selfCopy = v9;
  objc_storeStrong(&selfCopy, v9);
  if (v9)
  {
    *(selfCopy + 8) = mandatoryCopy;
    objc_storeStrong(selfCopy + 2, location);
    *(selfCopy + 9) = buttonCopy;
    objc_storeStrong(selfCopy + 3, obj);
  }

  v10 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

@end