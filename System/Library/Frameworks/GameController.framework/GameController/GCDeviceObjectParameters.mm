@interface GCDeviceObjectParameters
+ (Class)objectClass;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation GCDeviceObjectParameters

+ (Class)objectClass
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByReplacingOccurrencesOfString:@"Parameters" withString:&stru_1F4E3B4E0];
  v5 = NSClassFromString(v4);
  if (!v5)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown view class '%@' for parameters class '%@'.", v4, v3];
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v9);
  }

  v6 = v5;
  v7 = v5;

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();

  return objc_opt_new();
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end