@interface CFPrefsCopyEntitlementForMessage
@end

@implementation CFPrefsCopyEntitlementForMessage

xpc_object_t ___CFPrefsCopyEntitlementForMessage_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 40) = _CFPrefsGetEntitlementForMessageWithLockedContext(*(a1 + 32), *(a1 + 48), a2);
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    result = xpc_copy(result);
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

@end