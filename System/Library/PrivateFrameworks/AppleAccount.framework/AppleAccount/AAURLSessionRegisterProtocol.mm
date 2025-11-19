@interface AAURLSessionRegisterProtocol
@end

@implementation AAURLSessionRegisterProtocol

uint64_t ___AAURLSessionRegisterProtocol_block_invoke()
{
  v0 = MEMORY[0x1E695AC60];
  v1 = objc_opt_class();

  return [v0 registerClass:v1];
}

@end