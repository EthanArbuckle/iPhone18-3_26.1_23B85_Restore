@interface ProcessIncomingMessage
@end

@implementation ProcessIncomingMessage

void __pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_block_invoke(uint64_t a1)
{
  FigPWDKeyExchangeSenderAOCP_callCallback(*(a1 + 32), 0, *(a1 + 40), 1);
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

@end