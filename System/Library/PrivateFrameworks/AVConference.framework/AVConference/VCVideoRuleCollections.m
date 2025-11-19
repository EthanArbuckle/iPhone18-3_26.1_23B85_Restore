@interface VCVideoRuleCollections
+ (id)newCorrectedVideoRules:(id)a3 payload:(int)a4;
+ (id)newU1VideoRuleCollections;
+ (void)addRulesForU1ToCollection:(id)a3;
+ (void)newU1VideoRuleCollections;
- (BOOL)isDecodeSupported;
- (BOOL)isEncodeSupported;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPayloadSupported:(int)a3;
- (NSSet)supportedTransportTypes;
- (VCVideoRuleCollections)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)filterRules:(id)a3 byBitrateRule:(id)a4;
- (id)getVideoRulesForTransport:(unsigned __int8)a3 payload:(int)a4 encodingType:(unsigned __int8)a5;
- (id)supportedVideoRulesForBitrate:(id)a3 transportType:(unsigned __int8)a4 payload:(int)a5 encodingType:(unsigned __int8)a6;
- (id)supportedVideoRulesSizesForBitrate:(id)a3 transportType:(unsigned __int8)a4 payload:(int)a5 encodingType:(unsigned __int8)a6;
- (id)supportedVideoRulesSyncForTransportType:(unsigned __int8)a3 payload:(int)a4 encodingType:(unsigned __int8)a5;
- (id)supportedVideoSizesForKey:(id)a3;
- (id)videoRulesCollectionsByRemovingPayload:(int)a3 andPayload:(int)a4 removeCellular:(BOOL)a5;
- (void)addSupportedPayload:(int)a3;
- (void)addVideoRules:(id)a3 transportType:(unsigned __int8)a4 payload:(int)a5 encodingType:(unsigned __int8)a6;
- (void)appendVideoRules:(id)a3 transportType:(unsigned __int8)a4 payload:(int)a5 encodingType:(unsigned __int8)a6;
- (void)dealloc;
- (void)init;
- (void)limitRulesFromVideoRules:(int)a3 frameHeight:(int)a4 videoRules:(id)a5;
- (void)limitVideoRulesToMaxWidth:(int)a3 maxHeight:(int)a4 transportType:(unsigned __int8)a5;
- (void)removeVideoRulesForEncodingType:(unsigned __int8)a3;
- (void)removeVideoRulesWithWidth:(int)a3 height:(int)a4 transportType:(unsigned __int8)a5 encodingType:(unsigned __int8)a6;
@end

@implementation VCVideoRuleCollections

- (VCVideoRuleCollections)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCVideoRuleCollections;
  v2 = [(VCVideoRuleCollections *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v2->_rules = v3;
    if (v3)
    {
      v4 = objc_opt_new();
      v2->_supportedPayloads = v4;
      if (v4)
      {
        return v2;
      }

      [VCVideoRuleCollections init];
    }

    else
    {
      [VCVideoRuleCollections init];
    }

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCVideoRuleCollections;
  [(VCVideoRuleCollections *)&v3 dealloc];
}

- (id)filterRules:(id)a3 byBitrateRule:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v25 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(a3);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          if ([v11 compare:a4] <= 0)
          {
            [v6 addObject:v11];
          }
        }

        v8 = [a3 countByEnumeratingWithState:&v25 objects:v24 count:16];
      }

      while (v8);
    }

    if ([v6 count] || !objc_msgSend(a3, "count"))
    {
      [v6 sortUsingSelector:sel_compare_];
    }

    else
    {
      [v6 addObject:a4];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = v14;
        v18 = 2080;
        v19 = "[VCVideoRuleCollections filterRules:byBitrateRule:]";
        v20 = 1024;
        v21 = 122;
        v22 = 2080;
        v23 = [objc_msgSend(v6 "description")];
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCVideoRuleCollections: Returning filtered video rules %s", &v16, 0x26u);
      }
    }

    return v6;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollections filterRules:v12 byBitrateRule:?];
      }
    }

    return 0;
  }
}

