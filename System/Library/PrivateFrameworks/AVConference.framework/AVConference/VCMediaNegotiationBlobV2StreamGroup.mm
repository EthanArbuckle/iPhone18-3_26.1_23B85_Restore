@interface VCMediaNegotiationBlobV2StreamGroup
+ (BOOL)isValidStreamGroupIDFromConfig:(id)config defaultConfig:(id)defaultConfig;
+ (id)defaultsForStreamGroup:(unsigned int)group;
+ (id)defaultsForStreamGroupCustom:(unsigned int)custom;
+ (id)negotiationCipherSuiteAsString:(unsigned int)string;
+ (unsigned)streamGroupFromStreamGroupID:(unsigned int)d;
+ (unsigned)streamGroupIDFromStreamGroup:(unsigned int)group;
+ (void)updateParentStreamIDForGroupConfig:(id)config;
- (BOOL)appendStreamsToStreamGroupConfig:(id)config streamGroupID:(unsigned int)d rtpSampleRates:(id)rates;
- (BOOL)isDefaultPayloadConfigsWithStreamGroupConfig:(id)config;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUsedPayloadConfigAtIndex:(id)index streamGroupConfig:(id)config rtpTimestampRate:(unsigned int *)rate;
- (BOOL)setupPayloadsWithGroupConfig:(id)config;
- (BOOL)setupStreamsWithGroupConfig:(id)config;
- (BOOL)updatePayloadConfigsWithStreamGroupConfig:(id)config rtpSampleRates:(id)rates;
- (VCMediaNegotiationBlobV2StreamGroup)initWithStreamGroupConfig:(id)config;
- (VCMediaNegotiationBlobV2StreamGroup)initWithStreamGroupConfig:(id)config defaultConfig:(id)defaultConfig;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customPayloadConfigStateWithStreamGroupConfig:(id)config;
- (id)description;
- (id)dictionaryRepresentation;
- (int)getStreamGroupConfig:(id *)config;
- (unint64_t)hash;
- (unsigned)codecIndexForType:(int64_t)type inPayloadConfigurations:(id)configurations;
- (void)addPayloads:(id)payloads;
- (void)addStreams:(id)streams;
- (void)appendV2PayloadsToStreamConfig:(id)config streamGroupConfig:(id)groupConfig;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)printWithLogFile:(void *)file prefix:(id)prefix;
- (void)updateDefaultPayloadConfigsWithConfig:(id)config rtpSampleRates:(id)rates;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobV2StreamGroup

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobV2StreamGroup *)self setPayloads:0];
  [(VCMediaNegotiationBlobV2StreamGroup *)self setStreams:0];
  [(VCMediaNegotiationBlobV2StreamGroup *)self setSettingsU1:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2StreamGroup;
  [(VCMediaNegotiationBlobV2StreamGroup *)&v3 dealloc];
}

- (void)addPayloads:(id)payloads
{
  payloads = self->_payloads;
  if (!payloads)
  {
    payloads = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_payloads = payloads;
  }

  [(NSMutableArray *)payloads addObject:payloads];
}

