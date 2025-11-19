@interface _WKUserContentExtensionStore
+ (id)defaultStore;
+ (id)storeWithURL:(id)a3;
- (id)_initWithWKContentRuleListStore:(id)a3;
- (void)compileContentExtensionForIdentifier:(id)a3 encodedContentExtension:(id)a4 completionHandler:(id)a5;
- (void)lookupContentExtensionForIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeContentExtensionForIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation _WKUserContentExtensionStore

+ (id)defaultStore
{
  v2 = [[_WKUserContentExtensionStore alloc] _initWithWKContentRuleListStore:+[WKContentRuleListStore defaultStoreWithLegacyFilename]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)storeWithURL:(id)a3
{
  v3 = [[_WKUserContentExtensionStore alloc] _initWithWKContentRuleListStore:[WKContentRuleListStore storeWithURLAndLegacyFilename:a3]];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)compileContentExtensionForIdentifier:(id)a3 encodedContentExtension:(id)a4 completionHandler:(id)a5
{
  m_ptr = self->_contentRuleListStore.m_ptr;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __111___WKUserContentExtensionStore_compileContentExtensionForIdentifier_encodedContentExtension_completionHandler___block_invoke;
  v6[3] = &unk_1E7631BB0;
  v6[4] = a5;
  [(WKContentRuleListStore *)m_ptr compileContentRuleListForIdentifier:a3 encodedContentRuleList:a4 completionHandler:v6];
}

- (void)lookupContentExtensionForIdentifier:(id)a3 completionHandler:(id)a4
{
  m_ptr = self->_contentRuleListStore.m_ptr;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86___WKUserContentExtensionStore_lookupContentExtensionForIdentifier_completionHandler___block_invoke;
  v5[3] = &unk_1E7631BB0;
  v5[4] = a4;
  [(WKContentRuleListStore *)m_ptr lookUpContentRuleListForIdentifier:a3 completionHandler:v5];
}

- (void)removeContentExtensionForIdentifier:(id)a3 completionHandler:(id)a4
{
  m_ptr = self->_contentRuleListStore.m_ptr;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86___WKUserContentExtensionStore_removeContentExtensionForIdentifier_completionHandler___block_invoke;
  v5[3] = &unk_1E7631BD8;
  v5[4] = a4;
  [(WKContentRuleListStore *)m_ptr removeContentRuleListForIdentifier:a3 completionHandler:v5];
}

- (id)_initWithWKContentRuleListStore:(id)a3
{
  v8.receiver = self;
  v8.super_class = _WKUserContentExtensionStore;
  v4 = [(_WKUserContentExtensionStore *)&v8 init];
  if (v4)
  {
    if (a3)
    {
      v5 = a3;
    }

    m_ptr = v4->_contentRuleListStore.m_ptr;
    v4->_contentRuleListStore.m_ptr = a3;
    if (m_ptr)
    {
    }
  }

  return v4;
}

@end