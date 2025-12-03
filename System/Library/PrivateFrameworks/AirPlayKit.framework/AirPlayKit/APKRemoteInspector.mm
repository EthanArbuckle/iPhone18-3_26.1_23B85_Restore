@interface APKRemoteInspector
+ (id)computedStyleWithName:(id)name value:(id)value;
+ (id)resourceWithURL:(id)l type:(int64_t)type MIMEType:(id)eType;
+ (id)styleWithProperties:(id)properties;
- (APKRemoteInspector)initWithName:(id)name;
- (BOOL)isConnected;
- (void)dealloc;
@end

@implementation APKRemoteInspector

- (APKRemoteInspector)initWithName:(id)name
{
  nameCopy = name;
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

    [(JSContext *)v5->_context setName:nameCopy];
    [(JSContext *)v5->_context _setITMLDebuggableType];
    [(JSContext *)v5->_context _setDebuggerRunLoop:CFRunLoopGetCurrent()];
    [(JSContext *)v5->_context _setRemoteInspectionEnabled:1];
    JSRemoteInspectorSetInspectionEnabledByDefault();
    _inspector = [(JSContext *)v5->_context _inspector];
    configuration = [_inspector configuration];

    domEventDispatcher = [configuration domEventDispatcher];
    v10 = [[APKRemoteInspectorDOMAgent alloc] initWithDispatcher:domEventDispatcher];
    v27 = nameCopy;
    DOMAgent = v5->_DOMAgent;
    v5->_DOMAgent = v10;
    v12 = v10;

    cssEventDispatcher = [configuration cssEventDispatcher];
    v14 = [[APKRemoteInspectorCSSAgent alloc] initWithDispatcher:cssEventDispatcher];
    CSSAgent = v5->_CSSAgent;
    v5->_CSSAgent = v14;
    v16 = v14;

    networkEventDispatcher = [configuration networkEventDispatcher];
    v18 = [[APKRemoteInspectorNetworkAgent alloc] initWithDispatcher:networkEventDispatcher];
    networkAgent = v5->_networkAgent;
    v5->_networkAgent = v18;
    v20 = v18;

    pageEventDispatcher = [configuration pageEventDispatcher];
    v22 = [[APKRemoteInspectorPageAgent alloc] initWithDispatcher:pageEventDispatcher];
    pageAgent = v5->_pageAgent;
    v5->_pageAgent = v22;
    v24 = v22;

    [configuration setDOMHandler:v12];
    [configuration setCSSHandler:v16];

    [configuration setNetworkHandler:v20];
    [configuration setPageHandler:v24];

    nameCopy = v27;
  }

  return v5;
}

- (void)dealloc
{
  _inspector = [(JSContext *)self->_context _inspector];
  configuration = [_inspector configuration];

  [configuration setDOMHandler:0];
  [configuration setCSSHandler:0];
  [configuration setNetworkHandler:0];
  [configuration setPageHandler:0];

  v5.receiver = self;
  v5.super_class = APKRemoteInspector;
  [(APKRemoteInspector *)&v5 dealloc];
}

- (BOOL)isConnected
{
  context = [(APKRemoteInspector *)self context];
  _inspector = [context _inspector];
  connected = [_inspector connected];

  return connected;
}

+ (id)styleWithProperties:(id)properties
{
  v23 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = propertiesCopy;
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

+ (id)computedStyleWithName:(id)name value:(id)value
{
  v5 = MEMORY[0x277D7B668];
  valueCopy = value;
  nameCopy = name;
  v8 = [[v5 alloc] initWithName:nameCopy value:valueCopy];

  return v8;
}

+ (id)resourceWithURL:(id)l type:(int64_t)type MIMEType:(id)eType
{
  v7 = MEMORY[0x277D7B7A0];
  eTypeCopy = eType;
  lCopy = l;
  v10 = [[v7 alloc] initWithUrl:lCopy type:type mimeType:eTypeCopy];

  return v10;
}

@end