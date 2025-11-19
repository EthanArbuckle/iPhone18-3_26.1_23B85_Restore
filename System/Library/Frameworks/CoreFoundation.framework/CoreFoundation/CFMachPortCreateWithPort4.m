@interface CFMachPortCreateWithPort4
@end

@implementation CFMachPortCreateWithPort4

void ___CFMachPortCreateWithPort4_block_invoke(uint64_t a1)
{
  _cfmp_source_invalidated(0, *(a1 + 40));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void ___CFMachPortCreateWithPort4_block_invoke_2(uint64_t a1)
{
  block[6] = *MEMORY[0x1E69E9840];
  _cfmp_source_record_deadness(0, *(a1 + 32));
  os_unfair_lock_lock(&__CFAllMachPortsLock);
  if (__CFAllMachPorts)
  {
    Count = CFArrayGetCount(__CFAllMachPorts);
    if (Count >= 1)
    {
      v2 = Count;
      v3 = 0;
      v4 = MEMORY[0x1E69E96A0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(__CFAllMachPorts, v3);
        if (ValueAtIndex)
        {
          v6 = ValueAtIndex;
          if (!__CFMachPortCheck(ValueAtIndex[5]) || CFGetRetainCount(v6) == 1)
          {
            if (!v6[4])
            {
              os_unfair_lock_lock(v6 + 24);
              if (v6[4])
              {
                os_unfair_lock_unlock(v6 + 24);
              }

              else
              {
                v6[4] = 1;
                __dmb(0xBu);
                v7 = *(v6 + 3);
                if (v7)
                {
                  dispatch_source_cancel(v7);
                  *(v6 + 3) = 0;
                }

                v8 = *(v6 + 5);
                *(v6 + 5) = 0;
                CFRetain(v6);
                os_unfair_lock_unlock(v6 + 24);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = ____CFMachPortChecker_block_invoke;
                block[3] = &__block_descriptor_48_e5_v8__0l;
                block[4] = v6;
                block[5] = v8;
                dispatch_async(v4, block);
              }
            }

            CFArrayRemoveValueAtIndex(__CFAllMachPorts, v3--);
            --v2;
          }
        }

        ++v3;
      }

      while (v3 < v2);
    }
  }

  os_unfair_lock_unlock(&__CFAllMachPortsLock);
  v9 = *MEMORY[0x1E69E9840];
}

@end