- (id)supportedVideoRulesSyncForTransportType:(unsigned __int8)a3 payload:(int)a4 encodingType:(unsigned __int8)a5
{
  v5 = a5;
  v6 = *&a4;
  v7 = a3;
  objc_sync_enter(self);
  v9 = [(VCVideoRuleCollections *)self getVideoRulesForTransport:v7 payload:v6 encodingType:v5];
  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v9];
  objc_sync_exit(self);

  return v10;
}

- (id)supportedVideoSizesForKey:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(NSMutableDictionary *)self->_rules objectForKeyedSubscript:a3];
  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        v12 = v7;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v7 = *(*(&v17 + 1) + 8 * v11);
          v13 = [v7 iWidth];
          if (v13 != [v12 iWidth] || (v14 = objc_msgSend(v7, "iHeight"), v14 != objc_msgSend(v12, "iHeight")))
          {
            [v5 addObject:v12];
          }

          ++v11;
          v12 = v7;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v9);
    }

    [v5 addObject:v7];
  }

  return v5;
}

- (id)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"VCVideoRuleCollections description: count = %lu.\n", -[NSMutableDictionary count](self->_rules, "count")];
  rules = self->_rules;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__VCVideoRuleCollections_description__block_invoke;
  v7[3] = &unk_1E85F9F60;
  v7[4] = v3;
  [(NSMutableDictionary *)rules enumerateKeysAndObjectsUsingBlock:v7];
  v5 = [v3 copy];

  return v5;
}

uint64_t __37__VCVideoRuleCollections_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) appendFormat:@"  encodingType = %d, payload = %d, transportType = %d, rules = ", objc_msgSend(a2, "encodingType"), objc_msgSend(a2, "payload"), objc_msgSend(a2, "transportType")];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = *(a1 + 32);
        v11 = [v9 iWidth];
        v12 = [v9 iHeight];
        [v9 fRate];
        [v10 appendFormat:@"%dx%d@%u ", v11, v12, v13];
      }

      v6 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v6);
  }

  return [*(a1 + 32) appendString:@"\n"];
}

- (id)getVideoRulesForTransport:(unsigned __int8)a3 payload:(int)a4 encodingType:(unsigned __int8)a5
{
  v6 = [[VCVideoRuleCollectionKey alloc] initWithPayload:*&a4 transportType:a3 encodingType:a5];
  v7 = [(NSMutableDictionary *)self->_rules objectForKeyedSubscript:v6];

  v8 = [v7 copy];

  return v8;
}

- (id)supportedVideoRulesSizesForBitrate:(id)a3 transportType:(unsigned __int8)a4 payload:(int)a5 encodingType:(unsigned __int8)a6
{
  v9 = [[VCVideoRuleCollectionKey alloc] initWithPayload:*&a5 transportType:a4 encodingType:a6];
  v10 = [(VCVideoRuleCollections *)self supportedVideoSizesForKey:v9];

  if (a5 != 126 || !v10)
  {
    return v10;
  }

  return [(VCVideoRuleCollections *)self filterRules:v10 byBitrateRule:a3];
}

- (id)supportedVideoRulesForBitrate:(id)a3 transportType:(unsigned __int8)a4 payload:(int)a5 encodingType:(unsigned __int8)a6
{
  v9 = [(VCVideoRuleCollections *)self supportedVideoRulesSyncForTransportType:a4 payload:*&a5 encodingType:a6];
  if (a5 == 126)
  {
    v10 = [(VCVideoRuleCollections *)self filterRules:v9 byBitrateRule:a3];
  }

  else
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithArray:v9];
  }

  v11 = v10;
  [v10 sortUsingSelector:sel_compareByPref_];
  return v11;
}

