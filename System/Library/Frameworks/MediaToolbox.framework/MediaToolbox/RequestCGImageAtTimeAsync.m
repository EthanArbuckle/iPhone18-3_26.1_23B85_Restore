@interface RequestCGImageAtTimeAsync
@end

@implementation RequestCGImageAtTimeAsync

CFTypeRef __surrogateAIG_RequestCGImageAtTimeAsync_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __surrogateAIG_RequestCGImageAtTimeAsync_block_invoke_2(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40) || (v9 = DerivedStorage, surrogateAIG_EnsureSubGeneratorCreated(*(a1 + 32))) || (v10 = *(v9 + 24), v11 = *(a1 + 40), v12 = *(a1 + 48), v14 = *(a1 + 56), v15 = *(a1 + 72), (v13 = *(*(CMBaseObjectGetVTable() + 16) + 16)) == 0) || (v16 = v14, v17 = v15, v13(v10, &v16, v11, v12)))
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"RequestID");
    }

    else
    {
      Value = 0;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      FigCFDictionarySetInt32();
      if (Value)
      {
        CFDictionarySetValue(v6, @"RequestID", Value);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(v6);
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(*(a1 + 32));
}

@end