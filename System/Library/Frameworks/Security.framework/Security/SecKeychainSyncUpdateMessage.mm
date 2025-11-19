@interface SecKeychainSyncUpdateMessage
@end

@implementation SecKeychainSyncUpdateMessage

CFTypeRef ___SecKeychainSyncUpdateMessage_block_invoke(void *a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 512)) != 0)
  {
    result = v2(a1[5], a1[6]);
  }

  else
  {
    v4 = a1[5];
    v5 = a1[6];
    cf = 0;
    v6 = cftype_to_BOOL_cftype_error_request(0x12u, v4, &cf, v5);
    result = cf;
    if (v6)
    {
      if (!cf || (v7 = CFGetTypeID(cf), TypeID = CFArrayGetTypeID(), result = cf, v7 != TypeID))
      {
        SecError(-4, v5, @"Unexpected nonarray returned: %@", result);
        result = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(result);
          result = cf;
        }
      }
    }
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end