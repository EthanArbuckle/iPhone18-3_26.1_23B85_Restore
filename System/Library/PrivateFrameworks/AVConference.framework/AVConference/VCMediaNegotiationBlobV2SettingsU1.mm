@interface VCMediaNegotiationBlobV2SettingsU1
+ (id)appendCipherSuiteFlags:(unsigned int)flags toDescription:(id)description;
+ (id)mediaStreamCipherSuitesFromNegotiationCipherSuites:(int)suites;
+ (int)negotiationCipherSuiteFromMediaStreamCipherSuite:(int64_t)suite;
+ (int)negotiationCipherSuitesFromMediaStreamCipherSuites:(id)suites;
+ (int64_t)mediaStreamCipherSuiteFromNegotiationCipherSuite:(int)suite;
- (BOOL)isEqual:(id)equal;
- (BOOL)loadEncodeDecodeFeatures:(id)features;
- (VCMediaNegotiationBlobV2SettingsU1)initWithU1Config:(id)config;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)u1Config;
- (unint64_t)hash;
- (void)addEncodeDecodeFeatures:(id)features;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobV2SettingsU1

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobV2SettingsU1 *)self setEncodeDecodeFeatures:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2SettingsU1;
  [(VCMediaNegotiationBlobV2SettingsU1 *)&v3 dealloc];
}

- (void)addEncodeDecodeFeatures:(id)features
{
  encodeDecodeFeatures = self->_encodeDecodeFeatures;
  if (!encodeDecodeFeatures)
  {
    encodeDecodeFeatures = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_encodeDecodeFeatures = encodeDecodeFeatures;
  }

  [(NSMutableArray *)encodeDecodeFeatures addObject:features];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2SettingsU1;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2SettingsU1 description](&v3, sel_description), -[VCMediaNegotiationBlobV2SettingsU1 dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v16 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtpSSRC), @"rtpSSRC"}];
  }

  if ([(NSMutableArray *)self->_encodeDecodeFeatures count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_encodeDecodeFeatures, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    encodeDecodeFeatures = self->_encodeDecodeFeatures;
    v6 = [(NSMutableArray *)encodeDecodeFeatures countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(encodeDecodeFeatures);
          }

          [v4 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v9++), "dictionaryRepresentation")}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)encodeDecodeFeatures countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"encodeDecodeFeatures"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v14 = *MEMORY[0x1E69E9840];
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  encodeDecodeFeatures = self->_encodeDecodeFeatures;
  v5 = [(NSMutableArray *)encodeDecodeFeatures countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(encodeDecodeFeatures);
        }

        PBDataWriterWriteSubmessage();
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)encodeDecodeFeatures countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 4) = self->_rtpSSRC;
    *(to + 20) |= 1u;
  }

  if ([(VCMediaNegotiationBlobV2SettingsU1 *)self encodeDecodeFeaturesCount])
  {
    [to clearEncodeDecodeFeatures];
    encodeDecodeFeaturesCount = [(VCMediaNegotiationBlobV2SettingsU1 *)self encodeDecodeFeaturesCount];
    if (encodeDecodeFeaturesCount)
    {
      v6 = encodeDecodeFeaturesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addEncodeDecodeFeatures:{-[VCMediaNegotiationBlobV2SettingsU1 encodeDecodeFeaturesAtIndex:](self, "encodeDecodeFeaturesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_rtpSSRC;
    *(v5 + 20) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  encodeDecodeFeatures = self->_encodeDecodeFeatures;
  v8 = [(NSMutableArray *)encodeDecodeFeatures countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(encodeDecodeFeatures);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addEncodeDecodeFeatures:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)encodeDecodeFeatures countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v9);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 20) & 1) == 0 || self->_rtpSSRC != *(equal + 4))
      {
        goto LABEL_9;
      }
    }

    else if (*(equal + 20))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    encodeDecodeFeatures = self->_encodeDecodeFeatures;
    if (encodeDecodeFeatures | *(equal + 1))
    {

      LOBYTE(v5) = [(NSMutableArray *)encodeDecodeFeatures isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_rtpSSRC;
  }

  else
  {
    v2 = 0;
  }

  return [(NSMutableArray *)self->_encodeDecodeFeatures hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(from + 20))
  {
    self->_rtpSSRC = *(from + 4);
    *&self->_has |= 1u;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(VCMediaNegotiationBlobV2SettingsU1 *)self addEncodeDecodeFeatures:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (VCMediaNegotiationBlobV2SettingsU1)initWithU1Config:(id)config
{
  v4 = [(VCMediaNegotiationBlobV2SettingsU1 *)self init];
  if (v4)
  {
    if (config)
    {
      -[VCMediaNegotiationBlobV2SettingsU1 setRtpSSRC:](v4, "setRtpSSRC:", [config ssrc]);
      if ([(VCMediaNegotiationBlobV2SettingsU1 *)v4 loadEncodeDecodeFeatures:config])
      {
        return v4;
      }

      [VCMediaNegotiationBlobV2SettingsU1(Utils) initWithU1Config:];
    }

    else
    {
      [VCMediaNegotiationBlobV2SettingsU1(Utils) initWithU1Config:];
    }

    return 0;
  }

  return v4;
}

- (id)u1Config
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(VCMediaNegotiatorStreamGroupU1Configuration);
  [(VCMediaNegotiatorStreamGroupU1Configuration *)v3 setSupportedDirection:3];
  if ([(VCMediaNegotiationBlobV2SettingsU1 *)self hasRtpSSRC])
  {
    [(VCMediaNegotiatorStreamGroupU1Configuration *)v3 setSsrc:[(VCMediaNegotiationBlobV2SettingsU1 *)self rtpSSRC]];
  }

  if ([(NSMutableArray *)[(VCMediaNegotiationBlobV2SettingsU1 *)self encodeDecodeFeatures] count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    encodeDecodeFeatures = [(VCMediaNegotiationBlobV2SettingsU1 *)self encodeDecodeFeatures];
    v6 = [(NSMutableArray *)encodeDecodeFeatures countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(encodeDecodeFeatures);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          [v10 encodeDecodeFeatures];
          v11 = VCPCreateDecompressedFLS();
          [v4 setObject:v11 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v10, "rtpPayload"))}];
        }

        v7 = [(NSMutableArray *)encodeDecodeFeatures countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v7);
    }

    [(VCMediaNegotiatorStreamGroupU1Configuration *)v3 setVideoFeatureStringsFixedPosition:v4];
  }

  return v3;
}

