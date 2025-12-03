@interface _LSDModifyService
+ (id)XPCInterface;
+ (id)dispatchQueue;
@end

@implementation _LSDModifyService

+ (id)XPCInterface
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33___LSDModifyService_XPCInterface__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (+[_LSDModifyService XPCInterface]::once != -1)
  {
    dispatch_once(&+[_LSDModifyService XPCInterface]::once, v4);
  }

  v2 = +[_LSDModifyService XPCInterface]::result;

  return v2;
}

+ (id)dispatchQueue
{
  if (+[_LSDModifyService dispatchQueue]::once != -1)
  {
    +[_LSDModifyService dispatchQueue];
  }

  v3 = +[_LSDModifyService dispatchQueue]::result;

  return v3;
}

@end