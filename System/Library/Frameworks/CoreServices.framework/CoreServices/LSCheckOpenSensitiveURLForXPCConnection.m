@interface LSCheckOpenSensitiveURLForXPCConnection
@end

@implementation LSCheckOpenSensitiveURLForXPCConnection

uint64_t ___LSCheckOpenSensitiveURLForXPCConnection_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    v7 = [*(a1 + 40) hasPrefix:v6];
    if (v7)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    v5 = v7 ^ 1u;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end