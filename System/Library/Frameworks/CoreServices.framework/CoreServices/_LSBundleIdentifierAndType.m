@interface _LSBundleIdentifierAndType
+ (id)createRepresentingProxy:(id)a3;
+ (id)createRepresentingRecord:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_LSBundleIdentifierAndType)initWithBundleID:(id)a3 type:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _LSBundleIdentifierAndType

- (_LSBundleIdentifierAndType)initWithBundleID:(id)a3 type:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _LSBundleIdentifierAndType;
  v9 = [(_LSBundleIdentifierAndType *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleID, a3);
    objc_storeStrong(&v10->_type, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 bundleID];
    if ([v6 isEqualToString:self->_bundleID])
    {
      v7 = [v5 type];
      v8 = [v7 isEqual:self->_type];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_LSBundleIdentifierAndType alloc];
  bundleID = self->_bundleID;
  type = self->_type;

  return [(_LSBundleIdentifierAndType *)v4 initWithBundleID:bundleID type:type];
}

+ (id)createRepresentingProxy:(id)a3
{
  v4 = [a3 correspondingApplicationRecord];
  v5 = [a1 createRepresentingRecord:v4];

  return v5;
}

+ (id)createRepresentingRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [v4 typeForInstallMachinery];

  v7 = 0;
  if (v5 && v6)
  {
    v7 = [[a1 alloc] initWithBundleID:v5 type:v6];
  }

  return v7;
}

@end