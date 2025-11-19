@interface _GCDevicePhysicalInputViewParameters
+ (Class)viewClass;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _GCDevicePhysicalInputViewParameters

+ (Class)viewClass
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [(NSString *)v3 stringByReplacingOccurrencesOfString:@"Parameters" withString:&stru_1F4E3B4E0];
  v5 = NSClassFromString(v4);
  if (!v5 || (v6 = v5, ![(objc_class *)v5 isSubclassOfClass:objc_opt_class()]))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown view class '%@' for parameters class '%@'.", v4, v3];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();

  return objc_opt_new();
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end