@interface FigEndpointRemoteXPC
@end

@implementation FigEndpointRemoteXPC

void __FigEndpointRemoteXPC_runAllCallbacks_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __FigEndpointRemoteXPC_runAllCallbacks_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_10_6;
  v4[4] = *(a1 + 40);
  v5 = *(a1 + 48);
  FigCFDictionaryApplyBlock(v2, v4);
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }
}

void __FigEndpointRemoteXPC_ActivateWithCompletionCallback_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), 0, 0, *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke(uint64_t a1)
{
  remoteXPCEndpointClient_runCallback((a1 + 32), *(a1 + 104), 0, 0, *(a1 + 112));

  remoteXPCEndpointClient_releaseCompletionCallbackEntryFields(a1 + 32);
}

void __FigEndpointRemoteXPC_DeactivateWithCompletionCallback_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), 0, *(a1 + 48), *(a1 + 64), *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __FigEndpointRemoteXPC_UpdateFeaturesWithCompletionCallback_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), 0, 0, *(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __FigEndpointRemoteXPC_SendCommand_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 56), 0, *(a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __FigEndpointRemoteXPC_SendData_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 64), *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __FigEndpointRemoteXPC_EndpointAggregateOperationWithCompletionCallback_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), 0, *(a1 + 56), *(a1 + 72), *(a1 + 64));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

@end