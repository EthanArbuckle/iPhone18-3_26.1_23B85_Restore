@interface FigEndpointManagerRemoteXPC
@end

@implementation FigEndpointManagerRemoteXPC

void __FigEndpointManagerRemoteXPC_SetDiscoveryMode_block_invoke(uint64_t a1)
{
  v2 = remoteXPCFigEndpointManager_sendSetDiscoveryMode(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  OUTLINED_FUNCTION_0_0(v2);
  if (!v3)
  {
    v4 = *(a1 + 72);
    v5 = *(v4 + 56);
    v6 = *(a1 + 56);
    *(v4 + 56) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(v8 + 64);
    *(v8 + 64) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }
}

@end