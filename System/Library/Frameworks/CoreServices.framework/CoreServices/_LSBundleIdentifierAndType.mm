@interface _LSBundleIdentifierAndType
+ (id)createRepresentingProxy:(id)proxy;
+ (id)createRepresentingRecord:(id)record;
- (BOOL)isEqual:(id)equal;
- (_LSBundleIdentifierAndType)initWithBundleID:(id)d type:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _LSBundleIdentifierAndType

- (_LSBundleIdentifierAndType)initWithBundleID:(id)d type:(id)type
{
  dCopy = d;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = _LSBundleIdentifierAndType;
  v9 = [(_LSBundleIdentifierAndType *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleID, d);
    objc_storeStrong(&v10->_type, type);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleID = [v5 bundleID];
    if ([bundleID isEqualToString:self->_bundleID])
    {
      type = [v5 type];
      v8 = [type isEqual:self->_type];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_LSBundleIdentifierAndType alloc];
  bundleID = self->_bundleID;
  type = self->_type;

  return [(_LSBundleIdentifierAndType *)v4 initWithBundleID:bundleID type:type];
}

+ (id)createRepresentingProxy:(id)proxy
{
  correspondingApplicationRecord = [proxy correspondingApplicationRecord];
  v5 = [self createRepresentingRecord:correspondingApplicationRecord];

  return v5;
}

+ (id)createRepresentingRecord:(id)record
{
  recordCopy = record;
  bundleIdentifier = [recordCopy bundleIdentifier];
  typeForInstallMachinery = [recordCopy typeForInstallMachinery];

  v7 = 0;
  if (bundleIdentifier && typeForInstallMachinery)
  {
    v7 = [[self alloc] initWithBundleID:bundleIdentifier type:typeForInstallMachinery];
  }

  return v7;
}

@end