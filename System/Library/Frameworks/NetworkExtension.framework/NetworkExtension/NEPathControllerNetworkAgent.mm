@interface NEPathControllerNetworkAgent
+ (id)agentFromData:(id)data;
- (BOOL)assertAgentWithOptions:(id)options;
- (NEPathControllerNetworkAgent)initWithAdvisoryAgentDomain:(id)domain agentType:(id)type advisoryMode:(unint64_t)mode;
- (NEPathControllerNetworkAgent)initWithAdvisoryInterface:(id)interface advisoryMode:(unint64_t)mode;
- (NEPathControllerNetworkAgent)initWithAdvisoryInterface:(id)interface predictedInterface:(id)predictedInterface advisoryMode:(unint64_t)mode;
- (id)copyAgentData;
- (void)setAssertHandler:(id)handler;
- (void)setUnassertHandler:(id)handler;
- (void)unassertAgentWithOptions:(id)options;
@end

@implementation NEPathControllerNetworkAgent

- (NEPathControllerNetworkAgent)initWithAdvisoryAgentDomain:(id)domain agentType:(id)type advisoryMode:(unint64_t)mode
{
  domainCopy = domain;
  typeCopy = type;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v11 = [(NENetworkAgent *)self initWithConfigUUID:uUID sessionType:5 name:0];

  if (v11)
  {
    [(NEPathControllerNetworkAgent *)v11 setAdvisoryAgentDomain:domainCopy];
    [(NEPathControllerNetworkAgent *)v11 setAdvisoryAgentType:typeCopy];
    switch(mode)
    {
      case 4uLL:
        [(NEPathControllerNetworkAgent *)v11 setPreferAdvisory:1];
        break;
      case 3uLL:
        [(NEPathControllerNetworkAgent *)v11 setNoAdvisoryTimer:1];
        break;
      case 2uLL:
        [(NEPathControllerNetworkAgent *)v11 setWeakAdvisory:1];
        break;
    }
  }

  return v11;
}

- (NEPathControllerNetworkAgent)initWithAdvisoryInterface:(id)interface predictedInterface:(id)predictedInterface advisoryMode:(unint64_t)mode
{
  interfaceCopy = interface;
  predictedInterfaceCopy = predictedInterface;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v11 = [(NENetworkAgent *)self initWithConfigUUID:uUID sessionType:5 name:0];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NEPathControllerNetworkAgent *)v11 setAdvisoryInterfaceArray:v12];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NEPathControllerNetworkAgent *)v11 setPredictedInterfaceArray:v13];

    advisoryInterfaceArray = [(NEPathControllerNetworkAgent *)v11 advisoryInterfaceArray];
    v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:{objc_msgSend(interfaceCopy, "interfaceIndex")}];
    [advisoryInterfaceArray addObject:v15];

    predictedInterfaceArray = [(NEPathControllerNetworkAgent *)v11 predictedInterfaceArray];
    v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:{objc_msgSend(predictedInterfaceCopy, "interfaceIndex")}];
    [predictedInterfaceArray addObject:v17];

    switch(mode)
    {
      case 4uLL:
        [(NEPathControllerNetworkAgent *)v11 setPreferAdvisory:1];
        break;
      case 3uLL:
        [(NEPathControllerNetworkAgent *)v11 setNoAdvisoryTimer:1];
        break;
      case 2uLL:
        [(NEPathControllerNetworkAgent *)v11 setWeakAdvisory:1];
        break;
    }
  }

  return v11;
}

- (NEPathControllerNetworkAgent)initWithAdvisoryInterface:(id)interface advisoryMode:(unint64_t)mode
{
  interfaceCopy = interface;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v8 = [(NENetworkAgent *)self initWithConfigUUID:uUID sessionType:5 name:0];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NEPathControllerNetworkAgent *)v8 setAdvisoryInterfaceArray:v9];

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NEPathControllerNetworkAgent *)v8 setPredictedInterfaceArray:v10];

    advisoryInterfaceArray = [(NEPathControllerNetworkAgent *)v8 advisoryInterfaceArray];
    v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:{objc_msgSend(interfaceCopy, "interfaceIndex")}];
    [advisoryInterfaceArray addObject:v12];

    predictedInterfaceArray = [(NEPathControllerNetworkAgent *)v8 predictedInterfaceArray];
    [predictedInterfaceArray addObject:&unk_1F38BA5C8];

    switch(mode)
    {
      case 4uLL:
        [(NEPathControllerNetworkAgent *)v8 setPreferAdvisory:1];
        break;
      case 3uLL:
        [(NEPathControllerNetworkAgent *)v8 setNoAdvisoryTimer:1];
        break;
      case 2uLL:
        [(NEPathControllerNetworkAgent *)v8 setWeakAdvisory:1];
        break;
    }
  }

  return v8;
}

