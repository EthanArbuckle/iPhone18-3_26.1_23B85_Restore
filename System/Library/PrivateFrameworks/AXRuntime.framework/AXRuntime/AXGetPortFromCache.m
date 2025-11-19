@interface AXGetPortFromCache
@end

@implementation AXGetPortFromCache

void ___AXGetPortFromCache_block_invoke(uint64_t a1)
{
  Mutable = gPortCache;
  if (gPortCache || (Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]), (gPortCache = Mutable) != 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(Mutable, *(a1 + 48));
    v3 = *(*(*(a1 + 32) + 8) + 24);
    if (v3)
    {
      *(*(*(a1 + 40) + 8) + 24) = CFMachPortGetPort(v3);
      v4 = *(*(*(a1 + 40) + 8) + 24);
      if (v4)
      {
        v5 = MEMORY[0x1E69E9A60];
        if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], v4, 0, 1) == 17)
        {
          mach_port_mod_refs(*v5, *(*(*(a1 + 40) + 8) + 24), 4u, 1);
          CFDictionaryRemoveValue(gPortCache, *(a1 + 48));
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *(*(*(a1 + 32) + 8) + 24) = 0;
        }
      }
    }
  }
}

void ___AXGetPortFromCache_block_invoke_51(uint64_t a1)
{
  if (gPortCache)
  {
    CFDictionarySetValue(gPortCache, *(a1 + 48), *(*(*(a1 + 32) + 8) + 24));
  }

  v2 = MEMORY[0x1E69E9A60];
  v3 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(*(*(a1 + 40) + 8) + 24), 0, 1);
  if (v3)
  {
    if (v3 == 17)
    {
      mach_port_mod_refs(*v2, *(*(*(a1 + 40) + 8) + 24), 4u, 1);
      CFDictionaryRemoveValue(gPortCache, *(a1 + 48));
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);

    CFMachPortSetInvalidationCallBack(v4, portInvalidationCallback);
  }
}

@end