- (void)addStreams:(id)streams
{
  streams = self->_streams;
  if (!streams)
  {
    streams = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_streams = streams;
  }

  [(NSMutableArray *)streams addObject:streams];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2StreamGroup;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2StreamGroup description](&v3, sel_description), -[VCMediaNegotiationBlobV2StreamGroup dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_streamGroup), @"streamGroup"}];
  }

  if ([(NSMutableArray *)self->_payloads count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_payloads, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    payloads = self->_payloads;
    v6 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(payloads);
          }

          [v4 addObject:{objc_msgSend(*(*(&v24 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v24 objects:v23 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"payloads"];
  }

  if ([(NSMutableArray *)self->_streams count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_streams, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    streams = self->_streams;
    v12 = [(NSMutableArray *)streams countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(streams);
          }

          [v10 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)streams countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"streams"];
  }

  settingsU1 = self->_settingsU1;
  if (settingsU1)
  {
    [dictionary setObject:-[VCMediaNegotiationBlobV2SettingsU1 dictionaryRepresentation](settingsU1 forKey:{"dictionaryRepresentation"), @"settingsU1"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x1E69E9840];
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  payloads = self->_payloads;
  v5 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(payloads);
        }

        PBDataWriterWriteSubmessage();
      }

      v6 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  streams = self->_streams;
  v10 = [(NSMutableArray *)streams countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(streams);
        }

        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)streams countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v11);
  }

  if (self->_settingsU1)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 6) = self->_streamGroup;
    *(to + 40) |= 1u;
  }

  if ([(VCMediaNegotiationBlobV2StreamGroup *)self payloadsCount])
  {
    [to clearPayloads];
    payloadsCount = [(VCMediaNegotiationBlobV2StreamGroup *)self payloadsCount];
    if (payloadsCount)
    {
      v6 = payloadsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addPayloads:{-[VCMediaNegotiationBlobV2StreamGroup payloadsAtIndex:](self, "payloadsAtIndex:", i)}];
      }
    }
  }

  if ([(VCMediaNegotiationBlobV2StreamGroup *)self streamsCount])
  {
    [to clearStreams];
    streamsCount = [(VCMediaNegotiationBlobV2StreamGroup *)self streamsCount];
    if (streamsCount)
    {
      v9 = streamsCount;
      for (j = 0; j != v9; ++j)
      {
        [to addStreams:{-[VCMediaNegotiationBlobV2StreamGroup streamsAtIndex:](self, "streamsAtIndex:", j)}];
      }
    }
  }

  if (self->_settingsU1)
  {

    [to setSettingsU1:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_streamGroup;
    *(v5 + 40) |= 1u;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  payloads = self->_payloads;
  v8 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(payloads);
        }

        v12 = [*(*(&v26 + 1) + 8 * i) copyWithZone:zone];
        [v6 addPayloads:v12];
      }

      v9 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  streams = self->_streams;
  v14 = [(NSMutableArray *)streams countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(streams);
        }

        v18 = [*(*(&v21 + 1) + 8 * j) copyWithZone:zone];
        [v6 addStreams:v18];
      }

      v15 = [(NSMutableArray *)streams countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v15);
  }

  v6[2] = [(VCMediaNegotiationBlobV2SettingsU1 *)self->_settingsU1 copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_streamGroup != *(equal + 6))
      {
        goto LABEL_13;
      }
    }

    else if (*(equal + 40))
    {
LABEL_13:
      LOBYTE(v5) = 0;
      return v5;
    }

    payloads = self->_payloads;
    if (!(payloads | *(equal + 1)) || (v5 = [(NSMutableArray *)payloads isEqual:?]) != 0)
    {
      streams = self->_streams;
      if (!(streams | *(equal + 4)) || (v5 = [(NSMutableArray *)streams isEqual:?]) != 0)
      {
        settingsU1 = self->_settingsU1;
        if (settingsU1 | *(equal + 2))
        {

          LOBYTE(v5) = [(VCMediaNegotiationBlobV2SettingsU1 *)settingsU1 isEqual:?];
        }

        else
        {
          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_streamGroup;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_payloads hash]^ v3;
  v5 = [(NSMutableArray *)self->_streams hash];
  return v4 ^ v5 ^ [(VCMediaNegotiationBlobV2SettingsU1 *)self->_settingsU1 hash];
}

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(from + 40))
  {
    self->_streamGroup = *(from + 6);
    *&self->_has |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(from + 1);
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(VCMediaNegotiationBlobV2StreamGroup *)self addPayloads:*(*(&v23 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(from + 4);
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(VCMediaNegotiationBlobV2StreamGroup *)self addStreams:*(*(&v18 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v12);
  }

  settingsU1 = self->_settingsU1;
  v16 = *(from + 2);
  if (settingsU1)
  {
    if (v16)
    {
      [(VCMediaNegotiationBlobV2SettingsU1 *)settingsU1 mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(VCMediaNegotiationBlobV2StreamGroup *)self setSettingsU1:?];
  }
}

- (VCMediaNegotiationBlobV2StreamGroup)initWithStreamGroupConfig:(id)config defaultConfig:(id)defaultConfig
{
  v6 = [(VCMediaNegotiationBlobV2StreamGroup *)self init];
  if (v6)
  {
    if ([VCMediaNegotiationBlobV2StreamGroup isValidStreamGroupIDFromConfig:config defaultConfig:defaultConfig])
    {
      v7 = +[VCMediaNegotiationBlobV2StreamGroup streamGroupFromStreamGroupID:](VCMediaNegotiationBlobV2StreamGroup, "streamGroupFromStreamGroupID:", [config groupID]);
      if (v7)
      {
        v8 = v7;
        if ([(VCMediaNegotiationBlobV2StreamGroup *)v6 streamGroup]!= v7)
        {
          [(VCMediaNegotiationBlobV2StreamGroup *)v6 setStreamGroup:v8];
        }

        if ([config u1Config])
        {
          v9 = -[VCMediaNegotiationBlobV2SettingsU1 initWithU1Config:]([VCMediaNegotiationBlobV2SettingsU1 alloc], "initWithU1Config:", [config u1Config]);
          if (!v9)
          {
            [VCMediaNegotiationBlobV2StreamGroup(Utils) initWithStreamGroupConfig:config defaultConfig:?];
            goto LABEL_17;
          }

          v10 = v9;
          [(VCMediaNegotiationBlobV2StreamGroup *)v6 setSettingsU1:v9];
        }

        if ([(VCMediaNegotiationBlobV2StreamGroup *)v6 setupPayloadsWithGroupConfig:config])
        {
          if ([(VCMediaNegotiationBlobV2StreamGroup *)v6 setupStreamsWithGroupConfig:config])
          {
            return v6;
          }

          [VCMediaNegotiationBlobV2StreamGroup(Utils) initWithStreamGroupConfig:config defaultConfig:?];
        }

        else
        {
          [VCMediaNegotiationBlobV2StreamGroup(Utils) initWithStreamGroupConfig:config defaultConfig:?];
        }
      }

      else
      {
        [VCMediaNegotiationBlobV2StreamGroup(Utils) initWithStreamGroupConfig:config defaultConfig:?];
      }
    }

    else
    {
      [VCMediaNegotiationBlobV2StreamGroup(Utils) initWithStreamGroupConfig:config defaultConfig:?];
    }

LABEL_17:

    return 0;
  }

  return v6;
}

- (VCMediaNegotiationBlobV2StreamGroup)initWithStreamGroupConfig:(id)config
{
  v5 = +[VCMediaNegotiationBlobV2StreamGroup defaultsForStreamGroup:](VCMediaNegotiationBlobV2StreamGroup, "defaultsForStreamGroup:", +[VCMediaNegotiationBlobV2StreamGroup streamGroupFromStreamGroupID:](VCMediaNegotiationBlobV2StreamGroup, "streamGroupFromStreamGroupID:", [config groupID]));
  if (v5)
  {

    return [(VCMediaNegotiationBlobV2StreamGroup *)self initWithStreamGroupConfig:config defaultConfig:v5];
  }

  else
  {

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCMediaNegotiationBlobV2StreamGroup(Utils) *)v7 initWithStreamGroupConfig:config];
      }
    }

    return 0;
  }
}

