@interface NSError
+ (id)gc_VirtualControllerError:(void *)a3 userInfo:;
@end

@implementation NSError

+ (id)gc_VirtualControllerError:(void *)a3 userInfo:
{
  v4 = a3;
  objc_opt_self();
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"GCVirtualControllerError" code:a2 userInfo:v4];

  return v5;
}

@end