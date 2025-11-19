@interface APBrokerManagerUpdateBrokerGroupReceiversWithList
@end

@implementation APBrokerManagerUpdateBrokerGroupReceiversWithList

void ___APBrokerManagerUpdateBrokerGroupReceiversWithList_block_invoke(uint64_t a1, void *key, void *value)
{
  v6 = *(a1 + 32);
  if (!v6 || !CFDictionaryContainsKey(v6, key))
  {
    v7 = *(a1 + 40);

    CFDictionarySetValue(v7, key, value);
  }
}

void ___APBrokerManagerUpdateBrokerGroupReceiversWithList_block_invoke_2(uint64_t a1, const void *a2)
{
  CFDictionaryRemoveValue(*(a1 + 32), a2);
  v3 = *(a1 + 40);
  v4 = *(v3 + 184);

  _APBrokerManagerFireBrokeredReceiverEvent(v3);
}

void ___APBrokerManagerUpdateBrokerGroupReceiversWithList_block_invoke_3(uint64_t a1, const void *a2, const void *a3)
{
  v6 = CFDictionaryContainsKey(*(a1 + 32), a2);
  CFDictionarySetValue(*(a1 + 32), a2, a3);
  v7 = *(a1 + 40);
  v8 = 176;
  if (!v6)
  {
    v8 = 168;
  }

  v9 = *(v7 + v8);

  _APBrokerManagerFireBrokeredReceiverEvent(v7);
}

@end