- (NSSet)supportedTransportTypes
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  rules = self->_rules;
  v5 = [(NSMutableDictionary *)rules countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(rules);
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "transportType"))}];
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)rules countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)newCorrectedVideoRules:(id)a3 payload:(int)a4
{
  v4 = *&a4;
  v30 = *MEMORY[0x1E69E9840];
  v5 = [a3 firstObject];
  if ([a3 count] && objc_msgSend(v5, "iPayload") != v4 && ((v7 = objc_msgSend(v5, "iPayload"), v4 == 126) && v7 == 123 || (v8 = objc_msgSend(v5, "iPayload"), v4 == 123) && v8 == 126))
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [a3 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(a3);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [VCVideoRule alloc];
          v16 = [v14 iWidth];
          v17 = [v14 iHeight];
          [v14 fRate];
          v19 = v18;
          [v14 fPref];
          LODWORD(v21) = v20;
          LODWORD(v22) = v19;
          v23 = [(VCVideoRule *)v15 initWithFrameWidth:v16 frameHeight:v17 frameRate:v4 payload:v22 priority:v21];
          [v9 addObject:v23];
        }

        v11 = [a3 countByEnumeratingWithState:&v26 objects:v25 count:16];
      }

      while (v11);
    }

    return v9;
  }

  else
  {

    return a3;
  }
}

- (void)addVideoRules:(id)a3 transportType:(unsigned __int8)a4 payload:(int)a5 encodingType:(unsigned __int8)a6
{
  if (a3)
  {
    v6 = a6;
    v7 = *&a5;
    v8 = a4;
    v10 = [VCVideoRuleCollections newCorrectedVideoRules:a3 payload:*&a5];
    if (v10)
    {
      v12 = v10;
      if ((-[NSMutableArray containsObject:](self->_supportedPayloads, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7]) & 1) == 0)
      {
        -[NSMutableArray addObject:](self->_supportedPayloads, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7]);
      }

      v11 = [[VCVideoRuleCollectionKey alloc] initWithPayload:v7 transportType:v8 encodingType:v6];
      [v12 sortUsingSelector:sel_compare_];
      [(NSMutableDictionary *)self->_rules setObject:v12 forKeyedSubscript:v11];
    }
  }
}

- (void)appendVideoRules:(id)a3 transportType:(unsigned __int8)a4 payload:(int)a5 encodingType:(unsigned __int8)a6
{
  v6 = a6;
  v7 = *&a5;
  v8 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v11 = [[VCVideoRuleCollectionKey alloc] initWithPayload:*&a5 transportType:a4 encodingType:a6];
  v12 = [(NSMutableDictionary *)self->_rules objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [VCVideoRuleCollections newCorrectedVideoRules:a3 payload:v7];
    if (v13)
    {
      v14 = v13;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v20 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v21 + 1) + 8 * i);
            if (([v12 containsObject:v19] & 1) == 0)
            {
              [v12 addObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v21 objects:v20 count:16];
        }

        while (v16);
      }

      [v12 sortUsingSelector:sel_compare_];
    }
  }

  else
  {

    [(VCVideoRuleCollections *)self addVideoRules:a3 transportType:v8 payload:v7 encodingType:v6];
  }
}

- (void)removeVideoRulesWithWidth:(int)a3 height:(int)a4 transportType:(unsigned __int8)a5 encodingType:(unsigned __int8)a6
{
  v20 = a5;
  v21 = a6;
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_supportedPayloads;
  v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v22)
  {
    v18 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = -[VCVideoRuleCollectionKey initWithPayload:transportType:encodingType:]([VCVideoRuleCollectionKey alloc], "initWithPayload:transportType:encodingType:", [*(*(&v29 + 1) + 8 * i) intValue], v20, v21);
        v10 = [(NSMutableDictionary *)self->_rules objectForKeyedSubscript:v9];
        v11 = objc_opt_new();
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v23 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v25;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v24 + 1) + 8 * j);
              if ([v16 iWidth] == a3 && objc_msgSend(v16, "iHeight") == a4)
              {
                [v11 addObject:v16];
              }
            }

            v13 = [v10 countByEnumeratingWithState:&v24 objects:v23 count:16];
          }

          while (v13);
        }

        [v10 removeObjectsInArray:v11];
      }

      v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v22);
  }
}

- (void)removeVideoRulesForEncodingType:(unsigned __int8)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)self->_rules allKeys];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 encodingType] == v3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->_rules removeObjectsForKeys:v5];
}

