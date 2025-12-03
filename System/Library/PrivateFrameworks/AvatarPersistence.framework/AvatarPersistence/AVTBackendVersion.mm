@interface AVTBackendVersion
+ (id)currentVersion;
+ (id)versionFromDiskAtLocation:(id)location error:(id *)error;
- (AVTBackendVersion)initWithBackendVersion:(double)version avatarKitVersion:(double)kitVersion;
- (AVTBackendVersion)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)saveToDiskAtLocation:(id)location error:(id *)error;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTBackendVersion

+ (id)currentVersion
{
  v2 = [[self alloc] initWithBackendVersion:0.6 avatarKitVersion:12.0];

  return v2;
}

- (AVTBackendVersion)initWithBackendVersion:(double)version avatarKitVersion:(double)kitVersion
{
  v7.receiver = self;
  v7.super_class = AVTBackendVersion;
  result = [(AVTBackendVersion *)&v7 init];
  if (result)
  {
    result->_backendVersion = version;
    result->_avatarKitVersion = kitVersion;
  }

  return result;
}

- (BOOL)saveToDiskAtLocation:(id)location error:(id *)error
{
  locationCopy = location;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:error];
  if (v7)
  {
    v8 = [objc_opt_class() versionFileLocationForStoreLocation:locationCopy];
    v9 = [v7 writeToURL:v8 options:0 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)versionFromDiskAtLocation:(id)location error:(id *)error
{
  v5 = [self versionFileLocationForStoreLocation:location];
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5 options:0 error:error];
  if (v6)
  {
    v7 = MEMORY[0x277CCAAC8];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:error];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [AVTBackendVersion alloc];
      [v11 doubleValue];
      v13 = [AVTBackendVersion initWithBackendVersion:v12 avatarKitVersion:"initWithBackendVersion:avatarKitVersion:"];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Version object is not of expected class"];
      }

      v13 = v11;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (AVTBackendVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"backendVersion"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"avatarKitVersion"];
  v8 = v7;

  return [(AVTBackendVersion *)self initWithBackendVersion:v6 avatarKitVersion:v8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AVTBackendVersion *)self backendVersion];
  [coderCopy encodeDouble:@"backendVersion" forKey:?];
  [(AVTBackendVersion *)self avatarKitVersion];
  [coderCopy encodeDouble:@"avatarKitVersion" forKey:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = equalCopy;
  v7 = v6;
  if ((isKindOfClass & 1) != 0 && ([v6 backendVersion], v9 = v8, -[AVTBackendVersion backendVersion](self, "backendVersion"), v9 == v10))
  {
    [v7 avatarKitVersion];
    v12 = v11;
    [(AVTBackendVersion *)self avatarKitVersion];
    v14 = v12 == v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = AVTBackendVersion;
  v3 = [(AVTBackendVersion *)&v10 description];
  v4 = [v3 mutableCopy];

  [(AVTBackendVersion *)self backendVersion];
  v6 = v5;
  [(AVTBackendVersion *)self avatarKitVersion];
  [v4 appendFormat:@" backend:%2.2f avatarKit:%2.2f", v6, v7];
  v8 = [v4 copy];

  return v8;
}

@end