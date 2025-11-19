@interface VCMediaNegotiationBlobV2StreamGroup
+ (BOOL)isValidStreamGroupIDFromConfig:(id)a3 defaultConfig:(id)a4;
+ (id)defaultsForStreamGroup:(unsigned int)a3;
+ (id)defaultsForStreamGroupCustom:(unsigned int)a3;
+ (id)negotiationCipherSuiteAsString:(unsigned int)a3;
+ (unsigned)streamGroupFromStreamGroupID:(unsigned int)a3;
+ (unsigned)streamGroupIDFromStreamGroup:(unsigned int)a3;
+ (void)updateParentStreamIDForGroupConfig:(id)a3;
- (BOOL)appendStreamsToStreamGroupConfig:(id)a3 streamGroupID:(unsigned int)a4 rtpSampleRates:(id)a5;
- (BOOL)isDefaultPayloadConfigsWithStreamGroupConfig:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUsedPayloadConfigAtIndex:(id)a3 streamGroupConfig:(id)a4 rtpTimestampRate:(unsigned int *)a5;
- (BOOL)setupPayloadsWithGroupConfig:(id)a3;
- (BOOL)setupStreamsWithGroupConfig:(id)a3;
- (BOOL)updatePayloadConfigsWithStreamGroupConfig:(id)a3 rtpSampleRates:(id)a4;
- (VCMediaNegotiationBlobV2StreamGroup)initWithStreamGroupConfig:(id)a3;
- (VCMediaNegotiationBlobV2StreamGroup)initWithStreamGroupConfig:(id)a3 defaultConfig:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customPayloadConfigStateWithStreamGroupConfig:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)getStreamGroupConfig:(id *)a3;
- (unint64_t)hash;
- (unsigned)codecIndexForType:(int64_t)a3 inPayloadConfigurations:(id)a4;
- (void)addPayloads:(id)a3;
- (void)addStreams:(id)a3;
- (void)appendV2PayloadsToStreamConfig:(id)a3 streamGroupConfig:(id)a4;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)printWithLogFile:(void *)a3 prefix:(id)a4;
- (void)updateDefaultPayloadConfigsWithConfig:(id)a3 rtpSampleRates:(id)a4;
- (void)writeTo:(id)a3;
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

- (void)addPayloads:(id)a3
{
  payloads = self->_payloads;
  if (!payloads)
  {
    payloads = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_payloads = payloads;
  }

  [(NSMutableArray *)payloads addObject:a3];
}

