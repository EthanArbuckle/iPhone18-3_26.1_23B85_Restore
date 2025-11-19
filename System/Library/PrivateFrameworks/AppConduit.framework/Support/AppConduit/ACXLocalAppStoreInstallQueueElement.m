@interface ACXLocalAppStoreInstallQueueElement
- (ACXLocalAppStoreInstallQueueElement)initWithApp:(id)a3 isUserInitiated:(BOOL)a4 completion:(id)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation ACXLocalAppStoreInstallQueueElement

- (ACXLocalAppStoreInstallQueueElement)initWithApp:(id)a3 isUserInitiated:(BOOL)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = ACXLocalAppStoreInstallQueueElement;
  v11 = [(ACXLocalAppStoreInstallQueueElement *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_app, a3);
    v12->_isUserInitiated = a4;
    v13 = [v10 copy];
    completion = v12->_completion;
    v12->_completion = v13;
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = [(ACXLocalAppStoreInstallQueueElement *)self app];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ACXLocalAppStoreInstallQueueElement *)self app];
      v7 = [v6 bundleIdentifier];
      v8 = [(ACXLocalAppStoreInstallQueueElement *)v5 app];

      v9 = [v8 bundleIdentifier];
      v10 = [v7 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end