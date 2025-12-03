@interface ASFApplication
- (ASFApplication)initWithBundleId:(id)id localizedName:(id)name;
- (BOOL)isEqual:(id)equal;
- (int64_t)compareByName:(id)name;
@end

@implementation ASFApplication

- (ASFApplication)initWithBundleId:(id)id localizedName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = ASFApplication;
  v9 = [(ASFApplication *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleId, id);
    objc_storeStrong(&v10->_localizedName, name);
  }

  return v10;
}

- (int64_t)compareByName:(id)name
{
  nameCopy = name;
  localizedName = [(ASFApplication *)self localizedName];
  localizedName2 = [nameCopy localizedName];

  v7 = [localizedName compare:localizedName2];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      bundleId = [(ASFApplication *)v5 bundleId];
      bundleId = self->_bundleId;
      if (bundleId == bundleId || [(NSString *)bundleId isEqual:bundleId])
      {
        localizedName = [(ASFApplication *)v5 localizedName];
        localizedName = self->_localizedName;
        v10 = localizedName == localizedName || [(NSString *)localizedName isEqual:localizedName];
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