- (void)addStreams:(id)a3
{
  streams = self->_streams;
  if (!streams)
  {
    streams = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_streams = streams;
  }

  [(NSMutableArray *)streams addObject:a3];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_streamGroup), @"streamGroup"}];
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

    [v3 setObject:v4 forKey:@"payloads"];
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

    [v3 setObject:v10 forKey:@"streams"];
  }

  settingsU1 = self->_settingsU1;
  if (settingsU1)
  {
    [v3 setObject:-[VCMediaNegotiationBlobV2SettingsU1 dictionaryRepresentation](settingsU1 forKey:{"dictionaryRepresentation"), @"settingsU1"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 6) = self->_streamGroup;
    *(a3 + 40) |= 1u;
  }

  if ([(VCMediaNegotiationBlobV2StreamGroup *)self payloadsCount])
  {
    [a3 clearPayloads];
    v5 = [(VCMediaNegotiationBlobV2StreamGroup *)self payloadsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addPayloads:{-[VCMediaNegotiationBlobV2StreamGroup payloadsAtIndex:](self, "payloadsAtIndex:", i)}];
      }
    }
  }

  if ([(VCMediaNegotiationBlobV2StreamGroup *)self streamsCount])
  {
    [a3 clearStreams];
    v8 = [(VCMediaNegotiationBlobV2StreamGroup *)self streamsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addStreams:{-[VCMediaNegotiationBlobV2StreamGroup streamsAtIndex:](self, "streamsAtIndex:", j)}];
      }
    }
  }

  if (self->_settingsU1)
  {

    [a3 setSettingsU1:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v12 = [*(*(&v26 + 1) + 8 * i) copyWithZone:a3];
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

        v18 = [*(*(&v21 + 1) + 8 * j) copyWithZone:a3];
        [v6 addStreams:v18];
      }

      v15 = [(NSMutableArray *)streams countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v15);
  }

  v6[2] = [(VCMediaNegotiationBlobV2SettingsU1 *)self->_settingsU1 copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_streamGroup != *(a3 + 6))
      {
        goto LABEL_13;
      }
    }

    else if (*(a3 + 40))
    {
LABEL_13:
      LOBYTE(v5) = 0;
      return v5;
    }

    payloads = self->_payloads;
    if (!(payloads | *(a3 + 1)) || (v5 = [(NSMutableArray *)payloads isEqual:?]) != 0)
    {
      streams = self->_streams;
      if (!(streams | *(a3 + 4)) || (v5 = [(NSMutableArray *)streams isEqual:?]) != 0)
      {
        settingsU1 = self->_settingsU1;
        if (settingsU1 | *(a3 + 2))
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

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a3 + 40))
  {
    self->_streamGroup = *(a3 + 6);
    *&self->_has |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(a3 + 1);
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
  v10 = *(a3 + 4);
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
  v16 = *(a3 + 2);
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

- (VCMediaNegotiationBlobV2StreamGroup)initWithStreamGroupConfig:(id)a3 defaultConfig:(id)a4
{
  v6 = [(VCMediaNegotiationBlobV2StreamGroup *)self init];
  if (v6)
  {
    if ([VCMediaNegotiationBlobV2StreamGroup isValidStreamGroupIDFromConfig:a3 defaultConfig:a4])
    {
      v7 = +[VCMediaNegotiationBlobV2StreamGroup streamGroupFromStreamGroupID:](VCMediaNegotiationBlobV2StreamGroup, "streamGroupFromStreamGroupID:", [a3 groupID]);
      if (v7)
      {
        v8 = v7;
        if ([(VCMediaNegotiationBlobV2StreamGroup *)v6 streamGroup]!= v7)
        {
          [(VCMediaNegotiationBlobV2StreamGroup *)v6 setStreamGroup:v8];
        }

        if ([a3 u1Config])
        {
          v9 = -[VCMediaNegotiationBlobV2SettingsU1 initWithU1Config:]([VCMediaNegotiationBlobV2SettingsU1 alloc], "initWithU1Config:", [a3 u1Config]);
          if (!v9)
          {
            [VCMediaNegotiationBlobV2StreamGroup(Utils) initWithStreamGroupConfig:a3 defaultConfig:?];
            goto LABEL_17;
          }

          v10 = v9;
          [(VCMediaNegotiationBlobV2StreamGroup *)v6 setSettingsU1:v9];
        }

        if ([(VCMediaNegotiationBlobV2StreamGroup *)v6 setupPayloadsWithGroupConfig:a3])
        {
          if ([(VCMediaNegotiationBlobV2StreamGroup *)v6 setupStreamsWithGroupConfig:a3])
          {
            return v6;
          }

          [VCMediaNegotiationBlobV2StreamGroup(Utils) initWithStreamGroupConfig:a3 defaultConfig:?];
        }

        else
        {
          [VCMediaNegotiationBlobV2StreamGroup(Utils) initWithStreamGroupConfig:a3 defaultConfig:?];
        }
      }

      else
      {
        [VCMediaNegotiationBlobV2StreamGroup(Utils) initWithStreamGroupConfig:a3 defaultConfig:?];
      }
    }

    else
    {
      [VCMediaNegotiationBlobV2StreamGroup(Utils) initWithStreamGroupConfig:a3 defaultConfig:?];
    }

LABEL_17:

    return 0;
  }

  return v6;
}

- (VCMediaNegotiationBlobV2StreamGroup)initWithStreamGroupConfig:(id)a3
{
  v5 = +[VCMediaNegotiationBlobV2StreamGroup defaultsForStreamGroup:](VCMediaNegotiationBlobV2StreamGroup, "defaultsForStreamGroup:", +[VCMediaNegotiationBlobV2StreamGroup streamGroupFromStreamGroupID:](VCMediaNegotiationBlobV2StreamGroup, "streamGroupFromStreamGroupID:", [a3 groupID]));
  if (v5)
  {

    return [(VCMediaNegotiationBlobV2StreamGroup *)self initWithStreamGroupConfig:a3 defaultConfig:v5];
  }

  else
  {

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCMediaNegotiationBlobV2StreamGroup(Utils) *)v7 initWithStreamGroupConfig:a3];
      }
    }

    return 0;
  }
}

