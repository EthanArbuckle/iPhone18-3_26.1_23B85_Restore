@interface ResolveAddress
@end

@implementation ResolveAddress

void __browser_ResolveAddress_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  CMBaseObjectGetDerivedStorage();
  if (!v4)
  {
    __browser_ResolveAddress_block_invoke_cold_1();
    return;
  }

  if (v1 == 1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *DerivedStorage;
    if (v3)
    {
      v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v8)
      {
        v9 = _Block_copy(v4);
        if (v9)
        {
          v10 = v9;
          CFRetain(v8);
          goto LABEL_12;
        }
      }
    }

    else
    {
      v12 = _Block_copy(v4);
      v8 = 0;
      if (v12)
      {
        v10 = v12;
LABEL_12:
        v13 = DerivedStorage[43];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __browser_resolveBrokerAddress_block_invoke;
        v14[3] = &unk_278BCA2D8;
        v14[6] = v7;
        v14[7] = v5;
        v14[4] = v10;
        v14[5] = v8;
        APBrokerManagerResolveBrokeredReceiverDNSName(v13, v2, v14);
        if (!v8)
        {
          return;
        }

        goto LABEL_13;
      }
    }

    APSLogErrorAt();
    v4[2](v4, 0, 0, 0, v3, 4294960568);
    if (!v8)
    {
      return;
    }

LABEL_13:
    CFRelease(v8);
    return;
  }

  v11 = v4[2];

  v11(v4, v2, 0, 0, v3, 0);
}

@end