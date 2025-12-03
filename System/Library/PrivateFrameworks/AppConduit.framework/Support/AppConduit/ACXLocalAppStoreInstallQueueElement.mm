@interface ACXLocalAppStoreInstallQueueElement
- (ACXLocalAppStoreInstallQueueElement)initWithApp:(id)app isUserInitiated:(BOOL)initiated completion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation ACXLocalAppStoreInstallQueueElement

- (ACXLocalAppStoreInstallQueueElement)initWithApp:(id)app isUserInitiated:(BOOL)initiated completion:(id)completion
{
  appCopy = app;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = ACXLocalAppStoreInstallQueueElement;
  v11 = [(ACXLocalAppStoreInstallQueueElement *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_app, app);
    v12->_isUserInitiated = initiated;
    v13 = [completionCopy copy];
    completion = v12->_completion;
    v12->_completion = v13;
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = [(ACXLocalAppStoreInstallQueueElement *)self app];
  bundleIdentifier = [v2 bundleIdentifier];
  v4 = [bundleIdentifier hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(ACXLocalAppStoreInstallQueueElement *)self app];
      bundleIdentifier = [v6 bundleIdentifier];
      v8 = [(ACXLocalAppStoreInstallQueueElement *)v5 app];

      bundleIdentifier2 = [v8 bundleIdentifier];
      v10 = [bundleIdentifier isEqualToString:bundleIdentifier2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end