- (int)getStreamGroupConfig:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
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
  v8 = [(VCMediaNegotiationBlobV2StreamGroup *)self streams];
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
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
        objc_enumerationMutation(v8);
      }

      if ([*(*(&v20 + 1) + 8 * v12) usesPayloadConfigsWithGroupID:{+[VCMediaNegotiationBlobV2StreamGroup streamGroupIDFromStreamGroup:](VCMediaNegotiationBlobV2StreamGroup, "streamGroupIDFromStreamGroup:", self->_streamGroup)}])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v13 = [MEMORY[0x1E695DF70] array];
    if ([(VCMediaNegotiationBlobV2StreamGroup *)self updatePayloadConfigsWithStreamGroupConfig:v7 rtpSampleRates:v13])
    {
      goto LABEL_13;
    }

    [VCMediaNegotiationBlobV2StreamGroup(Utils) getStreamGroupConfig:];
    goto LABEL_20;
  }

LABEL_11:
  v13 = [MEMORY[0x1E695DF70] array];
LABEL_13:
  if (![(VCMediaNegotiationBlobV2StreamGroup *)self appendStreamsToStreamGroupConfig:v7 streamGroupID:v16 rtpSampleRates:v13])
  {
    [VCMediaNegotiationBlobV2StreamGroup(Utils) getStreamGroupConfig:];
    goto LABEL_20;
  }

  [VCMediaNegotiationBlobV2StreamGroup updateParentStreamIDForGroupConfig:v7];
  v14 = 0;
  *a3 = v7;
  return v14;
}

