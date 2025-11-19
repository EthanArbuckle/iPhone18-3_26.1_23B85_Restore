@interface IOHIDServiceSetMiscDebugDebugInfo
@end

@implementation IOHIDServiceSetMiscDebugDebugInfo

void ___IOHIDServiceSetMiscDebugDebugInfo_block_invoke(uint64_t a1, uint64_t a2)
{
  UUID = IOHIDEventSystemConnectionGetUUID(a2);
  v4 = *(a1 + 32);
  if (UUID)
  {
    v5 = UUID;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = *(a1 + 32);

  CFArrayAppendValue(v6, v5);
}

void ___IOHIDServiceSetMiscDebugDebugInfo_block_invoke_2(uint64_t a1, uint64_t a2)
{
  UUID = IOHIDEventSystemConnectionGetUUID(a2);
  v4 = *(a1 + 32);
  if (UUID)
  {
    v5 = UUID;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = *(a1 + 32);

  CFArrayAppendValue(v6, v5);
}

@end