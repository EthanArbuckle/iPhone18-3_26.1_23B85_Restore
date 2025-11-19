@interface ACSSetTestFlags
@end

@implementation ACSSetTestFlags

void ___ACSSetTestFlags_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SharedLocatorConnection = aclGetSharedLocatorConnection(*(a1 + 40), 0, a3, a4, a5, a6, a7, a8);
  if (SharedLocatorConnection)
  {
    xpc_connection_send_message(SharedLocatorConnection, *(a1 + 32));
  }

  v10 = *(a1 + 32);

  xpc_release(v10);
}

@end