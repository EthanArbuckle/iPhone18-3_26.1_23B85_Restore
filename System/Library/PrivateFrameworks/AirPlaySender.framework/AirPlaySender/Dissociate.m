@interface Dissociate
@end

@implementation Dissociate

void __epp_Dissociate_block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = epp_copyInner();
  if (v2)
  {
    __epp_Dissociate_block_invoke_cold_1(v1, v2);
  }
}

uint64_t __carEndpoint_Dissociate_block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 176);
  v1 = *(result + 40);
  *(v1 + 176) = 1;
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v2 = *(v1 + 240);
    if (v2)
    {
      v3 = result;
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v4)
      {
        v4(v2, 0, 0, 0, 0);
      }

      result = APSenderSessionGetCMBaseObject(*(*(v3 + 40) + 240));
      if (result)
      {
        v5 = result;
        VTable = CMBaseObjectGetVTable();
        v7 = *(VTable + 8);
        result = VTable + 8;
        v8 = *(v7 + 24);
        if (v8)
        {

          return v8(v5);
        }
      }
    }
  }

  return result;
}

void __carEndpoint_Dissociate_block_invoke_2(uint64_t a1)
{
  v2 = 0;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_Dissociate_block_invoke_2_cold_1();
    }

    carEndpoint_deactivateInternal(*(a1 + 40), 1, @"Dissociating", &v2);
    carEndpoint_postActivationNotification(*(a1 + 40), *MEMORY[0x277CC0D30], v2);
  }

  CFRelease(*(a1 + 40));
}

void __epp_Dissociate_block_invoke_cold_1(uint64_t *a1, const void *a2)
{
  epp_removeInnerListeners(*a1, a2);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v4)
  {
    v4(a2);
  }

  CFRelease(a2);
  v5 = *a1;

  CFRelease(v5);
}

@end