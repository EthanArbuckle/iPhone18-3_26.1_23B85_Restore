@interface SetDelegateRemoteControl
@end

@implementation SetDelegateRemoteControl

double __carEndpoint_SetDelegateRemoteControl_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 216);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 216) = 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *v4;
    *(v3 + 196) = v4[1];
    *(v3 + 180) = v5;
    *(*(a1 + 32) + 216) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  else
  {
    result = 0.0;
    *(v3 + 196) = 0u;
    *(v3 + 180) = 0u;
  }

  return result;
}

@end