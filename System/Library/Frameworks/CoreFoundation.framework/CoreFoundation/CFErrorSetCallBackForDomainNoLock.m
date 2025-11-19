@interface CFErrorSetCallBackForDomainNoLock
@end

@implementation CFErrorSetCallBackForDomainNoLock

const void *____CFErrorSetCallBackForDomainNoLock_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 32))(a2, a3);
  v4 = v3;
  if (v3)
  {
    CFAutorelease(v3);
  }

  return v4;
}

@end