- (unsigned)codecIndexForType:(int64_t)a3 inPayloadConfigurations:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if ([a4 count])
    {
      v6 = 0;
      v7 = 0;
      while ([objc_msgSend(a4 objectAtIndexedSubscript:{v6), "codecType"}] != a3)
      {
        v6 = ++v7;
        if ([a4 count] <= v7)
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

- (void)appendV2PayloadsToStreamConfig:(id)a3 streamGroupConfig:(id)a4
{
  if (a4)
  {
    if (a3)
    {
      if ([a4 groupID] == 1835623282)
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
              [a3 addCodec:v9];

              [a4 addCodecConfig:v11];
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

- (BOOL)appendStreamsToStreamGroupConfig:(id)a3 streamGroupID:(unsigned int)a4 rtpSampleRates:(id)a5
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
    v41 = a3;
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
        v8 = [v42 streamConfigWithPayloadConfigs:objc_msgSend(a3 payloadConfigSampleRates:"codecConfigs") streamGroupID:{a5, a4}];
        if (!v8)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v28 = VRTraceErrorLogLevelToCSTR();
            v29 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v30 = [v42 streamIndex];
              v31 = FourccToCStr(a4);
              *buf = 136316162;
              v52 = v28;
              v53 = 2080;
              v54 = "[VCMediaNegotiationBlobV2StreamGroup(Utils) appendStreamsToStreamGroupConfig:streamGroupID:rtpSampleRates:]";
              v55 = 1024;
              v56 = 183;
              v57 = 1024;
              v58 = v30;
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
          [(VCMediaNegotiationBlobV2StreamGroup *)self appendV2PayloadsToStreamConfig:v9 streamGroupConfig:a3];
        }

        v44 = [MEMORY[0x1E695DFA8] set];
        v10 = [MEMORY[0x1E695DFA8] set];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v45 = [v9 codecs];
        v11 = [v45 countByEnumeratingWithState:&v62 objects:v61 count:16];
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
                objc_enumerationMutation(v45);
              }

              v15 = *(*(&v62 + 1) + 8 * i);
              v16 = [objc_msgSend(a3 "codecConfigs")];
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
                    v19 = [v16 cipherSuite];
                    v20 = [v42 streamIndex];
                    v21 = FourccToCStr(a4);
                    *buf = 136316418;
                    v52 = v17;
                    v53 = 2080;
                    v54 = "[VCMediaNegotiationBlobV2StreamGroup(Utils) appendStreamsToStreamGroupConfig:streamGroupID:rtpSampleRates:]";
                    v55 = 1024;
                    v56 = 194;
                    v57 = 1024;
                    v58 = v19;
                    v59 = 1024;
                    *v60 = v20;
                    a3 = v41;
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

            v12 = [v45 countByEnumeratingWithState:&v62 objects:v61 count:16];
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

        a3 = v41;
        [v41 addStreamConfig:v9];
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
  v32 = [objc_msgSend(a3 "streamConfigs")];
  if (!v32)
  {
    [VCMediaNegotiationBlobV2StreamGroup(Utils) appendStreamsToStreamGroupConfig:a4 streamGroupID:? rtpSampleRates:?];
  }

  return v32 != 0;
}

- (void)printWithLogFile:(void *)a3 prefix:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v6 = [(VCMediaNegotiationBlobV2StreamGroup *)self getStreamGroupConfig:&v31];
  v7 = a4;
  v8 = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@Stream Group: ", objc_msgSend(-[VCMediaNegotiationBlobV2StreamGroup data](self, "data"), "length"), a4];
  if (v31)
  {
    v9 = FourccToCStr([v31 groupID]);
    v10 = FourccToCStr([v31 mediaType]);
    [v8 appendFormat:@"groupID='%s' mediaType='%s' subtype='%s'", v9, v10, FourccToCStr(objc_msgSend(v31, "mediaSubtype"))];
    if ([v31 syncGroupID])
    {
      [v8 appendFormat:@" syncGroupID='%s'", FourccToCStr(objc_msgSend(v31, "syncGroupID"))];
    }

    [v8 appendFormat:@" encodeDecodeFeatures=%@", objc_msgSend(objc_msgSend(v31, "u1Config"), "videoFeatureStringsFixedPosition")];
  }

  else
  {
    [v8 appendFormat:@"Skipping (result=%x)", v6];
  }

  v11 = [v8 UTF8String];
  VRLogfilePrintWithTimestamp(a3, "%s\n", v12, v13, v14, v15, v16, v17, v11);
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
      v49 = v8;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }

  if (v31)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v20 = [v31 streamConfigs];
    v21 = [v20 countByEnumeratingWithState:&v38 objects:v37 count:16];
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
            objc_enumerationMutation(v20);
          }

          +[VCMediaNegotiationBlobV2StreamGroupStream printWithLogFile:prefix:streamConfig:](VCMediaNegotiationBlobV2StreamGroupStream, "printWithLogFile:prefix:streamConfig:", a3, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  ", v7], *(*(&v38 + 1) + 8 * i));
        }

        v22 = [v20 countByEnumeratingWithState:&v38 objects:v37 count:16];
      }

      while (v22);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = [v31 codecConfigs];
    v26 = [v25 countByEnumeratingWithState:&v33 objects:v32 count:16];
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
            objc_enumerationMutation(v25);
          }

          +[VCMediaNegotiationBlobV2StreamGroupPayload printWithLogFile:prefix:payloadConfig:](VCMediaNegotiationBlobV2StreamGroupPayload, "printWithLogFile:prefix:payloadConfig:", a3, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  ", v7], *(*(&v33 + 1) + 8 * j));
        }

        v27 = [v25 countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v27);
    }
  }
}

