@interface APKRemoteInspector
+ (id)computedStyleWithName:(id)a3 value:(id)a4;
+ (id)resourceWithURL:(id)a3 type:(int64_t)a4 MIMEType:(id)a5;
+ (id)styleWithProperties:(id)a3;
- (APKRemoteInspector)initWithName:(id)a3;
- (BOOL)isConnected;
- (void)dealloc;
@end

@implementation APKRemoteInspector

- (APKRemoteInspector)initWithName:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = APKRemoteInspector;
  v5 = [(APKRemoteInspector *)&v28 init];
  if (v5)
  {
    JSRemoteInspectorGetInspectionEnabledByDefault();
    JSRemoteInspectorSetInspectionEnabledByDefault();
    v6 = objc_alloc_init(MEMORY[0x277CD4640]);
    context = v5->_context;
    v5->_context = v6;

    [(JSContext *)v5->_context setName:v4];
    [(JSContext *)v5->_context _setITMLDebuggableType];
    [(JSContext *)v5->_context _setDebuggerRunLoop:CFRunLoopGetCurrent()];
    [(JSContext *)v5->_context _setRemoteInspectionEnabled:1];
    JSRemoteInspectorSetInspectionEnabledByDefault();
    v8 = [(JSContext *)v5->_context _inspector];
    v9 = [v8 configuration];

    v26 = [v9 domEventDispatcher];
    v10 = [[APKRemoteInspectorDOMAgent alloc] initWithDispatcher:v26];
    v27 = v4;
    DOMAgent = v5->_DOMAgent;
    v5->_DOMAgent = v10;
    v12 = v10;

    v13 = [v9 cssEventDispatcher];
    v14 = [[APKRemoteInspectorCSSAgent alloc] initWithDispatcher:v13];
    CSSAgent = v5->_CSSAgent;
    v5->_CSSAgent = v14;
    v16 = v14;

    v17 = [v9 networkEventDispatcher];
    v18 = [[APKRemoteInspectorNetworkAgent alloc] initWithDispatcher:v17];
    networkAgent = v5->_networkAgent;
    v5->_networkAgent = v18;
    v20 = v18;

    v21 = [v9 pageEventDispatcher];
    v22 = [[APKRemoteInspectorPageAgent alloc] initWithDispatcher:v21];
    pageAgent = v5->_pageAgent;
    v5->_pageAgent = v22;
    v24 = v22;

    [v9 setDOMHandler:v12];
    [v9 setCSSHandler:v16];

    [v9 setNetworkHandler:v20];
    [v9 setPageHandler:v24];

    v4 = v27;
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(JSContext *)self->_context _inspector];
  v4 = [v3 configuration];

  [v4 setDOMHandler:0];
  [v4 setCSSHandler:0];
  [v4 setNetworkHandler:0];
  [v4 setPageHandler:0];

  v5.receiver = self;
  v5.super_class = APKRemoteInspector;
  [(APKRemoteInspector *)&v5 dealloc];
}

- (BOOL)isConnected
{
  v2 = [(APKRemoteInspector *)self context];
  v3 = [v2 _inspector];
  v4 = [v3 connected];

  return v4;
}

+ (id)styleWithProperties:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277D7B690]);
        v12 = [v5 objectForKey:{v10, v18}];
        v13 = [v11 initWithName:v10 value:v12];

        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [v4 sortUsingComparator:&__block_literal_global_1];
  v14 = objc_alloc(MEMORY[0x277D7B6E0]);
  v15 = [v14 initWithCssProperties:v4 shorthandEntries:MEMORY[0x277CBEBF8]];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __42__APKRemoteInspector_styleWithProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)computedStyleWithName:(id)a3 value:(id)a4
{
  v5 = MEMORY[0x277D7B668];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithName:v7 value:v6];

  return v8;
}

+ (id)resourceWithURL:(id)a3 type:(int64_t)a4 MIMEType:(id)a5
{
  v7 = MEMORY[0x277D7B7A0];
  v8 = a5;
  v9 = a3;
  v10 = [[v7 alloc] initWithUrl:v9 type:a4 mimeType:v8];

  return v10;
}

@end