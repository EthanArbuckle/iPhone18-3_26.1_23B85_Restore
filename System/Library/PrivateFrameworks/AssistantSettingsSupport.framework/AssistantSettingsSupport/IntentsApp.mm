@interface IntentsApp
- (IntentsApp)initWithAppId:(id)a3 displayName:(id)a4 accessGranted:(BOOL)a5;
- (int64_t)compareWithIntentsApp:(id)a3;
@end

@implementation IntentsApp

- (IntentsApp)initWithAppId:(id)a3 displayName:(id)a4 accessGranted:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = IntentsApp;
  v11 = [(IntentsApp *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appID, a3);
    objc_storeStrong(&v12->_displayName, a4);
    v12->_accessGranted = a5;
  }

  return v12;
}

- (int64_t)compareWithIntentsApp:(id)a3
{
  v4 = a3;
  v5 = [(IntentsApp *)self displayName];
  v6 = [v4 displayName];

  v7 = [v5 compare:v6];
  return v7;
}

@end