- (void)limitRulesFromVideoRules:(int)a3 frameHeight:(int)a4 videoRules:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [a5 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(a5);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 iWidth] > a3 || objc_msgSend(v13, "iHeight") > a4)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [a5 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v10);
  }

  [a5 removeObjectsInArray:v8];
}

- (void)limitVideoRulesToMaxWidth:(int)a3 maxHeight:(int)a4 transportType:(unsigned __int8)a5
{
  v21 = a5;
  v5 = *&a4;
  v6 = *&a3;
  v39 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v10 = "Cellular";
      v28 = v8;
      v29 = 2080;
      v30 = "[VCVideoRuleCollections limitVideoRulesToMaxWidth:maxHeight:transportType:]";
      v31 = 1024;
      if (v21 == 1)
      {
        v10 = "WiFi";
      }

      v32 = 324;
      v33 = 1024;
      v34 = v6;
      v35 = 1024;
      v36 = v5;
      v37 = 2080;
      v38 = v10;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d maxWidth=%d, maxHeight=%d, transportType=%s", buf, 0x32u);
    }
  }

  if ([&unk_1F579E328 count])
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v20 = v12;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      supportedPayloads = self->_supportedPayloads;
      v14 = [(NSMutableArray *)supportedPayloads countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(supportedPayloads);
            }

            v18 = -[VCVideoRuleCollectionKey initWithPayload:transportType:encodingType:]([VCVideoRuleCollectionKey alloc], "initWithPayload:transportType:encodingType:", [*(*(&v23 + 1) + 8 * i) intValue], v21, objc_msgSend(objc_msgSend(&unk_1F579E328, "objectAtIndexedSubscript:", v11), "intValue"));
            [(VCVideoRuleCollections *)self limitRulesFromVideoRules:v6 frameHeight:v5 videoRules:[(NSMutableDictionary *)self->_rules objectForKeyedSubscript:v18]];
          }

          v15 = [(NSMutableArray *)supportedPayloads countByEnumeratingWithState:&v23 objects:v22 count:16];
        }

        while (v15);
      }

      v11 = (v20 + 1);
      v19 = [&unk_1F579E328 count];
      v12 = v20 + 1;
    }

    while (v19 > v11);
  }
}

- (void)addSupportedPayload:(int)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*&a3];
  [(NSMutableArray *)self->_supportedPayloads addObject:v4];
}

- (BOOL)isPayloadSupported:(int)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*&a3];
  LOBYTE(self) = [(NSMutableArray *)self->_supportedPayloads containsObject:v4];

  return self;
}

+ (void)addRulesForU1ToCollection:(id)a3
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCVideoRuleCollections *)v4 addRulesForU1ToCollection:a1];
    }
  }
}

+ (id)newU1VideoRuleCollections
{
  v3 = objc_alloc_init(a1);
  if (!v3)
  {
    +[(VCVideoRuleCollections *)a1];
LABEL_6:

    return 0;
  }

  [a1 addRulesForU1ToCollection:v3];
  if (![objc_msgSend(v3 "rules")])
  {
    +[(VCVideoRuleCollections *)a1];
    goto LABEL_6;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = -[NSMutableArray count](self->_supportedPayloads, "count"), v5 != [objc_msgSend(a3 "supportedPayloads")]))
  {
LABEL_12:
    v11 = 0;
    return v11 & 1;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  supportedPayloads = self->_supportedPayloads;
  v7 = [(NSMutableArray *)supportedPayloads countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v7)
  {
    v8 = *v20;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(supportedPayloads);
      }

      if (![objc_msgSend(a3 "supportedPayloads")])
      {
        goto LABEL_12;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)supportedPayloads countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  rules = self->_rules;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__VCVideoRuleCollections_isEqual___block_invoke;
  v13[3] = &unk_1E85F9F88;
  v13[4] = a3;
  v13[5] = &v14;
  [(NSMutableDictionary *)rules enumerateKeysAndObjectsUsingBlock:v13];
  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v11 & 1;
}

