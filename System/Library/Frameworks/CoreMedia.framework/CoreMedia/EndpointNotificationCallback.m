@interface EndpointNotificationCallback
@end

@implementation EndpointNotificationCallback

void __endpointCentricPlugin_EndpointNotificationCallback_block_invoke(uint64_t a1)
{
  v2 = CFEqual(*(a1 + 32), @"Endpoint_Dissociated");
  if (endpointCentricPlugin_UpdateEndpoint(*(a1 + 40), *(a1 + 48), v2))
  {
    v3 = *(a1 + 56);
    v4 = *(v3 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __endpointCentricPlugin_EndpointNotificationCallback_block_invoke_2;
    block[3] = &__block_descriptor_tmp_21_1;
    block[4] = v3;
    dispatch_async(v4, block);
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
}

@end