- (int)getStreamGroupConfig:(id *)config
{
  v24 = *MEMORY[0x1E69E9840];
  if (!config)
  {
    [(VCMediaNegotiationBlobV2StreamGroup(Utils) *)&v17 getStreamGroupConfig:?];
LABEL_20:
    v14 = v18;

    return v14;
  }

  v5 = [VCMediaNegotiationBlobV2StreamGroup defaultsForStreamGroup:[(VCMediaNegotiationBlobV2StreamGroup *)self streamGroup]];
  if (!v5)
  {
    [(VCMediaNegotiationBlobV2StreamGroup(Utils) *)self getStreamGroupConfig:&v18];
    goto LABEL_20;
  }

  v6 = v5;
  v16 = [VCMediaNegotiationBlobV2StreamGroup streamGroupIDFromStreamGroup:[(VCMediaNegotiationBlobV2StreamGroup *)self streamGroup]];
  v7 = v6;
  [v7 setMediaType:{objc_msgSend(v6, "mediaType")}];
  [v7 setMediaSubtype:{objc_msgSend(v6, "mediaSubtype")}];
  [v7 setSyncGroupID:{objc_msgSend(v6, "syncGroupID")}];
  [v7 setU1Config:{-[VCMediaNegotiationBlobV2SettingsU1 u1Config](-[VCMediaNegotiationBlobV2StreamGroup settingsU1](self, "settingsU1"), "u1Config")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  streams = [(VCMediaNegotiationBlobV2StreamGroup *)self streams];
  v9 = [(NSMutableArray *)streams countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(streams);
      }

      if ([*(*(&v20 + 1) + 8 * v12) usesPayloadConfigsWithGroupID:{+[VCMediaNegotiationBlobV2StreamGroup streamGroupIDFromStreamGroup:](VCMediaNegotiationBlobV2StreamGroup, "streamGroupIDFromStreamGroup:", self->_streamGroup)}])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)streams countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    array = [MEMORY[0x1E695DF70] array];
    if ([(VCMediaNegotiationBlobV2StreamGroup *)self updatePayloadConfigsWithStreamGroupConfig:v7 rtpSampleRates:array])
    {
      goto LABEL_13;
    }

    [VCMediaNegotiationBlobV2StreamGroup(Utils) getStreamGroupConfig:];
    goto LABEL_20;
  }

LABEL_11:
  array = [MEMORY[0x1E695DF70] array];
LABEL_13:
  if (![(VCMediaNegotiationBlobV2StreamGroup *)self appendStreamsToStreamGroupConfig:v7 streamGroupID:v16 rtpSampleRates:array])
  {
    [VCMediaNegotiationBlobV2StreamGroup(Utils) getStreamGroupConfig:];
    goto LABEL_20;
  }

  [VCMediaNegotiationBlobV2StreamGroup updateParentStreamIDForGroupConfig:v7];
  v14 = 0;
  *config = v7;
  return v14;
}

