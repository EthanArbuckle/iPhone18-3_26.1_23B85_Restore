@interface NEPathControllerNetworkAgent
+ (id)agentFromData:(id)a3;
- (BOOL)assertAgentWithOptions:(id)a3;
- (NEPathControllerNetworkAgent)initWithAdvisoryAgentDomain:(id)a3 agentType:(id)a4 advisoryMode:(unint64_t)a5;
- (NEPathControllerNetworkAgent)initWithAdvisoryInterface:(id)a3 advisoryMode:(unint64_t)a4;
- (NEPathControllerNetworkAgent)initWithAdvisoryInterface:(id)a3 predictedInterface:(id)a4 advisoryMode:(unint64_t)a5;
- (id)copyAgentData;
- (void)setAssertHandler:(id)a3;
- (void)setUnassertHandler:(id)a3;
- (void)unassertAgentWithOptions:(id)a3;
@end

@implementation NEPathControllerNetworkAgent

- (NEPathControllerNetworkAgent)initWithAdvisoryAgentDomain:(id)a3 agentType:(id)a4 advisoryMode:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [(NENetworkAgent *)self initWithConfigUUID:v10 sessionType:5 name:0];

  if (v11)
  {
    [(NEPathControllerNetworkAgent *)v11 setAdvisoryAgentDomain:v8];
    [(NEPathControllerNetworkAgent *)v11 setAdvisoryAgentType:v9];
    switch(a5)
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

- (NEPathControllerNetworkAgent)initWithAdvisoryInterface:(id)a3 predictedInterface:(id)a4 advisoryMode:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [(NENetworkAgent *)self initWithConfigUUID:v10 sessionType:5 name:0];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NEPathControllerNetworkAgent *)v11 setAdvisoryInterfaceArray:v12];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NEPathControllerNetworkAgent *)v11 setPredictedInterfaceArray:v13];

    v14 = [(NEPathControllerNetworkAgent *)v11 advisoryInterfaceArray];
    v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:{objc_msgSend(v8, "interfaceIndex")}];
    [v14 addObject:v15];

    v16 = [(NEPathControllerNetworkAgent *)v11 predictedInterfaceArray];
    v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:{objc_msgSend(v9, "interfaceIndex")}];
    [v16 addObject:v17];

    switch(a5)
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

- (NEPathControllerNetworkAgent)initWithAdvisoryInterface:(id)a3 advisoryMode:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [(NENetworkAgent *)self initWithConfigUUID:v7 sessionType:5 name:0];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NEPathControllerNetworkAgent *)v8 setAdvisoryInterfaceArray:v9];

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NEPathControllerNetworkAgent *)v8 setPredictedInterfaceArray:v10];

    v11 = [(NEPathControllerNetworkAgent *)v8 advisoryInterfaceArray];
    v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:{objc_msgSend(v6, "interfaceIndex")}];
    [v11 addObject:v12];

    v13 = [(NEPathControllerNetworkAgent *)v8 predictedInterfaceArray];
    [v13 addObject:&unk_1F38BA5C8];

    switch(a4)
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

- (void)setUnassertHandler:(id)a3
{
  if (self)
  {
    objc_setProperty_atomic_copy(self, a2, a3, 96);
  }
}

- (void)setAssertHandler:(id)a3
{
  if (self)
  {
    objc_setProperty_atomic_copy(self, a2, a3, 88);
  }
}

- (void)unassertAgentWithOptions:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6977DF0]];
  v5 = ne_log_obj();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(NENetworkAgent *)self agentDescription];
      v12 = [v4 UUIDString];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
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

