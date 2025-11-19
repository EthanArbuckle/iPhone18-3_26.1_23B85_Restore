@interface CFPrefsDeliverPendingKVONotificationsGuts
@end

@implementation CFPrefsDeliverPendingKVONotificationsGuts

void ___CFPrefsDeliverPendingKVONotificationsGuts_block_invoke(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  context[5] = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  Count = CFArrayGetCount(a3);
  if (Count < 1)
  {
    v11 = 0;
  }

  else
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
      v11 = ValueAtIndex[1];
      v10 = ValueAtIndex[2];
      v12 = ValueAtIndex[3];
      if (v10)
      {
        context[0] = MEMORY[0x1E69E9820];
        context[1] = 3221225472;
        context[2] = ___CFPrefsDeliverPendingKVONotificationsGuts_block_invoke_2;
        context[3] = &__block_descriptor_40_e25_v24__0____CFString__8_v16l;
        context[4] = Mutable;
        CFDictionaryApplyFunction(v10, applyBlockApplier, context);
      }

      if (v12)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = ___CFPrefsDeliverPendingKVONotificationsGuts_block_invoke_3;
        v15[3] = &__block_descriptor_48_e25_v24__0____CFString__8_v16l;
        v15[4] = Mutable;
        v15[5] = v5;
        CFDictionaryApplyFunction(v12, applyBlockApplier, v15);
      }
    }
  }

  v13 = objc_autoreleasePoolPush();
  [v11 _notifyObserversOfChangeFromValuesForKeys:Mutable toValuesForKeys:v5];
  objc_autoreleasePoolPop(v13);
  CFRelease(Mutable);
  CFRelease(v5);
  v14 = *MEMORY[0x1E69E9840];
}

void ___CFPrefsDeliverPendingKVONotificationsGuts_block_invoke_3(uint64_t a1, const void *a2, const void *a3)
{
  CFDictionaryAddValue(*(a1 + 32), a2, &__kCFNull);
  v6 = *(a1 + 40);

  CFDictionarySetValue(v6, a2, a3);
}

@end