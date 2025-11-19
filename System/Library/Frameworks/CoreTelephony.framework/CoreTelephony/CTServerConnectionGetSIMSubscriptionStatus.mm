@interface CTServerConnectionGetSIMSubscriptionStatus
@end

@implementation CTServerConnectionGetSIMSubscriptionStatus

void ___CTServerConnectionGetSIMSubscriptionStatus_block_invoke(uint64_t a1, xpc_object_t object)
{
  v3 = MEMORY[0x1E69E9E80];
  if (object)
  {
    v4 = object;
    xpc_retain(object);
  }

  else
  {
    v4 = xpc_null_create();
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if (MEMORY[0x1865E16C0](v4) == v3)
  {
    xpc_retain(v4);
    v5 = v4;
    goto LABEL_7;
  }

LABEL_5:
  v5 = xpc_null_create();
LABEL_7:
  xpc_release(v4);
  if (MEMORY[0x1865E16C0](v5) == v3 && xpc_dictionary_get_value(v5, "kCPSIMSubscriptionStatus"))
  {
    cf = 0;
    xpc_dictionary_get_value(v5, "kCPSIMSubscriptionStatus");
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&cf, &v6);
    (*(*(a1 + 32) + 16))();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  xpc_release(v5);
}

@end