- (BOOL)assertAgentWithOptions:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6977DF0]];
  if (v4)
  {
    v5 = [MEMORY[0x1E6977E48] pathForClientID:v4];
    v6 = v5 != 0;
    v7 = ne_log_obj();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v16 = [(NENetworkAgent *)self agentDescription];
        v17 = [v4 UUIDString];
        v18 = [v5 parameters];
        v19 = [v18 effectiveProcessUUID];
        v20 = [v19 UUIDString];
        v22 = 138412802;
        v23 = v16;
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = v20;
        _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "%@ asserted by: client=%@ process=%@", &v22, 0x20u);
      }

      if (!self || !objc_getProperty(self, v9, 88, 1))
      {
        v6 = 1;
        goto LABEL_15;
      }

      Property = objc_getProperty(self, v10, 88, 1);
      v12 = Property;
      v8 = [v5 parameters];
      v13 = [v8 effectiveProcessUUID];
      (*(Property + 2))(v12, v4, v13);
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v21 = [v4 UUIDString];
      v22 = 138412290;
      v23 = v21;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Could not fetch path for assert message (client %@)", &v22, 0xCu);
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
  v3 = [(NEPathControllerNetworkAgent *)self advisoryInterfaceArray];
  if ([v3 count])
  {
    goto LABEL_4;
  }

  v4 = [(NEPathControllerNetworkAgent *)self advisoryAgentDomain];
  if ([v4 length])
  {

LABEL_4:
    goto LABEL_5;
  }

  v28 = [(NEPathControllerNetworkAgent *)self advisoryAgentType];
  v29 = [v28 length];

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
      v12 = [(NEPathControllerNetworkAgent *)self advisoryInterfaceArray];
      v13 = [v12 objectAtIndexedSubscript:v10];
      v14 = [v13 unsignedIntegerValue];

      if (v14)
      {
        v15 = [(NEPathControllerNetworkAgent *)self advisoryInterfaceArray];
        v16 = [v15 objectAtIndexedSubscript:v10];
        *(v11 - 4) = [v16 unsignedIntegerValue];

        v17 = [(NEPathControllerNetworkAgent *)self predictedInterfaceArray];
        v18 = [v17 objectAtIndexedSubscript:v10];
        *v11 = [v18 unsignedIntegerValue];
      }

      ++v10;
      ++v11;
      --v9;
    }

    while (v9);
  }

  v19 = [(NEPathControllerNetworkAgent *)self weakAdvisory];
  BYTE8(v35) = BYTE8(v35) & 0xFE | v19;
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
  v23 = [(NEPathControllerNetworkAgent *)self advisoryAgentDomain];
  v24 = [(NEPathControllerNetworkAgent *)self advisoryAgentType];
  if (v23 && [v23 length] <= 0x1F)
  {
    [v23 UTF8String];
    __strlcpy_chk();
  }

  if (v24 && [v24 length] <= 0x1F)
  {
    [v24 UTF8String];
    __strlcpy_chk();
  }

  v25 = [MEMORY[0x1E695DEF0] dataWithBytes:&v31 length:140];

LABEL_31:
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

+ (id)agentFromData:(id)a3
{
  v3 = a3;
  if ([v3 length] == 140)
  {
    v4 = [v3 bytes];
    v5 = [NEPathControllerNetworkAgent alloc];
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v4];
    v7 = *(v4 + 16);
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4 + 20];
    v9 = [(NENetworkAgent *)v5 initWithConfigUUID:v6 sessionType:v7 name:v8];

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NEPathControllerNetworkAgent *)v9 setAdvisoryInterfaceArray:v10];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NEPathControllerNetworkAgent *)v9 setPredictedInterfaceArray:v11];

    v12 = (v4 + 40);
    v13 = 4;
    do
    {
      if (*v12)
      {
        v14 = [(NEPathControllerNetworkAgent *)v9 advisoryInterfaceArray];
        v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:*v12];
        [v14 addObject:v15];

        v16 = [(NEPathControllerNetworkAgent *)v9 predictedInterfaceArray];
        v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:v12[4]];
        [v16 addObject:v17];
      }

      ++v12;
      --v13;
    }

    while (v13);
    [(NEPathControllerNetworkAgent *)v9 setWeakAdvisory:*(v4 + 72) & 1];
    [(NEPathControllerNetworkAgent *)v9 setNoAdvisoryTimer:(*(v4 + 72) >> 1) & 1];
    [(NEPathControllerNetworkAgent *)v9 setIsForcedAdvisory:(*(v4 + 72) >> 2) & 1];
    [(NEPathControllerNetworkAgent *)v9 setPreferAdvisory:(*(v4 + 72) >> 3) & 1];
    if (*(v4 + 73))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4 + 73];
      [(NEPathControllerNetworkAgent *)v9 setAdvisoryAgentDomain:v18];
    }

    v20 = *(v4 + 105);
    v19 = v4 + 105;
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