+ (id)defaultsForStreamGroup:(unsigned int)a3
{
  switch(a3)
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

+ (id)defaultsForStreamGroupCustom:(unsigned int)a3
{
  if (a3 <= 1684108340)
  {
    if (a3 > 1684108338)
    {
      if (a3 == 1684108339)
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
      if (a3 == 1684108337)
      {
        v5 = 1751474550;
        v4 = 1684108337;
      }

      else
      {
        if (a3 != 1684108338)
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

  if (a3 > 1986618417)
  {
    switch(a3)
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

  if (a3 == 1684108341)
  {
    v4 = 1684108341;
    v6 = 1835365473;
    v5 = 1701142902;
    goto LABEL_23;
  }

  if (a3 == 1986618417)
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
      [(VCMediaNegotiationBlobV2StreamGroup(Utils) *)v8 defaultsForStreamGroupCustom:a3];
    }
  }

  return 0;
}

- (BOOL)isDefaultPayloadConfigsWithStreamGroupConfig:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 streamConfigs];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = +[VCMediaNegotiationBlobV2StreamGroupStream isDefaultPayloadConfigsWithStreamConfig:payloadConfigs:streamGroupID:](VCMediaNegotiationBlobV2StreamGroupStream, "isDefaultPayloadConfigsWithStreamConfig:payloadConfigs:streamGroupID:", *(*(&v12 + 1) + 8 * v8), [a3 codecConfigs], objc_msgSend(a3, "groupID"));
      if (!v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
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

- (id)customPayloadConfigStateWithStreamGroupConfig:(id)a3
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(a3, "codecConfigs"), "count")}];
  if ([objc_msgSend(a3 "codecConfigs")])
  {
    v5 = 1;
    v6 = MEMORY[0x1E695E110];
    do
    {
      [v4 addObject:v6];
    }

    while ([objc_msgSend(a3 "codecConfigs")] > v5++);
  }

  return v4;
}

- (BOOL)setupStreamsWithGroupConfig:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [a3 streamConfigs];
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

        v9 = -[VCMediaNegotiationBlobV2StreamGroupStream initWithStreamConfig:payloadConfigs:streamGroupID:]([VCMediaNegotiationBlobV2StreamGroupStream alloc], "initWithStreamConfig:payloadConfigs:streamGroupID:", *(*(&v15 + 1) + 8 * v8), [a3 codecConfigs], objc_msgSend(a3, "groupID"));
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

- (BOOL)isUsedPayloadConfigAtIndex:(id)a3 streamGroupConfig:(id)a4 rtpTimestampRate:(unsigned int *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a4 streamConfigs];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([objc_msgSend(v12 "codecs")])
        {
          *a5 = [v12 rtpTimestampRate];
          LOBYTE(v8) = 1;
          return v8;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
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

- (BOOL)setupPayloadsWithGroupConfig:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [a3 codecConfigs];
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
      if (!-[VCMediaNegotiationBlobV2StreamGroup isUsedPayloadConfigAtIndex:streamGroupConfig:rtpTimestampRate:](self, "isUsedPayloadConfigAtIndex:streamGroupConfig:rtpTimestampRate:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7], a3, &v16))
      {
        break;
      }

      v11 = [VCMediaNegotiationBlobV2StreamGroupPayload alloc];
      v12 = -[VCMediaNegotiationBlobV2StreamGroupPayload initWithPayloadConfig:index:rtpSampleRate:streamGroupID:](v11, "initWithPayloadConfig:index:rtpSampleRate:streamGroupID:", v10, v7, v16, [a3 groupID]);
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

- (BOOL)updatePayloadConfigsWithStreamGroupConfig:(id)a3 rtpSampleRates:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = [VCMediaNegotiationBlobV2StreamGroup streamGroupIDFromStreamGroup:self->_streamGroup];
  v21 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultRTPSampleRateForStreamGroupID:v6];
  v22 = [VCMediaNegotiationBlobV2StreamGroupPayload defaultPayloadConfigurationsForStreamGroupID:v6];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [(VCMediaNegotiationBlobV2StreamGroup *)self payloads];
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v25 count:16];
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
          objc_enumerationMutation(v7);
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
        [a4 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v16)}];
        [a3 addCodecConfig:v15];
        v10 = (v10 + 1);
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v25 count:16];
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
        [a4 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v21)}];
        [a3 addCodecConfig:{objc_msgSend(v22, "objectAtIndex:", v17)}];
      }

      v17 = v18;
    }

    while ([v22 count] > v18++);
  }

  return 1;
}

