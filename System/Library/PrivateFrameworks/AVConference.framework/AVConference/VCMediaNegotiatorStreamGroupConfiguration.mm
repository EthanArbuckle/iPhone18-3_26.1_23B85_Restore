@interface VCMediaNegotiatorStreamGroupConfiguration
+ (id)streamGroupConfigWithGroupID:(unsigned int)a3 mediaType:(unsigned int)a4 subtype:(unsigned int)a5 syncGroupID:(unsigned int)a6 cipherSuite:(unsigned int)a7;
- (BOOL)isEqual:(id)a3;
- (VCMediaNegotiatorStreamGroupConfiguration)init;
- (VCMediaNegotiatorStreamGroupConfiguration)initWithGroupID:(unsigned int)a3 mediaType:(unsigned int)a4 subtype:(unsigned int)a5 syncGroupID:(unsigned int)a6;
- (VCMediaNegotiatorStreamGroupConfiguration)initWithGroupID:(unsigned int)a3 mediaType:(unsigned int)a4 subtype:(unsigned int)a5 syncGroupID:(unsigned int)a6 cipherSuite:(unsigned int)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)indexOfCodecConfig:(id)a3;
- (void)addCodecConfig:(id)a3;
- (void)addStreamConfig:(id)a3;
- (void)dealloc;
@end

@implementation VCMediaNegotiatorStreamGroupConfiguration

- (VCMediaNegotiatorStreamGroupConfiguration)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCMediaNegotiatorStreamGroupConfiguration;
  v2 = [(VCMediaNegotiatorStreamGroupConfiguration *)&v4 init];
  if (v2)
  {
    v2->_streamConfigs = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v2->_codecConfigs = objc_alloc_init(MEMORY[0x1E695DFA0]);
  }

  return v2;
}

- (VCMediaNegotiatorStreamGroupConfiguration)initWithGroupID:(unsigned int)a3 mediaType:(unsigned int)a4 subtype:(unsigned int)a5 syncGroupID:(unsigned int)a6
{
  result = [(VCMediaNegotiatorStreamGroupConfiguration *)self init];
  if (result)
  {
    result->_groupID = a3;
    result->_mediaType = a4;
    result->_mediaSubtype = a5;
    result->_syncGroupID = a6;
  }

  return result;
}

- (VCMediaNegotiatorStreamGroupConfiguration)initWithGroupID:(unsigned int)a3 mediaType:(unsigned int)a4 subtype:(unsigned int)a5 syncGroupID:(unsigned int)a6 cipherSuite:(unsigned int)a7
{
  result = [(VCMediaNegotiatorStreamGroupConfiguration *)self initWithGroupID:*&a3 mediaType:*&a4 subtype:*&a5 syncGroupID:*&a6];
  if (result)
  {
    result->_cipherSuite = a7;
  }

  return result;
}

+ (id)streamGroupConfigWithGroupID:(unsigned int)a3 mediaType:(unsigned int)a4 subtype:(unsigned int)a5 syncGroupID:(unsigned int)a6 cipherSuite:(unsigned int)a7
{
  v7 = [[VCMediaNegotiatorStreamGroupConfiguration alloc] initWithGroupID:*&a3 mediaType:*&a4 subtype:*&a5 syncGroupID:*&a6 cipherSuite:*&a7];

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorStreamGroupConfiguration;
  [(VCMediaNegotiatorStreamGroupConfiguration *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = FourccToCStr(self->_groupID);
  v5 = FourccToCStr(self->_mediaType);
  return [v3 stringWithFormat:@"_groupID=%s, _mediaType=%s, _syncGroupID=%s, _cipherSuite=%d streamConfigs=%@", v4, v5, FourccToCStr(self->_syncGroupID), self->_cipherSuite, self->_streamConfigs];
}

- (void)addStreamConfig:(id)a3
{
  if (a3 && ([(NSMutableOrderedSet *)self->_streamConfigs containsObject:?]& 1) == 0)
  {
    streamConfigs = self->_streamConfigs;

    [(NSMutableOrderedSet *)streamConfigs addObject:a3];
  }
}

- (void)addCodecConfig:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(NSMutableOrderedSet *)self->_codecConfigs array];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([a3 isEqual:*(*(&v11 + 1) + 8 * v9)])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      [(NSMutableOrderedSet *)self->_codecConfigs addObject:a3];
    }
  }
}

- (unint64_t)indexOfCodecConfig:(id)a3
{
  if (![(NSMutableOrderedSet *)self->_codecConfigs count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = 0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if ([a3 isEqual:{-[NSMutableOrderedSet objectAtIndexedSubscript:](self->_codecConfigs, "objectAtIndexedSubscript:", v5)}])
    {
      v6 = v5;
    }

    ++v5;
  }

  while (v5 < [(NSMutableOrderedSet *)self->_codecConfigs count]);
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = VCMediaNegotiatorStreamGroupConfiguration;
  if (![(VCMediaNegotiatorStreamGroupConfiguration *)&v11 isEqual:a3])
  {
    return 0;
  }

  if ([a3 mediaType] != self->_mediaType)
  {
    return 0;
  }

  if ([a3 mediaSubtype] != self->_mediaSubtype)
  {
    return 0;
  }

  v5 = [objc_msgSend(a3 "streamConfigs")];
  if (v5 != [(NSMutableOrderedSet *)self->_streamConfigs count])
  {
    return 0;
  }

  v6 = [objc_msgSend(a3 "codecConfigs")];
  if (v6 != [(NSMutableOrderedSet *)self->_codecConfigs count])
  {
    return 0;
  }

  if (![a3 u1Config])
  {
    if (!self->_u1Config)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (([objc_msgSend(a3 "u1Config")] & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  if ([(NSMutableOrderedSet *)self->_streamConfigs count])
  {
    v9 = 0;
    while (([objc_msgSend(objc_msgSend(a3 "streamConfigs")] & 1) != 0)
    {
      if (++v9 >= [(NSMutableOrderedSet *)self->_streamConfigs count])
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  if (![(NSMutableOrderedSet *)self->_codecConfigs count])
  {
    return 1;
  }

  v10 = 0;
  do
  {
    v7 = [objc_msgSend(objc_msgSend(a3 "codecConfigs")];
    if ((v7 & 1) == 0)
    {
      break;
    }

    ++v10;
  }

  while (v10 < [(NSMutableOrderedSet *)self->_codecConfigs count]);
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithGroupID:mediaType:subtype:syncGroupID:", self->_groupID, self->_mediaType, self->_mediaSubtype, self->_syncGroupID}];
  if (v5)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    streamConfigs = self->_streamConfigs;
    v7 = [(NSMutableOrderedSet *)streamConfigs countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(streamConfigs);
          }

          v11 = [*(*(&v27 + 1) + 8 * i) copyWithZone:a3];
          if (v11)
          {
            v12 = v11;
            [v5 addStreamConfig:v11];
          }
        }

        v8 = [(NSMutableOrderedSet *)streamConfigs countByEnumeratingWithState:&v27 objects:v26 count:16];
      }

      while (v8);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    codecConfigs = self->_codecConfigs;
    v14 = [(NSMutableOrderedSet *)codecConfigs countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(codecConfigs);
          }

          v18 = [*(*(&v22 + 1) + 8 * j) copyWithZone:a3];
          if (v18)
          {
            v19 = v18;
            [v5 addCodecConfig:v18];
          }
        }

        v15 = [(NSMutableOrderedSet *)codecConfigs countByEnumeratingWithState:&v22 objects:v21 count:16];
      }

      while (v15);
    }
  }

  return v5;
}

@end