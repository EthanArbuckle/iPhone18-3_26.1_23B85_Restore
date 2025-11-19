@interface WKUserContentController
- (NSArray)_userStyleSheets;
- (NSArray)userScripts;
- (WKUserContentController)init;
- (void)_addContentRuleList:(id)a3 extensionBaseURL:(id)a4;
- (void)_addScriptMessageHandler:(id)a3 name:(id)a4 contentWorld:(id)a5;
- (void)_addScriptMessageHandler:(id)a3 name:(id)a4 userContentWorld:(id)a5;
- (void)_addScriptMessageHandler:(void *)a3;
- (void)_addUserContentFilter:(id)a3;
- (void)_removeScriptMessageHandlerForName:(id)a3 userContentWorld:(id)a4;
- (void)_removeUserContentFilter:(id)a3;
- (void)addContentRuleList:(WKContentRuleList *)contentRuleList;
- (void)addScriptMessageHandler:(id)scriptMessageHandler contentWorld:(WKContentWorld *)world name:(NSString *)name;
- (void)addScriptMessageHandler:(id)scriptMessageHandler name:(NSString *)name;
- (void)addScriptMessageHandlerWithReply:(id)scriptMessageHandlerWithReply contentWorld:(WKContentWorld *)contentWorld name:(NSString *)name;
- (void)dealloc;
- (void)removeScriptMessageHandlerForName:(NSString *)name;
- (void)removeScriptMessageHandlerForName:(NSString *)name contentWorld:(WKContentWorld *)contentWorld;
@end

@implementation WKUserContentController

- (WKUserContentController)init
{
  v7.receiver = self;
  v7.super_class = WKUserContentController;
  v2 = [(WKUserContentController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = API::Object::apiObjectsUnderConstruction(v2);
    v5 = [(WKUserContentController *)v3 _apiObject];
    v9 = v3;
    v10 = v5;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v10, &v9, v8);
    WebKit::WebUserContentControllerProxy::WebUserContentControllerProxy([(WKUserContentController *)v3 _apiObject]);
  }

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    (**self->_userContentControllerProxy.m_storage.data)();
    v4.receiver = self;
    v4.super_class = WKUserContentController;
    [(WKUserContentController *)&v4 dealloc];
  }
}

- (NSArray)userScripts
{
  v2 = *(*self[1]._userContentControllerProxy.m_storage.data + 8);
  if (!v2)
  {
    return v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (void)addContentRuleList:(WKContentRuleList *)contentRuleList
{
  WTF::URL::URL(v7);
  WebKit::WebUserContentControllerProxy::addContentRuleList(&self->_userContentControllerProxy, &contentRuleList->_contentRuleList, v7);
  v6 = v7[0];
  v7[0] = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

- (void)_addScriptMessageHandler:(void *)a3
{
  if ((WebKit::WebUserContentControllerProxy::addUserScriptMessageHandler(&self->_userContentControllerProxy, a3) & 1) == 0)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *(a3 + 4);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v10, v5);
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v6);
      }
    }

    else
    {
      v10 = &stru_1F1147748;
      v7 = &stru_1F1147748;
    }

    [v4 raise:*MEMORY[0x1E695D940] format:{@"Attempt to add script message handler with name '%@' when one already exists.", v10}];
    v9 = v10;
    v10 = 0;
    if (v9)
    {
    }

    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v8);
      }
    }
  }
}

- (void)addScriptMessageHandler:(id)scriptMessageHandler name:(NSString *)name
{
  v7 = ScriptMessageHandlerDelegate::operator new(self, a2);
  ScriptMessageHandlerDelegate::ScriptMessageHandlerDelegate(v7, self, scriptMessageHandler, name);
  v14 = 0;
  v15 = v7;
  v8 = MEMORY[0x19EB02040](&v13, name);
  v9 = API::ContentWorld::pageContentWorldSingleton(v8);
  WebKit::WebScriptMessageHandler::create(&v15, &v13, v9, &v16);
  v11 = v13;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  std::unique_ptr<ScriptMessageHandlerDelegate>::reset[abi:sn200100](&v14, v10);
  v12 = v16;
  [(WKUserContentController *)self _addScriptMessageHandler:v16, v13];
  if (v12)
  {
    if (v12[2] == 1)
    {
      (*(*v12 + 8))(v12);
    }

    else
    {
      --v12[2];
    }
  }
}

- (void)addScriptMessageHandler:(id)scriptMessageHandler contentWorld:(WKContentWorld *)world name:(NSString *)name
{
  v9 = ScriptMessageHandlerDelegate::operator new(self, a2);
  ScriptMessageHandlerDelegate::ScriptMessageHandlerDelegate(v9, self, scriptMessageHandler, name);
  v14 = 0;
  v15 = v9;
  MEMORY[0x19EB02040](&v13, name);
  WebKit::WebScriptMessageHandler::create(&v15, &v13, &world->_contentWorld, &v16);
  v11 = v13;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  std::unique_ptr<ScriptMessageHandlerDelegate>::reset[abi:sn200100](&v14, v10);
  v12 = v16;
  [(WKUserContentController *)self _addScriptMessageHandler:v16, v13];
  if (v12)
  {
    if (v12[2] == 1)
    {
      (*(*v12 + 8))(v12);
    }

    else
    {
      --v12[2];
    }
  }
}

