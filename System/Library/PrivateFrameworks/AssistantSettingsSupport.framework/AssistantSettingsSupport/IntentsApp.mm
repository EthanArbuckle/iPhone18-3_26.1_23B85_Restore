@interface IntentsApp
- (IntentsApp)initWithAppId:(id)id displayName:(id)name accessGranted:(BOOL)granted;
- (int64_t)compareWithIntentsApp:(id)app;
@end

@implementation IntentsApp

- (IntentsApp)initWithAppId:(id)id displayName:(id)name accessGranted:(BOOL)granted
{
  idCopy = id;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = IntentsApp;
  v11 = [(IntentsApp *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appID, id);
    objc_storeStrong(&v12->_displayName, name);
    v12->_accessGranted = granted;
  }

  return v12;
}

- (int64_t)compareWithIntentsApp:(id)app
{
  appCopy = app;
  displayName = [(IntentsApp *)self displayName];
  displayName2 = [appCopy displayName];

  v7 = [displayName compare:displayName2];
  return v7;
}

@end