@interface CopyProperty
@end

@implementation CopyProperty

void __stream_CopyProperty_block_invoke(void *a1)
{
  v2 = a1[5];
  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 24))
  {
    __stream_CopyProperty_block_invoke_cold_1();
    v16 = -16617;
    goto LABEL_16;
  }

  v7 = DerivedStorage;
  v8 = CFEqual(v4, @"LastDeliveredMessage");
  v9 = *(v7 + 40);
  if (!v8)
  {
    CMBaseObject = APTransportConnectionGetCMBaseObject(v9);
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v18)
    {
      v16 = v18(CMBaseObject, v4, v3, v5);
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = -12782;
    }

    goto LABEL_13;
  }

  v10 = APTransportConnectionGetCMBaseObject(v9);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v16 = -12782;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v12 = v11(v10, @"LastDeliveredPackage", v3, &cf);
  if (v12)
  {
    v16 = v12;
    goto LABEL_13;
  }

  v13 = cf;
  if (cf && (v14 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0)
  {
    v15 = v14(v13);
  }

  else
  {
    v15 = 0;
  }

  v16 = 0;
  *v5 = v15;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  *(*(a1[4] + 8) + 24) = v16;
}

@end