- (unsigned)codecIndexForType:(int64_t)type inPayloadConfigurations:(id)configurations
{
  v10 = *MEMORY[0x1E69E9840];
  if (configurations)
  {
    if ([configurations count])
    {
      v6 = 0;
      v7 = 0;
      while ([objc_msgSend(configurations objectAtIndexedSubscript:{v6), "codecType"}] != type)
      {
        v6 = ++v7;
        if ([configurations count] <= v7)
        {
          return -1;
        }
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    [VCMediaNegotiationBlobV2StreamGroup(Utils) codecIndexForType:? inPayloadConfigurations:?];
    return v9;
  }

  return v7;
}

- (void)appendV2PayloadsToStreamConfig:(id)config streamGroupConfig:(id)groupConfig
{
  if (groupConfig)
  {
    if (config)
    {
      if ([groupConfig groupID] == 1835623282)
      {
        v7 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultPayloadConfigurationsForStreamGroupID:1835623282];
        v8 = [(VCMediaNegotiationBlobV2StreamGroup *)self codecIndexForType:20 inPayloadConfigurations:v7];
        if (v8 == 255)
        {
          [VCMediaNegotiationBlobV2StreamGroup(Utils) appendV2PayloadsToStreamConfig:streamGroupConfig:];
        }

        else
        {
          v9 = v8;
          if ([v7 count] > v8)
          {
            v10 = [v7 objectAtIndex:v9];
            if (v10)
            {
              v11 = v10;
              [config addCodec:v9];

              [groupConfig addCodecConfig:v11];
            }
          }
        }
      }
    }

    else
    {
      [VCMediaNegotiationBlobV2StreamGroup(Utils) appendV2PayloadsToStreamConfig:streamGroupConfig:];
    }
  }

  else
  {
    [VCMediaNegotiationBlobV2StreamGroup(Utils) appendV2PayloadsToStreamConfig:streamGroupConfig:];
  }
}

- (BOOL)appendStreamsToStreamGroupConfig:(id)config streamGroupID:(unsigned int)d rtpSampleRates:(id)rates
{
  v71 = *MEMORY[0x1E69E9840];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = [(VCMediaNegotiationBlobV2StreamGroup *)self streams];
  v37 = [(NSMutableArray *)obj countByEnumeratingWithState:&v67 objects:v66 count:16];
  if (v37)
  {
    v6 = 0;
    v36 = *v68;
    configCopy = config;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v68 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v67 + 1) + 8 * v7);
        v8 = [v42 streamConfigWithPayloadConfigs:objc_msgSend(config payloadConfigSampleRates:"codecConfigs") streamGroupID:{rates, d}];
        if (!v8)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v28 = VRTraceErrorLogLevelToCSTR();
            v29 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              streamIndex = [v42 streamIndex];
              v31 = FourccToCStr(d);
              *buf = 136316162;
              v52 = v28;
              v53 = 2080;
              v54 = "[VCMediaNegotiationBlobV2StreamGroup(Utils) appendStreamsToStreamGroupConfig:streamGroupID:rtpSampleRates:]";
              v55 = 1024;
              v56 = 183;
              v57 = 1024;
              v58 = streamIndex;
              v59 = 2080;
              *v60 = v31;
              _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to process the stream config (streamIndex=%d) for streamGroupID=%s. Skipping remaining streams", buf, 0x2Cu);
            }
          }

          goto LABEL_39;
        }

        v9 = v8;
        v39 = v7;
        v40 = v6;
        if ([v8 v2StreamID])
        {
          [(VCMediaNegotiationBlobV2StreamGroup *)self appendV2PayloadsToStreamConfig:v9 streamGroupConfig:config];
        }

        v44 = [MEMORY[0x1E695DFA8] set];
        v10 = [MEMORY[0x1E695DFA8] set];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        codecs = [v9 codecs];
        v11 = [codecs countByEnumeratingWithState:&v62 objects:v61 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v63;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v63 != v13)
              {
                objc_enumerationMutation(codecs);
              }

              v15 = *(*(&v62 + 1) + 8 * i);
              v16 = [objc_msgSend(config "codecConfigs")];
              if ([v16 cipherSuite] < 4)
              {
                v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v16, "cipherSuite")}];
                v22 = v44;
              }

              else
              {
                if (VRTraceGetErrorLogLevelForModule() >= 5)
                {
                  v17 = VRTraceErrorLogLevelToCSTR();
                  v18 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    cipherSuite = [v16 cipherSuite];
                    streamIndex2 = [v42 streamIndex];
                    v21 = FourccToCStr(d);
                    *buf = 136316418;
                    v52 = v17;
                    v53 = 2080;
                    v54 = "[VCMediaNegotiationBlobV2StreamGroup(Utils) appendStreamsToStreamGroupConfig:streamGroupID:rtpSampleRates:]";
                    v55 = 1024;
                    v56 = 194;
                    v57 = 1024;
                    v58 = cipherSuite;
                    v59 = 1024;
                    *v60 = streamIndex2;
                    config = configCopy;
                    *&v60[4] = 2080;
                    *&v60[6] = v21;
                    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown cipherSuite=%d (streamIndex=%d) for streamGroupID=%s. Skipping remaining streams", buf, 0x32u);
                  }
                }

                v22 = v10;
                v23 = v15;
              }

              [v22 addObject:v23];
            }

            v12 = [codecs countByEnumeratingWithState:&v62 objects:v61 count:16];
          }

          while (v12);
        }

        v6 = v40;
        if (v40)
        {
          [v40 intersectSet:v44];
        }

        else
        {
          v6 = v44;
        }

        if (![v6 count])
        {
          goto LABEL_39;
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v24 = [v10 countByEnumeratingWithState:&v47 objects:v46 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v48;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v48 != v26)
              {
                objc_enumerationMutation(v10);
              }

              [v9 removeCodec:{objc_msgSend(*(*(&v47 + 1) + 8 * j), "unsignedIntValue")}];
            }

            v25 = [v10 countByEnumeratingWithState:&v47 objects:v46 count:16];
          }

          while (v25);
        }

        config = configCopy;
        [configCopy addStreamConfig:v9];
        v7 = v39 + 1;
      }

      while (v39 + 1 != v37);
      v37 = [(NSMutableArray *)obj countByEnumeratingWithState:&v67 objects:v66 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }
  }

