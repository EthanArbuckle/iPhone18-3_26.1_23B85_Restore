@interface BAAppStoreEventDescriptor
+ (id)descriptorWithAppBundleIdentifier:(id)a3 appBundleURL:(id)a4 event:(unint64_t)a5 client:(unint64_t)a6;
- (BAAppStoreEventDescriptor)initWithCoder:(id)a3;
- (id)initPrivatelyWithAppBundleIdentifier:(void *)a3 appBundleURL:(void *)a4 event:(void *)a5 client:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BAAppStoreEventDescriptor

- (BAAppStoreEventDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BAAppStoreEventDescriptor;
  v5 = [(BAAppStoreEventDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleURL"];
    appBundleURL = v5->_appBundleURL;
    v5->_appBundleURL = v8;

    v5->_eventType = [v4 decodeIntegerForKey:@"eventType"];
    v5->_clientType = [v4 decodeIntegerForKey:@"clientType"];
    v5->_userInitiated = [v4 decodeBoolForKey:@"userInitiated"];
    v5->_automaticInstall = [v4 decodeBoolForKey:@"automaticInstall"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(BAAppStoreEventDescriptor *)self appBundleIdentifier];
  [v6 encodeObject:v4 forKey:@"appBundleIdentifier"];

  v5 = [(BAAppStoreEventDescriptor *)self appBundleURL];
  [v6 encodeObject:v5 forKey:@"appBundleURL"];

  [v6 encodeInteger:-[BAAppStoreEventDescriptor eventType](self forKey:{"eventType"), @"eventType"}];
  [v6 encodeInteger:-[BAAppStoreEventDescriptor clientType](self forKey:{"clientType"), @"clientType"}];
  [v6 encodeBool:-[BAAppStoreEventDescriptor userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
  [v6 encodeBool:-[BAAppStoreEventDescriptor automaticInstall](self forKey:{"automaticInstall"), @"automaticInstall"}];
}

- (id)initPrivatelyWithAppBundleIdentifier:(void *)a3 appBundleURL:(void *)a4 event:(void *)a5 client:
{
  v10 = a2;
  v11 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = BAAppStoreEventDescriptor;
    v12 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      a1[4] = a4;
      a1[5] = a5;
      *(a1 + 4) = 0;
    }
  }

  return a1;
}

+ (id)descriptorWithAppBundleIdentifier:(id)a3 appBundleURL:(id)a4 event:(unint64_t)a5 client:(unint64_t)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [[BAAppStoreEventDescriptor alloc] initPrivatelyWithAppBundleIdentifier:v10 appBundleURL:v9 event:a5 client:a6];

  return v11;
}

@end