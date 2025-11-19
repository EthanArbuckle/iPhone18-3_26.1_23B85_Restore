@interface UnsetTimeoutTimer
@end

@implementation UnsetTimeoutTimer

void __figXPC_UnsetTimeoutTimer_block_invoke(uint64_t a1)
{
  context = dispatch_get_context(*(*(a1 + 40) + 192));
  if (context)
  {
    xpc_release(context);
    dispatch_set_context(*(*(a1 + 40) + 192), 0);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v3 = *(a1 + 40);
  v4 = *(v3 + 216);
  if (v4)
  {
    *(v3 + 216) = 0;

    xpc_release(v4);
  }
}

@end