LABEL_39:
  v32 = [objc_msgSend(config "streamConfigs")];
  if (!v32)
  {
    [VCMediaNegotiationBlobV2StreamGroup(Utils) appendStreamsToStreamGroupConfig:d streamGroupID:? rtpSampleRates:?];
  }

  return v32 != 0;
}

- (void)printWithLogFile:(void *)file prefix:(id)prefix
{
  v50 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v6 = [(VCMediaNegotiationBlobV2StreamGroup *)self getStreamGroupConfig:&v31];
  prefixCopy = prefix;
  prefix = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@Stream Group: ", objc_msgSend(-[VCMediaNegotiationBlobV2StreamGroup data](self, "data"), "length"), prefix];
  if (v31)
  {
    v9 = FourccToCStr([v31 groupID]);
    v10 = FourccToCStr([v31 mediaType]);
    [prefix appendFormat:@"groupID='%s' mediaType='%s' subtype='%s'", v9, v10, FourccToCStr(objc_msgSend(v31, "mediaSubtype"))];
    if ([v31 syncGroupID])
    {
      [prefix appendFormat:@" syncGroupID='%s'", FourccToCStr(objc_msgSend(v31, "syncGroupID"))];
    }

    [prefix appendFormat:@" encodeDecodeFeatures=%@", objc_msgSend(objc_msgSend(v31, "u1Config"), "videoFeatureStringsFixedPosition")];
  }

  else
  {
    [prefix appendFormat:@"Skipping (result=%x)", v6];
  }

  uTF8String = [prefix UTF8String];
  VRLogfilePrintWithTimestamp(file, "%s\n", v12, v13, v14, v15, v16, v17, uTF8String);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v43 = v18;
      v44 = 2080;
      v45 = "[VCMediaNegotiationBlobV2StreamGroup(Utils) printWithLogFile:prefix:]";
      v46 = 1024;
      v47 = 236;
      v48 = 2112;
      v49 = prefix;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }

  if (v31)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    streamConfigs = [v31 streamConfigs];
    v21 = [streamConfigs countByEnumeratingWithState:&v38 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(streamConfigs);
          }

          +[VCMediaNegotiationBlobV2StreamGroupStream printWithLogFile:prefix:streamConfig:](VCMediaNegotiationBlobV2StreamGroupStream, "printWithLogFile:prefix:streamConfig:", file, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  ", prefixCopy], *(*(&v38 + 1) + 8 * i));
        }

        v22 = [streamConfigs countByEnumeratingWithState:&v38 objects:v37 count:16];
      }

      while (v22);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    codecConfigs = [v31 codecConfigs];
    v26 = [codecConfigs countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(codecConfigs);
          }

          +[VCMediaNegotiationBlobV2StreamGroupPayload printWithLogFile:prefix:payloadConfig:](VCMediaNegotiationBlobV2StreamGroupPayload, "printWithLogFile:prefix:payloadConfig:", file, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  ", prefixCopy], *(*(&v33 + 1) + 8 * j));
        }

        v27 = [codecConfigs countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v27);
    }
  }
}

