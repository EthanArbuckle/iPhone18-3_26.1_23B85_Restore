@interface _LSDOpenService
+ (id)XPCInterface;
- (_LSDOpenService)initWithXPCListener:(id)a3;
@end

@implementation _LSDOpenService

+ (id)XPCInterface
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31___LSDOpenService_XPCInterface__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = a1;
  if (+[_LSDOpenService XPCInterface]::once != -1)
  {
    dispatch_once(&+[_LSDOpenService XPCInterface]::once, v4);
  }

  v2 = +[_LSDOpenService XPCInterface]::result;

  return v2;
}

- (_LSDOpenService)initWithXPCListener:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _LSDOpenService;
  v5 = [(_LSDService *)&v8 initWithXPCListener:v4];
  if (v5)
  {
    v6 = _LSServer_GetIOQueue();
    dispatch_async(v6, &__block_literal_global_34);
  }

  return v5;
}

@end