- (BOOL)loadEncodeDecodeFeatures:(id)features
{
  v19 = *MEMORY[0x1E69E9840];
  videoFeatureStringsFixedPosition = [features videoFeatureStringsFixedPosition];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [videoFeatureStringsFixedPosition countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(videoFeatureStringsFixedPosition);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        [videoFeatureStringsFixedPosition objectForKeyedSubscript:v9];
        v10 = VCPCreateCompressedFLS();
        v11 = [[VCMediaNegotiationBlobV2StreamGroupEncodeDecodeFeatures alloc] initWithPayload:v9 encodeDecodeFeatures:v10];

        if (!v11)
        {
          [(VCMediaNegotiationBlobV2SettingsU1(Utils) *)v9 loadEncodeDecodeFeatures:videoFeatureStringsFixedPosition, &v13];
          return v13;
        }

        [(VCMediaNegotiationBlobV2SettingsU1 *)self addEncodeDecodeFeatures:v11];
      }

      v6 = [videoFeatureStringsFixedPosition countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

+ (id)mediaStreamCipherSuitesFromNegotiationCipherSuites:(int)suites
{
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  if (suites)
  {
    v6 = 1;
    do
    {
      if ((v6 & suites) != 0)
      {
        [orderedSet addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(self, "mediaStreamCipherSuiteFromNegotiationCipherSuite:", v6))}];
      }

      suites &= ~v6;
      if (!suites)
      {
        break;
      }

      v7 = v6 & 0xF;
      v6 = (2 * v6);
    }

    while (v7);
  }

  return orderedSet;
}

+ (int64_t)mediaStreamCipherSuiteFromNegotiationCipherSuite:(int)suite
{
  HIDWORD(v4) = suite - 2;
  LODWORD(v4) = suite - 2;
  v3 = v4 >> 1;
  if (v3 > 7)
  {
    return 3;
  }

  else
  {
    return qword_1DBD4F5C8[v3];
  }
}

+ (int)negotiationCipherSuiteFromMediaStreamCipherSuite:(int64_t)suite
{
  if (suite <= 3)
  {
    if ((suite + 1) >= 4)
    {
      return suite == 3;
    }

LABEL_7:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      [VCMediaNegotiationBlobV2SettingsU1(Utils) negotiationCipherSuiteFromMediaStreamCipherSuite:v4];
    }

    return 0;
  }

  if (suite < 8)
  {
    goto LABEL_7;
  }

  if (suite > 9)
  {
    if (suite == 10)
    {
      return 8;
    }

    if (suite == 11)
    {
      return 16;
    }

    return 0;
  }

  if (suite == 8)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

+ (int)negotiationCipherSuitesFromMediaStreamCipherSuites:(id)suites
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [suites countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v13;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(suites);
      }

      v7 |= [self negotiationCipherSuiteFromMediaStreamCipherSuite:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "integerValue")}];
    }

    v6 = [suites countByEnumeratingWithState:&v12 objects:v11 count:16];
  }

  while (v6);
  return v7;
}

+ (id)appendCipherSuiteFlags:(unsigned int)flags toDescription:(id)description
{
  flagsCopy = flags;
  [description appendFormat:@"cipherSuites=0x%x [", *&flags];
  if (flagsCopy)
  {
    v6 = @"%@";
    v7 = 1;
    while (1)
    {
      if ((v7 & flagsCopy) == 0)
      {
        goto LABEL_19;
      }

      if (v7 > 7)
      {
        switch(v7)
        {
          case 8:
            v8 = @"CipherAES256AuthSHA280RCCM2Deferred";
            break;
          case 0x10:
            v8 = @"CipherAES256AuthSHA232RCCM2Deferred";
            break;
          case 0x1F:
            v8 = @"SupportedMask";
            break;
          default:
            goto LABEL_15;
        }
      }

      else
      {
        switch(v7)
        {
          case 1:
            v8 = @"CipherAES128AuthNoneRCCM3";
            break;
          case 2:
            v8 = @"CipherAES128AuthSHA280RCCM2Deferred";
            break;
          case 4:
            v8 = @"CipherAES128AuthSHA232RCCM2Deferred";
            break;
          default:
LABEL_15:
            v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
            break;
        }
      }

      [description appendFormat:v6, v8];
      v6 = @",%@";
LABEL_19:
      flagsCopy &= ~v7;
      if (flagsCopy)
      {
        v9 = v7 & 0xF;
        v7 = (2 * v7);
        if (v9)
        {
          continue;
        }
      }

      break;
    }
  }

  [description appendString:@"]"];
  return description;
}

@end