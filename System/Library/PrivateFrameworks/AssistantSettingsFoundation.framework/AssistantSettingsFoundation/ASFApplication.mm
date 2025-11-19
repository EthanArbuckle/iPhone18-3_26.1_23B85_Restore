@interface ASFApplication
- (ASFApplication)initWithBundleId:(id)a3 localizedName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (int64_t)compareByName:(id)a3;
@end

@implementation ASFApplication

- (ASFApplication)initWithBundleId:(id)a3 localizedName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASFApplication;
  v9 = [(ASFApplication *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleId, a3);
    objc_storeStrong(&v10->_localizedName, a4);
  }

  return v10;
}

- (int64_t)compareByName:(id)a3
{
  v4 = a3;
  v5 = [(ASFApplication *)self localizedName];
  v6 = [v4 localizedName];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ASFApplication *)v5 bundleId];
      bundleId = self->_bundleId;
      if (bundleId == v6 || [(NSString *)bundleId isEqual:v6])
      {
        v8 = [(ASFApplication *)v5 localizedName];
        localizedName = self->_localizedName;
        v10 = localizedName == v8 || [(NSString *)localizedName isEqual:v8];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end