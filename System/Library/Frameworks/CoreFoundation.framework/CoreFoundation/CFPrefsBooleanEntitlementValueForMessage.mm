@interface CFPrefsBooleanEntitlementValueForMessage
@end

@implementation CFPrefsBooleanEntitlementValueForMessage

void *___CFPrefsBooleanEntitlementValueForMessage_block_invoke(uint64_t a1, uint64_t a2)
{
  result = _CFPrefsGetEntitlementForMessageWithLockedContext(*(a1 + 32), *(a1 + 48), a2);
  if (result)
  {
    v4 = result;
    result = object_getClass(result);
    if (result == MEMORY[0x1E69E9E58])
    {
      result = xpc_BOOL_get_value(v4);
      *(*(*(a1 + 40) + 8) + 24) = result;
    }
  }

  return result;
}

@end