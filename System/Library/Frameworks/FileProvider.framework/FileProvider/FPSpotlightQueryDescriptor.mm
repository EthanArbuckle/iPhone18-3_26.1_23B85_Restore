@interface FPSpotlightQueryDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItemQueryDescriptor:(id)descriptor;
- (FPSpotlightQueryDescriptor)init;
- (FPSpotlightQueryDescriptor)initWithSettings:(id)settings;
- (NSString)name;
- (id)queryStringForMountPoint:(id)point;
- (unint64_t)hash;
@end

@implementation FPSpotlightQueryDescriptor

- (unint64_t)hash
{
  v3 = [(FPSpotlightQueryDescriptor *)self queryStringForMountPoint:@"FPQueryCollectionDefaultMountPointIdentifier"];
  v4 = [v3 hash];

  return [(FPSpotlightQueryDescriptor *)self desiredCount]^ v4;
}

- (FPSpotlightQueryDescriptor)init
{
  v3 = objc_opt_new();
  v4 = [(FPSpotlightQueryDescriptor *)self initWithSettings:v3];

  return v4;
}

- (FPSpotlightQueryDescriptor)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = FPSpotlightQueryDescriptor;
  v6 = [(FPSpotlightQueryDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
  }

  return v7;
}

- (NSString)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)queryStringForMountPoint:(id)point
{
  v5 = MEMORY[0x1E696AAA8];
  pointCopy = point;
  currentHandler = [v5 currentHandler];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPSpotlightQueryDescriptor.m" lineNumber:48 description:{@"Subclass should always override %@ (%@)", v8, pointCopy}];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FPSpotlightQueryDescriptor *)self isEqualToItemQueryDescriptor:equalCopy];

  return v5;
}

- (BOOL)isEqualToItemQueryDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [descriptorCopy queryStringForMountPoint:@"FPQueryCollectionDefaultMountPointIdentifier"];
  v6 = [(FPSpotlightQueryDescriptor *)self queryStringForMountPoint:@"FPQueryCollectionDefaultMountPointIdentifier"];
  if ([v5 isEqualToString:v6])
  {
    desiredCount = [descriptorCopy desiredCount];
    v8 = desiredCount == [(FPSpotlightQueryDescriptor *)self desiredCount];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end