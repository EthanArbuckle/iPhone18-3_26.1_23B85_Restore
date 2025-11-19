@interface IOHIDEventSystemConnectionCreateVirtualService
@end

@implementation IOHIDEventSystemConnectionCreateVirtualService

void ___IOHIDEventSystemConnectionCreateVirtualService_block_invoke(uint64_t a1)
{
  if (_IOHIDServiceInitVirtual(*(a1 + 32)))
  {
    _IOHIDEventSystemAddService(*(*(a1 + 40) + 8), *(a1 + 32));
  }

  else
  {
    CFRetain(*(a1 + 32));
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(v3 + 96);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___IOHIDEventSystemConnectionCreateVirtualService_block_invoke_2;
    block[3] = &__block_descriptor_tmp_133;
    v5 = *(a1 + 48);
    block[4] = v3;
    block[5] = v5;
    block[6] = v2;
    dispatch_async(v4, block);
  }

  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
}

void ___IOHIDEventSystemConnectionCreateVirtualService_block_invoke_2(uint64_t a1)
{
  _IOHIDEventSystemConnectionRemoveVirtualService(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 48);

  CFRelease(v2);
}

@end