+ (id)defaultsForStreamGroup:(unsigned int)group
{
  switch(group)
  {
    case 0u:
      return 0;
    case 1u:
      v3 = 1667329381;
      v4 = 875704438;
      v5 = 1986618469;
      goto LABEL_22;
    case 2u:
      v3 = 1835623282;
      goto LABEL_27;
    case 3u:
      v3 = 1935897189;
      v5 = 1986618469;
      v4 = 875704422;
      v6 = 1937339233;
      goto LABEL_28;
    case 4u:
      v3 = 1937339233;
      v5 = 1936684398;
      v4 = 1819304813;
      goto LABEL_22;
    case 5u:
      v3 = 1667329399;
      v4 = 875704438;
      v6 = 1835623287;
      v5 = 1986618469;
      goto LABEL_20;
    case 6u:
      v3 = 1835623287;
      v5 = 1936684398;
      v4 = 1819304813;
      v6 = 0;
LABEL_20:
      v8 = 1;
      goto LABEL_29;
    case 7u:
      v3 = 1667330164;
      v5 = 1835365473;
      v4 = 1667330164;
      goto LABEL_22;
    case 0xBu:
      v3 = 1936290409;
LABEL_27:
      v5 = 1936684398;
      v4 = 1819304813;
      v6 = 0;
      goto LABEL_28;
    case 0xCu:
      if (+[VCHardwareSettings deviceClass]!= 8 || VCFeatureFlagManager_PersonaV2Enabled())
      {
        return 0;
      }

      v3 = 1718909044;
      v5 = 1986618469;
      v4 = 875704422;
      goto LABEL_22;
    case 0xEu:
      if (+[VCHardwareSettings deviceClass]!= 8 || VCFeatureFlagManager_PersonaV2Enabled())
      {
        return 0;
      }

      goto LABEL_9;
    case 0xFu:
      if (+[VCHardwareSettings deviceClass]!= 8 || !VCFeatureFlagManager_PersonaV2Enabled())
      {
        return 0;
      }

      v3 = 1718909044;
      v5 = 1986618469;
      v4 = 1278226736;
      goto LABEL_22;
    case 0x10u:
      if (+[VCHardwareSettings deviceClass]!= 8 || !VCFeatureFlagManager_PersonaV2Enabled())
      {
        return 0;
      }

LABEL_9:
      v3 = 1650745716;
      v5 = 1835365473;
      v4 = 1717657974;
LABEL_22:
      v6 = 1835623282;
LABEL_28:
      v8 = 3;
LABEL_29:

      return [VCMediaNegotiatorStreamGroupConfiguration streamGroupConfigWithGroupID:v3 mediaType:v5 subtype:v4 syncGroupID:v6 cipherSuite:v8];
    default:

      return [VCMediaNegotiationBlobV2StreamGroup defaultsForStreamGroupCustom:?];
  }
}

+ (id)defaultsForStreamGroupCustom:(unsigned int)custom
{
  if (custom <= 1684108340)
  {
    if (custom > 1684108338)
    {
      if (custom == 1684108339)
      {
        v4 = 1684108339;
        v6 = 1835365473;
        v5 = 1751212406;
      }

      else
      {
        v4 = 1684108340;
        v6 = 1835365473;
        v5 = 1651466614;
      }
    }

    else
    {
      if (custom == 1684108337)
      {
        v5 = 1751474550;
        v4 = 1684108337;
      }

      else
      {
        if (custom != 1684108338)
        {
          goto LABEL_26;
        }

        v4 = 1684108338;
        v5 = 1717657974;
      }

      v6 = 1835365473;
    }

LABEL_23:

    return [VCMediaNegotiatorStreamGroupConfiguration streamGroupConfigWithGroupID:v4 mediaType:v6 subtype:v5 syncGroupID:1835623282 cipherSuite:3];
  }

  if (custom > 1986618417)
  {
    switch(custom)
    {
      case 0x76696432u:
        v4 = 1986618418;
        goto LABEL_22;
      case 0x76696433u:
        v4 = 1986618419;
        goto LABEL_22;
      case 0x76696434u:
        v4 = 1986618420;
LABEL_22:
        v6 = 1986618469;
        v5 = 875704422;
        goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (custom == 1684108341)
  {
    v4 = 1684108341;
    v6 = 1835365473;
    v5 = 1701142902;
    goto LABEL_23;
  }

  if (custom == 1986618417)
  {
    v4 = 1986618417;
    goto LABEL_22;
  }

LABEL_26:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCMediaNegotiationBlobV2StreamGroup(Utils) *)v8 defaultsForStreamGroupCustom:custom];
    }
  }

  return 0;
}

