@interface _LSDReadService
+ (id)XPCInterface;
@end

@implementation _LSDReadService

+ (id)XPCInterface
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31___LSDReadService_XPCInterface__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (+[_LSDReadService XPCInterface]::once != -1)
  {
    dispatch_once(&+[_LSDReadService XPCInterface]::once, v4);
  }

  v2 = +[_LSDReadService XPCInterface]::result;

  return v2;
}

@end