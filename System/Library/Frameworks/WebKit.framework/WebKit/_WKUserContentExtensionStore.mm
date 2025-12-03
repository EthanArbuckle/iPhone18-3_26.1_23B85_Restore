@interface _WKUserContentExtensionStore
+ (id)defaultStore;
+ (id)storeWithURL:(id)l;
- (id)_initWithWKContentRuleListStore:(id)store;
- (void)compileContentExtensionForIdentifier:(id)identifier encodedContentExtension:(id)extension completionHandler:(id)handler;
- (void)lookupContentExtensionForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeContentExtensionForIdentifier:(id)identifier completionHandler:(id)handler;
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

+ (id)storeWithURL:(id)l
{
  v3 = [[_WKUserContentExtensionStore alloc] _initWithWKContentRuleListStore:[WKContentRuleListStore storeWithURLAndLegacyFilename:l]];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)compileContentExtensionForIdentifier:(id)identifier encodedContentExtension:(id)extension completionHandler:(id)handler
{
  m_ptr = self->_contentRuleListStore.m_ptr;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __111___WKUserContentExtensionStore_compileContentExtensionForIdentifier_encodedContentExtension_completionHandler___block_invoke;
  v6[3] = &unk_1E7631BB0;
  v6[4] = handler;
  [(WKContentRuleListStore *)m_ptr compileContentRuleListForIdentifier:identifier encodedContentRuleList:extension completionHandler:v6];
}

- (void)lookupContentExtensionForIdentifier:(id)identifier completionHandler:(id)handler
{
  m_ptr = self->_contentRuleListStore.m_ptr;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86___WKUserContentExtensionStore_lookupContentExtensionForIdentifier_completionHandler___block_invoke;
  v5[3] = &unk_1E7631BB0;
  v5[4] = handler;
  [(WKContentRuleListStore *)m_ptr lookUpContentRuleListForIdentifier:identifier completionHandler:v5];
}

- (void)removeContentExtensionForIdentifier:(id)identifier completionHandler:(id)handler
{
  m_ptr = self->_contentRuleListStore.m_ptr;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86___WKUserContentExtensionStore_removeContentExtensionForIdentifier_completionHandler___block_invoke;
  v5[3] = &unk_1E7631BD8;
  v5[4] = handler;
  [(WKContentRuleListStore *)m_ptr removeContentRuleListForIdentifier:identifier completionHandler:v5];
}

- (id)_initWithWKContentRuleListStore:(id)store
{
  v8.receiver = self;
  v8.super_class = _WKUserContentExtensionStore;
  v4 = [(_WKUserContentExtensionStore *)&v8 init];
  if (v4)
  {
    if (store)
    {
      storeCopy = store;
    }

    m_ptr = v4->_contentRuleListStore.m_ptr;
    v4->_contentRuleListStore.m_ptr = store;
    if (m_ptr)
    {
    }
  }

  return v4;
}

@end