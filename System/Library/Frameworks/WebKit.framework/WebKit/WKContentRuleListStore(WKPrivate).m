@interface WKContentRuleListStore(WKPrivate)
- (uint64_t)_getContentRuleListSourceForIdentifier:()WKPrivate completionHandler:;
- (void)_getContentRuleListSourceForIdentifier:()WKPrivate completionHandler:;
@end

@implementation WKContentRuleListStore(WKPrivate)

- (void)_getContentRuleListSourceForIdentifier:()WKPrivate completionHandler:
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v4);
    }

    (*(v3 + 16))(v3, v9);
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }

    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v5);
    }
  }

  else
  {
    v7 = *(v3 + 16);
    v8 = *(a1 + 8);

    v7(v8, 0);
  }
}

- (uint64_t)_getContentRuleListSourceForIdentifier:()WKPrivate completionHandler:
{
  v3 = *(this + 1);
  *this = &unk_1F10F4AC8;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

@end