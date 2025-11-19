@interface IOHIDServiceClientCacheProperties
@end

@implementation IOHIDServiceClientCacheProperties

uint64_t ___IOHIDServiceClientCacheProperties_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"DeviceUsagePage");
  if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
    v7 = valuePtr;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 40) + 136) + 8 * *(*(*(a1 + 32) + 8) + 24)) = v7;
  v13 = 0;
  result = CFDictionaryGetValue(theDict, @"DeviceUsage");
  if (result && (v9 = result, v10 = CFGetTypeID(result), result = CFNumberGetTypeID(), v10 == result))
  {
    result = CFNumberGetValue(v9, kCFNumberSInt32Type, &v13);
    v11 = v13;
  }

  else
  {
    v11 = 0;
  }

  *(*(*(a1 + 40) + 136) + 8 * (*(*(*(a1 + 32) + 8) + 24))++ + 4) = v11;
  return result;
}

@end