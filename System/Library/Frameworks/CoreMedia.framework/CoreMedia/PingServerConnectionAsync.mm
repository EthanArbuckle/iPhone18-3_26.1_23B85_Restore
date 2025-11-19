@interface PingServerConnectionAsync
@end

@implementation PingServerConnectionAsync

void __figXPCConnection_PingServerConnectionAsync_block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  if (!a2)
  {
    *(*(a1 + 40) + 64) = xpc_dictionary_get_int64(xdict, ".Token");
  }

  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

@end