- (void)updateDefaultPayloadConfigsWithConfig:(id)a3 rtpSampleRates:(id)a4
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

        [a3 addCodecConfig:*(*(&v14 + 1) + 8 * v12)];
        [a4 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v8)}];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v10);
  }
}

+ (void)updateParentStreamIDForGroupConfig:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 streamConfigs];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isTemporalStream])
        {
          if (v6)
          {
            [v9 setParentStreamID:v6];
          }

          v6 = [v9 streamID];
        }

        else
        {
          v6 = 0;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }
}

+ (id)negotiationCipherSuiteAsString:(unsigned int)a3
{
  if (a3 >= 4)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", *&a3];
  }

  else
  {
    return off_1E85F84A8[a3];
  }
}

+ (BOOL)isValidStreamGroupIDFromConfig:(id)a3 defaultConfig:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v6 = [a3 mediaType];
  if (v6 != [a4 mediaType])
  {
    return 0;
  }

  v7 = [a3 mediaSubtype];
  if (v7 != [a4 mediaSubtype])
  {
    return 0;
  }

  v8 = [a3 syncGroupID];
  return v8 == [a4 syncGroupID];
}

+ (unsigned)streamGroupFromStreamGroupID:(unsigned int)a3
{
  result = a3;
  if (a3 > 1835623281)
  {
    if (a3 > 1936290408)
    {
      if (a3 - 1986618417 < 4)
      {
        return result;
      }

      if (a3 == 1936290409)
      {
        return 11;
      }

      if (a3 == 1937339233)
      {
        return 4;
      }
    }

    else
    {
      switch(a3)
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

  if (a3 > 1667330163)
  {
    if (a3 - 1684108337 < 5)
    {
      return result;
    }

    if (a3 == 1667330164)
    {
      return 7;
    }

    if (a3 == 1718909044)
    {
      v4 = !VCFeatureFlagManager_PersonaV2Enabled();
      v5 = 12;
      v6 = 15;
      goto LABEL_24;
    }

    return 0;
  }

  if (a3 != 1650745716)
  {
    if (a3 == 1667329381)
    {
      return 1;
    }

    if (a3 == 1667329399)
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

+ (unsigned)streamGroupIDFromStreamGroup:(unsigned int)a3
{
  if (a3 <= 14)
  {
    result = 1667329381;
    if (a3 <= 5)
    {
      if (a3 <= 2)
      {
        if (a3 != 1)
        {
          if (a3 == 2)
          {
            return 1835623282;
          }

          return 0;
        }
      }

      else if (a3 == 3)
      {
        return 1935897189;
      }

      else if (a3 == 4)
      {
        return 1937339233;
      }

      else
      {
        return 1667329399;
      }

      return result;
    }

    if (a3 <= 10)
    {
      if (a3 == 6)
      {
        return 1835623287;
      }

      if (a3 == 7)
      {
        return 1667330164;
      }

      return 0;
    }

    if (a3 == 11)
    {
      return 1936290409;
    }

    if (a3 != 12)
    {
      if (a3 == 14)
      {
        return 1650745716;
      }

      return 0;
    }

    return 1718909044;
  }

  if (a3 <= 1684108339)
  {
    if (a3 > 1684108336)
    {
      if (a3 != 1684108337 && a3 != 1684108338)
      {
        v5 = 1684108339;
        goto LABEL_25;
      }

      return a3;
    }

    if (a3 != 15)
    {
      if (a3 == 16)
      {
        return 1650745716;
      }

      return 0;
    }

    return 1718909044;
  }

  if (a3 > 1986618417)
  {
    if (a3 != 1986618418 && a3 != 1986618419)
    {
      v3 = 25652;
      goto LABEL_24;
    }

    return a3;
  }

  if (a3 == 1684108340 || a3 == 1684108341)
  {
    return a3;
  }

  v3 = 25649;
LABEL_24:
  v5 = v3 | 0x76690000;
LABEL_25:
  result = a3;
  if (a3 != v5)
  {
    return 0;
  }

  return result;
}

@end