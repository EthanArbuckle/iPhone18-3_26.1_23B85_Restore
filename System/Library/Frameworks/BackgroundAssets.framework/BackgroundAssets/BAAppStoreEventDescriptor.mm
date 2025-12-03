@interface BAAppStoreEventDescriptor
+ (id)descriptorWithAppBundleIdentifier:(id)identifier appBundleURL:(id)l event:(unint64_t)event client:(unint64_t)client;
- (BAAppStoreEventDescriptor)initWithCoder:(id)coder;
- (id)initPrivatelyWithAppBundleIdentifier:(void *)identifier appBundleURL:(void *)l event:(void *)event client:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BAAppStoreEventDescriptor

- (BAAppStoreEventDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BAAppStoreEventDescriptor;
  v5 = [(BAAppStoreEventDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleURL"];
    appBundleURL = v5->_appBundleURL;
    v5->_appBundleURL = v8;

    v5->_eventType = [coderCopy decodeIntegerForKey:@"eventType"];
    v5->_clientType = [coderCopy decodeIntegerForKey:@"clientType"];
    v5->_userInitiated = [coderCopy decodeBoolForKey:@"userInitiated"];
    v5->_automaticInstall = [coderCopy decodeBoolForKey:@"automaticInstall"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appBundleIdentifier = [(BAAppStoreEventDescriptor *)self appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"appBundleIdentifier"];

  appBundleURL = [(BAAppStoreEventDescriptor *)self appBundleURL];
  [coderCopy encodeObject:appBundleURL forKey:@"appBundleURL"];

  [coderCopy encodeInteger:-[BAAppStoreEventDescriptor eventType](self forKey:{"eventType"), @"eventType"}];
  [coderCopy encodeInteger:-[BAAppStoreEventDescriptor clientType](self forKey:{"clientType"), @"clientType"}];
  [coderCopy encodeBool:-[BAAppStoreEventDescriptor userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
  [coderCopy encodeBool:-[BAAppStoreEventDescriptor automaticInstall](self forKey:{"automaticInstall"), @"automaticInstall"}];
}

- (id)initPrivatelyWithAppBundleIdentifier:(void *)identifier appBundleURL:(void *)l event:(void *)event client:
{
  v10 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = BAAppStoreEventDescriptor;
    v12 = objc_msgSendSuper2(&v14, sel_init);
    self = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 2, a2);
      objc_storeStrong(self + 3, identifier);
      self[4] = l;
      self[5] = event;
      *(self + 4) = 0;
    }
  }

  return self;
}

+ (id)descriptorWithAppBundleIdentifier:(id)identifier appBundleURL:(id)l event:(unint64_t)event client:(unint64_t)client
{
  lCopy = l;
  identifierCopy = identifier;
  v11 = [[BAAppStoreEventDescriptor alloc] initPrivatelyWithAppBundleIdentifier:identifierCopy appBundleURL:lCopy event:event client:client];

  return v11;
}

@end