- (void)addScriptMessageHandlerWithReply:(id)scriptMessageHandlerWithReply contentWorld:(WKContentWorld *)contentWorld name:(NSString *)name
{
  v9 = ScriptMessageHandlerDelegate::operator new(self, a2);
  *v9 = &unk_1F10F8750;
  *(v9 + 8) = self;
  if (self)
  {
    v10 = self;
  }

  *(v9 + 16) = scriptMessageHandlerWithReply;
  if (scriptMessageHandlerWithReply)
  {
    v11 = scriptMessageHandlerWithReply;
  }

  *(v9 + 24) = [(NSString *)name copy];
  *(v9 + 32) = 1;
  v16 = 0;
  v17 = v9;
  MEMORY[0x19EB02040](&v15, name);
  WebKit::WebScriptMessageHandler::create(&v17, &v15, &contentWorld->_contentWorld, &v18);
  v13 = v15;
  v15 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  std::unique_ptr<ScriptMessageHandlerDelegate>::reset[abi:sn200100](&v16, v12);
  v14 = v18;
  [(WKUserContentController *)self _addScriptMessageHandler:v18, v15];
  if (v14)
  {
    if (v14[2] == 1)
    {
      (*(*v14 + 8))(v14);
    }

    else
    {
      --v14[2];
    }
  }
}

- (void)removeScriptMessageHandlerForName:(NSString *)name
{
  v4 = MEMORY[0x19EB02040](&v8, name);
  v5 = API::ContentWorld::pageContentWorldSingleton(v4);
  WebKit::WebUserContentControllerProxy::removeUserMessageHandlerForName(&self->_userContentControllerProxy, &v8, v5);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }
}

- (void)removeScriptMessageHandlerForName:(NSString *)name contentWorld:(WKContentWorld *)contentWorld
{
  MEMORY[0x19EB02040](&v8, name);
  WebKit::WebUserContentControllerProxy::removeUserMessageHandlerForName(&self->_userContentControllerProxy, &v8, &contentWorld->_contentWorld);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }
}

- (void)_addUserContentFilter:(id)a3
{
  v4 = *(a3 + 1);
  WTF::URL::URL(v7);
  WebKit::WebUserContentControllerProxy::addContentRuleList(&self->_userContentControllerProxy, (v4 + 8), v7);
  v6 = v7[0];
  v7[0] = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

- (void)_addContentRuleList:(id)a3 extensionBaseURL:(id)a4
{
  MEMORY[0x19EB01DE0](v8, a4);
  WebKit::WebUserContentControllerProxy::addContentRuleList(&self->_userContentControllerProxy, (a3 + 8), v8);
  v7 = v8[0];
  v8[0] = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }
}

- (void)_removeUserContentFilter:(id)a3
{
  MEMORY[0x19EB02040](&v7, a3);
  WebKit::WebUserContentControllerProxy::removeContentRuleList(&self->_userContentControllerProxy, &v7, v4);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

- (NSArray)_userStyleSheets
{
  v2 = *(*&self[1]._userContentControllerProxy.m_storage.data[8] + 8);
  if (!v2)
  {
    return v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (void)_addScriptMessageHandler:(id)a3 name:(id)a4 userContentWorld:(id)a5
{
  v9 = ScriptMessageHandlerDelegate::operator new(self, a2);
  ScriptMessageHandlerDelegate::ScriptMessageHandlerDelegate(v9, self, a3, a4);
  v14 = 0;
  v15 = v9;
  MEMORY[0x19EB02040](&v13, a4);
  WebKit::WebScriptMessageHandler::create(&v15, &v13, *(a5 + 1) + 8, &v16);
  v11 = v13;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  std::unique_ptr<ScriptMessageHandlerDelegate>::reset[abi:sn200100](&v14, v10);
  v12 = v16;
  if ((WebKit::WebUserContentControllerProxy::addUserScriptMessageHandler(&self->_userContentControllerProxy, v16) & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Attempt to add script message handler with name '%@' when one already exists.", a4}];
  }

  if (*(v12 + 2) == 1)
  {
    (*(*v12 + 8))(v12);
  }

  else
  {
    --*(v12 + 2);
  }
}

- (void)_addScriptMessageHandler:(id)a3 name:(id)a4 contentWorld:(id)a5
{
  v8 = [a5 _userContentWorld];

  [(WKUserContentController *)self _addScriptMessageHandler:a3 name:a4 userContentWorld:v8];
}

- (void)_removeScriptMessageHandlerForName:(id)a3 userContentWorld:(id)a4
{
  MEMORY[0x19EB02040](&v8, a3);
  WebKit::WebUserContentControllerProxy::removeUserMessageHandlerForName(&self->_userContentControllerProxy, &v8, (*(a4 + 1) + 8));
  v7 = v8;
  v8 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }
}

@end