- (BOOL)isDefaultPayloadConfigsWithStreamGroupConfig:(id)config
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  streamConfigs = [config streamConfigs];
  v5 = [streamConfigs countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(streamConfigs);
      }

      v9 = +[VCMediaNegotiationBlobV2StreamGroupStream isDefaultPayloadConfigsWithStreamConfig:payloadConfigs:streamGroupID:](VCMediaNegotiationBlobV2StreamGroupStream, "isDefaultPayloadConfigsWithStreamConfig:payloadConfigs:streamGroupID:", *(*(&v12 + 1) + 8 * v8), [config codecConfigs], objc_msgSend(config, "groupID"));
      if (!v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [streamConfigs countByEnumeratingWithState:&v12 objects:v11 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (id)customPayloadConfigStateWithStreamGroupConfig:(id)config
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(config, "codecConfigs"), "count")}];
  if ([objc_msgSend(config "codecConfigs")])
  {
    v5 = 1;
    v6 = MEMORY[0x1E695E110];
    do
    {
      [v4 addObject:v6];
    }

    while ([objc_msgSend(config "codecConfigs")] > v5++);
  }

  return v4;
}

- (BOOL)setupStreamsWithGroupConfig:(id)config
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [config streamConfigs];
  v5 = [obj countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = -[VCMediaNegotiationBlobV2StreamGroupStream initWithStreamConfig:payloadConfigs:streamGroupID:]([VCMediaNegotiationBlobV2StreamGroupStream alloc], "initWithStreamConfig:payloadConfigs:streamGroupID:", *(*(&v15 + 1) + 8 * v8), [config codecConfigs], objc_msgSend(config, "groupID"));
        if (!v9)
        {
          [VCMediaNegotiationBlobV2StreamGroup(Utils) setupStreamsWithGroupConfig:];
          return v13;
        }

        v10 = v9;
        [(VCMediaNegotiationBlobV2StreamGroup *)self addStreams:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (BOOL)isUsedPayloadConfigAtIndex:(id)index streamGroupConfig:(id)config rtpTimestampRate:(unsigned int *)rate
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  streamConfigs = [config streamConfigs];
  v8 = [streamConfigs countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(streamConfigs);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([objc_msgSend(v12 "codecs")])
        {
          *rate = [v12 rtpTimestampRate];
          LOBYTE(v8) = 1;
          return v8;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [streamConfigs countByEnumeratingWithState:&v15 objects:v14 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v8;
}

- (BOOL)setupPayloadsWithGroupConfig:(id)config
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [config codecConfigs];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      if (!-[VCMediaNegotiationBlobV2StreamGroup isUsedPayloadConfigAtIndex:streamGroupConfig:rtpTimestampRate:](self, "isUsedPayloadConfigAtIndex:streamGroupConfig:rtpTimestampRate:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7], config, &v16))
      {
        break;
      }

      v11 = [VCMediaNegotiationBlobV2StreamGroupPayload alloc];
      v12 = -[VCMediaNegotiationBlobV2StreamGroupPayload initWithPayloadConfig:index:rtpSampleRate:streamGroupID:](v11, "initWithPayloadConfig:index:rtpSampleRate:streamGroupID:", v10, v7, v16, [config groupID]);
      if (!v12)
      {
        [VCMediaNegotiationBlobV2StreamGroup(Utils) setupPayloadsWithGroupConfig:];
        return v17;
      }

      v13 = v12;
      [(VCMediaNegotiationBlobV2StreamGroup *)self addPayloads:v12];

      v7 = (v7 + 1);
      if (v6 == ++v9)
      {
        v6 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }

    [VCMediaNegotiationBlobV2StreamGroup(Utils) setupPayloadsWithGroupConfig:];
    return v17;
  }

  return 1;
}

- (BOOL)updatePayloadConfigsWithStreamGroupConfig:(id)config rtpSampleRates:(id)rates
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = [VCMediaNegotiationBlobV2StreamGroup streamGroupIDFromStreamGroup:self->_streamGroup];
  v21 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultRTPSampleRateForStreamGroupID:v6];
  v22 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultPayloadConfigurationsForStreamGroupID:v6];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  payloads = [(VCMediaNegotiationBlobV2StreamGroup *)self payloads];
  v8 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(payloads);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v13 payloadConfigurationWithStreamGroupID:v6 index:v10];
        if (!v14)
        {
          [VCMediaNegotiationBlobV2StreamGroup(Utils) updatePayloadConfigsWithStreamGroupConfig:rtpSampleRates:];
          return v24;
        }

        v15 = v14;
        v16 = [v13 rtpSampleRateWithStreamGroupID:v6];
        [rates addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v16)}];
        [config addCodecConfig:v15];
        v10 = (v10 + 1);
      }

      v9 = [(NSMutableArray *)payloads countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if ([v22 count] > v10)
  {
    v17 = v10;
    v18 = v10 + 1;
    do
    {
      if ([objc_msgSend(v22 objectAtIndexedSubscript:{v17), "codecType"}] != 102 || +[VCHardwareSettings supportsHEVCEncoding](VCHardwareSettings, "supportsHEVCEncoding"))
      {
        [rates addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v21)}];
        [config addCodecConfig:{objc_msgSend(v22, "objectAtIndex:", v17)}];
      }

      v17 = v18;
    }

    while ([v22 count] > v18++);
  }

  return 1;
}

