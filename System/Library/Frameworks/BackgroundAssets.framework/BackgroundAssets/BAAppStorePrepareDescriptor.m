@interface BAAppStorePrepareDescriptor
+ (id)descriptorWithAppBundleIdentifier:(id)a3 appStoreMetadata:(id)a4 client:(unint64_t)a5;
- (BAAppStorePrepareDescriptor)initWithCoder:(id)a3;
- (id)initPrivatelyWithAppBundleIdentifier:(void *)a3 appStoreMetadata:(void *)a4 client:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BAAppStorePrepareDescriptor

- (BAAppStorePrepareDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BAAppStorePrepareDescriptor;
  v5 = [(BAAppStorePrepareDescriptor *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v6;

    v8 = +[NSSet _baassets_propertyListClasses];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"appStoreMetadata"];
    appStoreMetadata = v5->_appStoreMetadata;
    v5->_appStoreMetadata = v9;

    v5->_cellularPolicy = [v4 decodeIntegerForKey:@"cellularPolicy"];
    v5->_clientType = [v4 decodeIntegerForKey:@"clientType"];
    v5->_userInitiated = [v4 decodeBoolForKey:@"userInitiated"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(BAAppStorePrepareDescriptor *)self appBundleIdentifier];
  [v6 encodeObject:v4 forKey:@"appBundleIdentifier"];

  v5 = [(BAAppStorePrepareDescriptor *)self appStoreMetadata];
  [v6 encodeObject:v5 forKey:@"appStoreMetadata"];

  [v6 encodeInteger:-[BAAppStorePrepareDescriptor cellularPolicy](self forKey:{"cellularPolicy"), @"cellularPolicy"}];
  [v6 encodeInteger:-[BAAppStorePrepareDescriptor clientType](self forKey:{"clientType"), @"clientType"}];
  [v6 encodeBool:-[BAAppStorePrepareDescriptor userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
}

- (id)initPrivatelyWithAppBundleIdentifier:(void *)a3 appStoreMetadata:(void *)a4 client:
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = BAAppStorePrepareDescriptor;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      a1[4] = a4;
    }
  }

  return a1;
}

+ (id)descriptorWithAppBundleIdentifier:(id)a3 appStoreMetadata:(id)a4 client:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[BAAppStorePrepareDescriptor alloc] initPrivatelyWithAppBundleIdentifier:v8 appStoreMetadata:v7 client:a5];

  return v9;
}

@end