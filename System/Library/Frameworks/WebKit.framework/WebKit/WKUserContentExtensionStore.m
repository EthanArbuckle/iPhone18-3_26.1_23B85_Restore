@interface WKUserContentExtensionStore
@end

@implementation WKUserContentExtensionStore

void __111___WKUserContentExtensionStore_compileContentExtensionForIdentifier_encodedContentExtension_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v7 = [[_WKUserContentFilter alloc] _initWithWKContentRuleList:a2];
  }

  else
  {
    v7 = 0;
  }

  v5 = *(a1 + 32);
  v6 = toUserContentRuleListStoreError(a3);
  (*(v5 + 16))(v5, v7, v6);
  if (v7)
  {
  }
}

void __86___WKUserContentExtensionStore_lookupContentExtensionForIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v7 = [[_WKUserContentFilter alloc] _initWithWKContentRuleList:a2];
  }

  else
  {
    v7 = 0;
  }

  v5 = *(a1 + 32);
  v6 = toUserContentRuleListStoreError(a3);
  (*(v5 + 16))(v5, v7, v6);
  if (v7)
  {
  }
}

uint64_t __86___WKUserContentExtensionStore_removeContentExtensionForIdentifier_completionHandler___block_invoke(uint64_t a1, NSError *a2)
{
  v2 = *(a1 + 32);
  v3 = toUserContentRuleListStoreError(a2);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

@end