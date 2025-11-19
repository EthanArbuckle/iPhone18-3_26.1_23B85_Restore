@interface AVTBackendVersion
+ (id)currentVersion;
+ (id)versionFromDiskAtLocation:(id)a3 error:(id *)a4;
- (AVTBackendVersion)initWithBackendVersion:(double)a3 avatarKitVersion:(double)a4;
- (AVTBackendVersion)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)saveToDiskAtLocation:(id)a3 error:(id *)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVTBackendVersion

+ (id)currentVersion
{
  v2 = [[a1 alloc] initWithBackendVersion:0.6 avatarKitVersion:12.0];

  return v2;
}

- (AVTBackendVersion)initWithBackendVersion:(double)a3 avatarKitVersion:(double)a4
{
  v7.receiver = self;
  v7.super_class = AVTBackendVersion;
  result = [(AVTBackendVersion *)&v7 init];
  if (result)
  {
    result->_backendVersion = a3;
    result->_avatarKitVersion = a4;
  }

  return result;
}

- (BOOL)saveToDiskAtLocation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:a4];
  if (v7)
  {
    v8 = [objc_opt_class() versionFileLocationForStoreLocation:v6];
    v9 = [v7 writeToURL:v8 options:0 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)versionFromDiskAtLocation:(id)a3 error:(id *)a4
{
  v5 = [a1 versionFileLocationForStoreLocation:a3];
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5 options:0 error:a4];
  if (v6)
  {
    v7 = MEMORY[0x277CCAAC8];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:a4];

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

- (AVTBackendVersion)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"backendVersion"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"avatarKitVersion"];
  v8 = v7;

  return [(AVTBackendVersion *)self initWithBackendVersion:v6 avatarKitVersion:v8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(AVTBackendVersion *)self backendVersion];
  [v4 encodeDouble:@"backendVersion" forKey:?];
  [(AVTBackendVersion *)self avatarKitVersion];
  [v4 encodeDouble:@"avatarKitVersion" forKey:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v4;
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