- (void)setUnassertHandler:(id)handler
{
  if (self)
  {
    objc_setProperty_atomic_copy(self, a2, handler, 96);
  }
}

- (void)setAssertHandler:(id)handler
{
  if (self)
  {
    objc_setProperty_atomic_copy(self, a2, handler, 88);
  }
}

- (void)unassertAgentWithOptions:(id)options
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [options objectForKeyedSubscript:*MEMORY[0x1E6977DF0]];
  v5 = ne_log_obj();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      agentDescription = [(NENetworkAgent *)self agentDescription];
      uUIDString = [v4 UUIDString];
      v13 = 138412546;
      v14 = agentDescription;
      v15 = 2112;
      v16 = uUIDString;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@ unasserted by: client=%@", &v13, 0x16u);
    }

    if (self && objc_getProperty(self, v7, 96, 1))
    {
      Property = objc_getProperty(self, v8, 96, 1);
      Property[2](Property, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Unassert message did not contain client UUID", &v13, 2u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)assertAgentWithOptions:(id)options
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [options objectForKeyedSubscript:*MEMORY[0x1E6977DF0]];
  if (v4)
  {
    v5 = [MEMORY[0x1E6977E48] pathForClientID:v4];
    v6 = v5 != 0;
    v7 = ne_log_obj();
    parameters2 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        agentDescription = [(NENetworkAgent *)self agentDescription];
        uUIDString = [v4 UUIDString];
        parameters = [v5 parameters];
        effectiveProcessUUID = [parameters effectiveProcessUUID];
        uUIDString2 = [effectiveProcessUUID UUIDString];
        v22 = 138412802;
        v23 = agentDescription;
        v24 = 2112;
        v25 = uUIDString;
        v26 = 2112;
        v27 = uUIDString2;
        _os_log_debug_impl(&dword_1BA83C000, parameters2, OS_LOG_TYPE_DEBUG, "%@ asserted by: client=%@ process=%@", &v22, 0x20u);
      }

      if (!self || !objc_getProperty(self, v9, 88, 1))
      {
        v6 = 1;
        goto LABEL_15;
      }

      Property = objc_getProperty(self, v10, 88, 1);
      v12 = Property;
      parameters2 = [v5 parameters];
      effectiveProcessUUID2 = [parameters2 effectiveProcessUUID];
      (*(Property + 2))(v12, v4, effectiveProcessUUID2);
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      uUIDString3 = [v4 UUIDString];
      v22 = 138412290;
      v23 = uUIDString3;
      _os_log_error_impl(&dword_1BA83C000, parameters2, OS_LOG_TYPE_ERROR, "Could not fetch path for assert message (client %@)", &v22, 0xCu);
    }
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Assert message did not contain client UUID", &v22, 2u);
    }

    v6 = 0;
  }

