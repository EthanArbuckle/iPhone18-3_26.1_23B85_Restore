@interface _LSDRebuildService
+ (id)XPCInterface;
@end

@implementation _LSDRebuildService

+ (id)XPCInterface
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34___LSDRebuildService_XPCInterface__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (+[_LSDRebuildService XPCInterface]::once != -1)
  {
    dispatch_once(&+[_LSDRebuildService XPCInterface]::once, v4);
  }

  v2 = +[_LSDRebuildService XPCInterface]::result;

  return v2;
}

@end