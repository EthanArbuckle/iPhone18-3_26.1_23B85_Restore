@interface CopyBrokerInfoForDeviceID
@end

@implementation CopyBrokerInfoForDeviceID

void __browser_CopyBrokerInfoForDeviceID_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v6 = a1[8];
  v5 = a1[9];
  v7 = a1[10];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Int64 = CFNumberCreateInt64();
  Value = CFDictionaryGetValue(*(DerivedStorage + 360), Int64);
  if (!Value)
  {
    __browser_CopyBrokerInfoForDeviceID_block_invoke_cold_1();
    v16 = -6727;
    if (!Int64)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = Value;
  if (v4)
  {
    BrokerGroupID = APBrokeredReceiverGetBrokerGroupID(Value);
    *v4 = CFRetain(BrokerGroupID);
  }

  if (v6)
  {
    ReceiverGroupUUID = APBrokeredReceiverGetReceiverGroupUUID(v11);
    *v6 = CFRetain(ReceiverGroupUUID);
  }

  if (v5)
  {
    PublicReceiverUUID = APBrokeredReceiverGetPublicReceiverUUID(v11);
    *v5 = CFRetain(PublicReceiverUUID);
  }

  if (!v7)
  {
    v16 = 0;
    if (!Int64)
    {
      goto LABEL_15;
    }

LABEL_14:
    CFRelease(Int64);
    goto LABEL_15;
  }

  LTPKHash = APBrokeredReceiverGetLTPKHash(v11);
  if (LTPKHash)
  {
    LTPKHash = CFRetain(LTPKHash);
  }

  v16 = 0;
  *v7 = LTPKHash;
  if (Int64)
  {
    goto LABEL_14;
  }

LABEL_15:
  *(*(a1[4] + 8) + 24) = v16;
}

@end