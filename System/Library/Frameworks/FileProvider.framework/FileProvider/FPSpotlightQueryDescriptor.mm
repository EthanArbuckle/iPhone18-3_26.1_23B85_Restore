@interface FPSpotlightQueryDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItemQueryDescriptor:(id)a3;
- (FPSpotlightQueryDescriptor)init;
- (FPSpotlightQueryDescriptor)initWithSettings:(id)a3;
- (NSString)name;
- (id)queryStringForMountPoint:(id)a3;
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

- (FPSpotlightQueryDescriptor)initWithSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FPSpotlightQueryDescriptor;
  v6 = [(FPSpotlightQueryDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
  }

  return v7;
}

- (NSString)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)queryStringForMountPoint:(id)a3
{
  v5 = MEMORY[0x1E696AAA8];
  v6 = a3;
  v7 = [v5 currentHandler];
  v8 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:@"FPSpotlightQueryDescriptor.m" lineNumber:48 description:{@"Subclass should always override %@ (%@)", v8, v6}];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FPSpotlightQueryDescriptor *)self isEqualToItemQueryDescriptor:v4];

  return v5;
}

- (BOOL)isEqualToItemQueryDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 queryStringForMountPoint:@"FPQueryCollectionDefaultMountPointIdentifier"];
  v6 = [(FPSpotlightQueryDescriptor *)self queryStringForMountPoint:@"FPQueryCollectionDefaultMountPointIdentifier"];
  if ([v5 isEqualToString:v6])
  {
    v7 = [v4 desiredCount];
    v8 = v7 == [(FPSpotlightQueryDescriptor *)self desiredCount];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end