- (void)updateDefaultPayloadConfigsWithConfig:(id)config rtpSampleRates:(id)rates
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultPayloadConfigurationsForStreamGroupID:[VCMediaNegotiationBlobV2StreamGroup streamGroupIDFromStreamGroup:self->_streamGroup]];
  v8 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultRTPSampleRateForStreamGroupID:[VCMediaNegotiationBlobV2StreamGroup streamGroupIDFromStreamGroup:self->_streamGroup]];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [config addCodecConfig:*(*(&v14 + 1) + 8 * v12)];
        [rates addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v8)}];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v10);
  }
}

+ (void)updateParentStreamIDForGroupConfig:(id)config
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  streamConfigs = [config streamConfigs];
  v4 = [streamConfigs countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    streamID = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(streamConfigs);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isTemporalStream])
        {
          if (streamID)
          {
            [v9 setParentStreamID:streamID];
          }

          streamID = [v9 streamID];
        }

        else
        {
          streamID = 0;
        }
      }

      v5 = [streamConfigs countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }
}

+ (id)negotiationCipherSuiteAsString:(unsigned int)string
{
  if (string >= 4)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", *&string];
  }

  else
  {
    return off_1E85F84A8[string];
  }
}

+ (BOOL)isValidStreamGroupIDFromConfig:(id)config defaultConfig:(id)defaultConfig
{
  if (!defaultConfig)
  {
    return 0;
  }

  mediaType = [config mediaType];
  if (mediaType != [defaultConfig mediaType])
  {
    return 0;
  }

  mediaSubtype = [config mediaSubtype];
  if (mediaSubtype != [defaultConfig mediaSubtype])
  {
    return 0;
  }

  syncGroupID = [config syncGroupID];
  return syncGroupID == [defaultConfig syncGroupID];
}

+ (unsigned)streamGroupFromStreamGroupID:(unsigned int)d
{
  result = d;
  if (d > 1835623281)
  {
    if (d > 1936290408)
    {
      if (d - 1986618417 < 4)
      {
        return result;
      }

      if (d == 1936290409)
      {
        return 11;
      }

      if (d == 1937339233)
      {
        return 4;
      }
    }

    else
    {
      switch(d)
      {
        case 0x6D696372u:
          return 2;
        case 0x6D696377u:
          return 6;
        case 0x73637265u:
          return 3;
      }
    }

    return 0;
  }

  if (d > 1667330163)
  {
    if (d - 1684108337 < 5)
    {
      return result;
    }

    if (d == 1667330164)
    {
      return 7;
    }

    if (d == 1718909044)
    {
      v4 = !VCFeatureFlagManager_PersonaV2Enabled();
      v5 = 12;
      v6 = 15;
      goto LABEL_24;
    }

    return 0;
  }

  if (d != 1650745716)
  {
    if (d == 1667329381)
    {
      return 1;
    }

    if (d == 1667329399)
    {
      return 5;
    }

    return 0;
  }

  v4 = !VCFeatureFlagManager_PersonaV2Enabled();
  v5 = 14;
  v6 = 16;
LABEL_24:
  if (v4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

+ (unsigned)streamGroupIDFromStreamGroup:(unsigned int)group
{
  if (group <= 14)
  {
    result = 1667329381;
    if (group <= 5)
    {
      if (group <= 2)
      {
        if (group != 1)
        {
          if (group == 2)
          {
            return 1835623282;
          }

          return 0;
        }
      }

      else if (group == 3)
      {
        return 1935897189;
      }

      else if (group == 4)
      {
        return 1937339233;
      }

      else
      {
        return 1667329399;
      }

      return result;
    }

    if (group <= 10)
    {
      if (group == 6)
      {
        return 1835623287;
      }

      if (group == 7)
      {
        return 1667330164;
      }

      return 0;
    }

    if (group == 11)
    {
      return 1936290409;
    }

    if (group != 12)
    {
      if (group == 14)
      {
        return 1650745716;
      }

      return 0;
    }

    return 1718909044;
  }

  if (group <= 1684108339)
  {
    if (group > 1684108336)
    {
      if (group != 1684108337 && group != 1684108338)
      {
        v5 = 1684108339;
        goto LABEL_25;
      }

      return group;
    }

    if (group != 15)
    {
      if (group == 16)
      {
        return 1650745716;
      }

      return 0;
    }

    return 1718909044;
  }

  if (group > 1986618417)
  {
    if (group != 1986618418 && group != 1986618419)
    {
      v3 = 25652;
      goto LABEL_24;
    }

    return group;
  }

  if (group == 1684108340 || group == 1684108341)
  {
    return group;
  }

  v3 = 25649;
LABEL_24:
  v5 = v3 | 0x76690000;
LABEL_25:
  result = group;
  if (group != v5)
  {
    return 0;
  }

  return result;
}

@end