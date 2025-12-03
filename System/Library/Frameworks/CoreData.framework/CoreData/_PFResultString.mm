@interface _PFResultString
+ (unint64_t)bufferOffset;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _PFResultString

+ (unint64_t)bufferOffset
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);

  return [v4 initWithString:self];
}

- (id)copy
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);

  return [v3 initWithString:self];
}

@end