void *__34__VCVideoRuleCollections_isEqual___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  result = [objc_msgSend(*(a1 + 32) "rules")];
  if (result)
  {
    v8 = result;
    v9 = [result count];
    result = [a3 count];
    if (v9 == result)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      result = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (!result)
      {
        return result;
      }

      v10 = result;
      v11 = *v15;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(a3);
        }

        result = [v8 containsObject:*(*(&v14 + 1) + 8 * v12)];
        if (!result)
        {
          break;
        }

        if (v10 == ++v12)
        {
          result = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
          v10 = result;
          if (result)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  *a4 = 1;
  return result;
}

- (BOOL)isEncodeSupported
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rules = self->_rules;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__VCVideoRuleCollections_isEncodeSupported__block_invoke;
  v5[3] = &unk_1E85F9FB0;
  v5[4] = &v6;
  [(NSMutableDictionary *)rules enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__VCVideoRuleCollections_isEncodeSupported__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = [a2 encodingType];
  if (result == 1)
  {
    result = [a3 count];
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  return result;
}

- (BOOL)isDecodeSupported
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rules = self->_rules;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__VCVideoRuleCollections_isDecodeSupported__block_invoke;
  v5[3] = &unk_1E85F9FB0;
  v5[4] = &v6;
  [(NSMutableDictionary *)rules enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__VCVideoRuleCollections_isDecodeSupported__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = [a2 encodingType];
  if (result == 2)
  {
    result = [a3 count];
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  return result;
}

- (id)videoRulesCollectionsByRemovingPayload:(int)a3 andPayload:(int)a4 removeCellular:(BOOL)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(VCVideoRuleCollections);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(VCVideoRuleCollections *)self supportedPayloads];
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v20 + 1) + 8 * i) unsignedIntValue];
        if (v13 != a3 && v13 != a4)
        {
          v15 = v13;
          [(VCVideoRuleCollections *)v8 addSupportedPayload:v13];
          -[VCVideoRuleCollections addVideoRules:transportType:payload:encodingType:](v8, "addVideoRules:transportType:payload:encodingType:", [MEMORY[0x1E695DF70] arrayWithArray:{-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](self, "getVideoRulesForTransport:payload:encodingType:", 1, v15, 1)}], 1, v15, 1);
          -[VCVideoRuleCollections addVideoRules:transportType:payload:encodingType:](v8, "addVideoRules:transportType:payload:encodingType:", [MEMORY[0x1E695DF70] arrayWithArray:{-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](self, "getVideoRulesForTransport:payload:encodingType:", 1, v15, 2)}], 1, v15, 2);
          if (!a5)
          {
            -[VCVideoRuleCollections addVideoRules:transportType:payload:encodingType:](v8, "addVideoRules:transportType:payload:encodingType:", [MEMORY[0x1E695DF70] arrayWithArray:{-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](self, "getVideoRulesForTransport:payload:encodingType:", 2, v15, 1)}], 2, v15, 1);
            -[VCVideoRuleCollections addVideoRules:transportType:payload:encodingType:](v8, "addVideoRules:transportType:payload:encodingType:", [MEMORY[0x1E695DF70] arrayWithArray:{-[VCVideoRuleCollections getVideoRulesForTransport:payload:encodingType:](self, "getVideoRulesForTransport:payload:encodingType:", 2, v15, 2)}], 2, v15, 2);
          }
        }
      }

      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v10);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSMutableArray *)self->_supportedPayloads mutableCopyWithZone:a3];
  [v5 setSupportedPayloads:v6];

  v7 = [(NSMutableDictionary *)self->_rules mutableCopyWithZone:a3];
  [v5 setRules:v7];

  return v5;
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)filterRules:(uint64_t)a1 byBitrateRule:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 103;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCVideoRuleCollections: invalid bitrate rule", &v2, 0x1Cu);
}

+ (void)addRulesForU1ToCollection:(int)a1 .cold.1(int a1, Class cls)
{
  class_getName(cls);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

+ (void)newU1VideoRuleCollections
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      class_getName(a1);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }
}

@end