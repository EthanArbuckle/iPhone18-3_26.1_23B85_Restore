@interface CFXPCCreateCFObjectFromXPCObject
@end

@implementation CFXPCCreateCFObjectFromXPCObject

uint64_t ___CFXPCCreateCFObjectFromXPCObject_block_invoke_2(void *a1, const char *a2, uint64_t a3)
{
  result = _CFXPCCreateCFObjectFromXPCObject(a3);
  if (result)
  {
    v6 = result;
    v7 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, a2, 0x8000100u);
    if (v7)
    {
      *(a1[5] + 8 * *(*(a1[4] + 8) + 24)) = v7;
      v9 = a1[5];
      v8 = a1[6];
      v10 = *(a1[4] + 8);
      v11 = *(v10 + 24);
      *(v10 + 24) = v11 + 1;
      *(v9 + 8 * v8 + 8 * v11) = v6;
      return 1;
    }

    else
    {
      CFRelease(v6);
      return 0;
    }
  }

  return result;
}

BOOL ___CFXPCCreateCFObjectFromXPCObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _CFXPCCreateCFObjectFromXPCObject(a3);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 24);
    *(v6 + 24) = v7 + 1;
    *(v5 + 8 * v7) = v4;
  }

  return v4 != 0;
}

@end