LABEL_15:

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyAgentData
{
  v39 = *MEMORY[0x1E69E9840];
  advisoryInterfaceArray = [(NEPathControllerNetworkAgent *)self advisoryInterfaceArray];
  if ([advisoryInterfaceArray count])
  {
    goto LABEL_4;
  }

  advisoryAgentDomain = [(NEPathControllerNetworkAgent *)self advisoryAgentDomain];
  if ([advisoryAgentDomain length])
  {

LABEL_4:
    goto LABEL_5;
  }

  advisoryAgentType = [(NEPathControllerNetworkAgent *)self advisoryAgentType];
  v29 = [advisoryAgentType length];

  if (!v29)
  {
    *&v33 = 0;
    v31 = 0u;
    v32 = 0u;
    if (self)
    {
      [objc_getProperty(self v5];
      internalSessionType = self->super._internalSessionType;
    }

    else
    {
      [0 getUUIDBytes:&v31];
      internalSessionType = 0;
    }

    LODWORD(v32) = internalSessionType;
    v25 = [MEMORY[0x1E695DEF0] dataWithBytes:&v31 length:40];
    goto LABEL_31;
  }

LABEL_5:
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  if (self)
  {
    [objc_getProperty(self v5];
    v6 = self->super._internalSessionType;
  }

  else
  {
    [0 getUUIDBytes:&v31];
    v6 = 0;
  }

  LODWORD(v32) = v6;
  v7 = [(NEPathControllerNetworkAgent *)self advisoryInterfaceArray:v31];
  v8 = [v7 count];

  if (v8 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  if (v8)
  {
    v10 = 0;
    v11 = &v34 + 2;
    do
    {
      advisoryInterfaceArray2 = [(NEPathControllerNetworkAgent *)self advisoryInterfaceArray];
      v13 = [advisoryInterfaceArray2 objectAtIndexedSubscript:v10];
      unsignedIntegerValue = [v13 unsignedIntegerValue];

      if (unsignedIntegerValue)
      {
        advisoryInterfaceArray3 = [(NEPathControllerNetworkAgent *)self advisoryInterfaceArray];
        v16 = [advisoryInterfaceArray3 objectAtIndexedSubscript:v10];
        *(v11 - 4) = [v16 unsignedIntegerValue];

        predictedInterfaceArray = [(NEPathControllerNetworkAgent *)self predictedInterfaceArray];
        v18 = [predictedInterfaceArray objectAtIndexedSubscript:v10];
        *v11 = [v18 unsignedIntegerValue];
      }

      ++v10;
      ++v11;
      --v9;
    }

    while (v9);
  }

  weakAdvisory = [(NEPathControllerNetworkAgent *)self weakAdvisory];
  BYTE8(v35) = BYTE8(v35) & 0xFE | weakAdvisory;
  if ([(NEPathControllerNetworkAgent *)self noAdvisoryTimer])
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  BYTE8(v35) = BYTE8(v35) & 0xFD | v20;
  if ([(NEPathControllerNetworkAgent *)self preferAdvisory])
  {
    v21 = 8;
  }

  else
  {
    v21 = 0;
  }

  BYTE8(v35) = BYTE8(v35) & 0xF7 | v21;
  if ([(NEPathControllerNetworkAgent *)self isForcedAdvisory])
  {
    v22 = 4;
  }

  else
  {
    v22 = 0;
  }

  BYTE8(v35) = BYTE8(v35) & 0xFB | v22;
  advisoryAgentDomain2 = [(NEPathControllerNetworkAgent *)self advisoryAgentDomain];
  advisoryAgentType2 = [(NEPathControllerNetworkAgent *)self advisoryAgentType];
  if (advisoryAgentDomain2 && [advisoryAgentDomain2 length] <= 0x1F)
  {
    [advisoryAgentDomain2 UTF8String];
    __strlcpy_chk();
  }

  if (advisoryAgentType2 && [advisoryAgentType2 length] <= 0x1F)
  {
    [advisoryAgentType2 UTF8String];
    __strlcpy_chk();
  }

  v25 = [MEMORY[0x1E695DEF0] dataWithBytes:&v31 length:140];

LABEL_31:
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

+ (id)agentFromData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] == 140)
  {
    bytes = [dataCopy bytes];
    v5 = [NEPathControllerNetworkAgent alloc];
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:bytes];
    v7 = *(bytes + 16);
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:bytes + 20];
    v9 = [(NENetworkAgent *)v5 initWithConfigUUID:v6 sessionType:v7 name:v8];

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NEPathControllerNetworkAgent *)v9 setAdvisoryInterfaceArray:v10];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NEPathControllerNetworkAgent *)v9 setPredictedInterfaceArray:v11];

    v12 = (bytes + 40);
    v13 = 4;
    do
    {
      if (*v12)
      {
        advisoryInterfaceArray = [(NEPathControllerNetworkAgent *)v9 advisoryInterfaceArray];
        v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:*v12];
        [advisoryInterfaceArray addObject:v15];

        predictedInterfaceArray = [(NEPathControllerNetworkAgent *)v9 predictedInterfaceArray];
        v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:v12[4]];
        [predictedInterfaceArray addObject:v17];
      }

      ++v12;
      --v13;
    }

    while (v13);
    [(NEPathControllerNetworkAgent *)v9 setWeakAdvisory:*(bytes + 72) & 1];
    [(NEPathControllerNetworkAgent *)v9 setNoAdvisoryTimer:(*(bytes + 72) >> 1) & 1];
    [(NEPathControllerNetworkAgent *)v9 setIsForcedAdvisory:(*(bytes + 72) >> 2) & 1];
    [(NEPathControllerNetworkAgent *)v9 setPreferAdvisory:(*(bytes + 72) >> 3) & 1];
    if (*(bytes + 73))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:bytes + 73];
      [(NEPathControllerNetworkAgent *)v9 setAdvisoryAgentDomain:v18];
    }

    v20 = *(bytes + 105);
    v19 = bytes + 105;
    if (v20)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
      [(NEPathControllerNetworkAgent *)v9 setAdvisoryAgentType:v21];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end