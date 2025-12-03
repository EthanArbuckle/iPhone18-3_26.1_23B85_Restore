@interface VCMediaNegotiationBlobV2MomentsSettings
+ (id)imageTypesWithSupportedCodecs:(unsigned int)codecs;
+ (id)videoCodecsWithSupportedCodecs:(unsigned int)codecs;
+ (unsigned)blobCapabilitiesWithOneToOneCapabilities:(unsigned __int8)capabilities multiwayCapabilities:(unsigned __int8)multiwayCapabilities;
+ (unsigned)capabilitiesWithBlobCapabilities:(unsigned int)capabilities;
+ (unsigned)multiwayCapabilitiesWithBlobCapabilities:(unsigned int)capabilities;
+ (unsigned)supportedCodecsWithVideoCodecs:(id)codecs imageTypes:(id)types;
- (BOOL)isEqual:(id)equal;
- (NSSet)imageTypes;
- (NSSet)videoCodecs;
- (VCMediaNegotiationBlobV2MomentsSettings)initWithVideoCodecs:(id)codecs imageTypes:(id)types capabilitiesOneToOne:(unsigned __int8)one capabilitiesMultiway:(unsigned __int8)multiway;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)capabilities;
- (unsigned)capabilitiesMultiway;
- (unsigned)capabilitiesOneToOne;
- (unsigned)supportedCodecs;
- (void)appendFieldName:(id)name codecs:(unsigned int)codecs outString:(id)string;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)printWithLogFile:(void *)file prefix:(id)prefix;
- (void)setHasSupportedCodecs:(BOOL)codecs;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobV2MomentsSettings

- (unsigned)capabilities
{
  if (*&self->_has)
  {
    return self->_capabilities;
  }

  else
  {
    return 4;
  }
}

- (unsigned)supportedCodecs
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_supportedCodecs;
  }

  else
  {
    return 10;
  }
}

- (void)setHasSupportedCodecs:(BOOL)codecs
{
  if (codecs)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2MomentsSettings;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2MomentsSettings description](&v3, sel_description), -[VCMediaNegotiationBlobV2MomentsSettings dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_capabilities), @"capabilities"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_supportedCodecs), @"supportedCodecs"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

LABEL_5:
    *(to + 3) = self->_supportedCodecs;
    *(to + 16) |= 2u;
    return;
  }

  *(to + 2) = self->_capabilities;
  *(to + 16) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_capabilities;
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 3) = self->_supportedCodecs;
    *(result + 16) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 16) & 1) == 0 || self->_capabilities != *(equal + 2))
      {
        goto LABEL_11;
      }
    }

    else if (*(equal + 16))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(equal + 16) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 16) & 2) == 0 || self->_supportedCodecs != *(equal + 3))
      {
        goto LABEL_11;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_capabilities;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_supportedCodecs;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 16) & 1) == 0)
  {
    if ((*(from + 16) & 2) == 0)
    {
      return;
    }

LABEL_5:
    self->_supportedCodecs = *(from + 3);
    *&self->_has |= 2u;
    return;
  }

  self->_capabilities = *(from + 2);
  *&self->_has |= 1u;
  if ((*(from + 16) & 2) != 0)
  {
    goto LABEL_5;
  }
}

- (VCMediaNegotiationBlobV2MomentsSettings)initWithVideoCodecs:(id)codecs imageTypes:(id)types capabilitiesOneToOne:(unsigned __int8)one capabilitiesMultiway:(unsigned __int8)multiway
{
  multiwayCopy = multiway;
  oneCopy = one;
  v10 = [(VCMediaNegotiationBlobV2MomentsSettings *)self init];
  if (v10)
  {
    v11 = [VCMediaNegotiationBlobV2MomentsSettings supportedCodecsWithVideoCodecs:codecs imageTypes:types];
    v12 = v11;
    if ((oneCopy == 1 || multiwayCopy == 1 || (multiwayCopy != 2 ? (v13 = oneCopy == 2) : (v13 = 1), v13)) && !v11)
    {
      [VCMediaNegotiationBlobV2MomentsSettings(Utils) initWithVideoCodecs:types imageTypes:codecs capabilitiesOneToOne:v10 capabilitiesMultiway:?];
      return 0;
    }

    else
    {
      if (v11 != [(VCMediaNegotiationBlobV2MomentsSettings *)v10 supportedCodecs])
      {
        [(VCMediaNegotiationBlobV2MomentsSettings *)v10 setSupportedCodecs:v12];
      }

      v14 = [VCMediaNegotiationBlobV2MomentsSettings blobCapabilitiesWithOneToOneCapabilities:oneCopy multiwayCapabilities:multiwayCopy];
      if (v14 != [(VCMediaNegotiationBlobV2MomentsSettings *)v10 capabilities])
      {
        [(VCMediaNegotiationBlobV2MomentsSettings *)v10 setCapabilities:v14];
      }
    }
  }

  return v10;
}

- (NSSet)videoCodecs
{
  supportedCodecs = [(VCMediaNegotiationBlobV2MomentsSettings *)self supportedCodecs];

  return [VCMediaNegotiationBlobV2MomentsSettings videoCodecsWithSupportedCodecs:supportedCodecs];
}

- (NSSet)imageTypes
{
  supportedCodecs = [(VCMediaNegotiationBlobV2MomentsSettings *)self supportedCodecs];

  return [VCMediaNegotiationBlobV2MomentsSettings imageTypesWithSupportedCodecs:supportedCodecs];
}

- (unsigned)capabilitiesOneToOne
{
  capabilities = [(VCMediaNegotiationBlobV2MomentsSettings *)self capabilities];

  return [VCMediaNegotiationBlobV2MomentsSettings capabilitiesWithBlobCapabilities:capabilities];
}

- (unsigned)capabilitiesMultiway
{
  capabilities = [(VCMediaNegotiationBlobV2MomentsSettings *)self capabilities];

  return [VCMediaNegotiationBlobV2MomentsSettings multiwayCapabilitiesWithBlobCapabilities:capabilities];
}

- (void)printWithLogFile:(void *)file prefix:(id)prefix
{
  v24 = *MEMORY[0x1E69E9840];
  prefix = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@", objc_msgSend(-[VCMediaNegotiationBlobV2MomentsSettings data](self, "data"), "length"), prefix];
  [prefix appendFormat:@"Moments settings: "];
  [(VCMediaNegotiationBlobV2MomentsSettings *)self appendFieldName:@"imageTypes" codecs:[VCMediaNegotiationBlobV2MomentsSettings outString:"supportedCodecsWithVideoCodecs:imageTypes:" supportedCodecsWithVideoCodecs:[VCMediaNegotiationBlobV2MomentsSettings imageTypesWithSupportedCodecs:[(VCMediaNegotiationBlobV2MomentsSettings *)self supportedCodecs]] imageTypes:?], prefix];
  [(VCMediaNegotiationBlobV2MomentsSettings *)self appendFieldName:@"videoCodecs" codecs:[VCMediaNegotiationBlobV2MomentsSettings outString:"supportedCodecsWithVideoCodecs:imageTypes:" supportedCodecsWithVideoCodecs:0 imageTypes:?], prefix];
  uTF8String = [prefix UTF8String];
  VRLogfilePrintWithTimestamp(file, "%s\n", v8, v9, v10, v11, v12, v13, uTF8String);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = v14;
      v18 = 2080;
      v19 = "[VCMediaNegotiationBlobV2MomentsSettings(Utils) printWithLogFile:prefix:]";
      v20 = 1024;
      v21 = 77;
      v22 = 2112;
      v23 = prefix;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }
}

+ (unsigned)supportedCodecsWithVideoCodecs:(id)codecs imageTypes:(id)types
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [codecs countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(codecs);
        }

        intValue = [*(*(&v24 + 1) + 8 * i) intValue];
        if (intValue == 100)
        {
          v8 |= 2u;
        }

        else if (intValue == 123)
        {
          v8 |= 1u;
        }
      }

      v7 = [codecs countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [types countByEnumeratingWithState:&v19 objects:v18 count:16];
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
          objc_enumerationMutation(types);
        }

        intValue2 = [*(*(&v19 + 1) + 8 * j) intValue];
        if (intValue2 == 1)
        {
          v8 |= 8u;
        }

        else if (!intValue2)
        {
          v8 |= 4u;
        }
      }

      v13 = [types countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v13);
  }

  return v8;
}

+ (id)videoCodecsWithSupportedCodecs:(unsigned int)codecs
{
  codecsCopy = codecs;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = v4;
  if (codecsCopy)
  {
    [v4 addObject:&unk_1F579BEC8];
  }

  if ((codecsCopy & 2) != 0)
  {
    [v5 addObject:&unk_1F579BEE0];
  }

  return v5;
}

+ (id)imageTypesWithSupportedCodecs:(unsigned int)codecs
{
  codecsCopy = codecs;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = v4;
  if ((codecsCopy & 4) != 0)
  {
    [v4 addObject:&unk_1F579BEF8];
  }

  if ((codecsCopy & 8) != 0)
  {
    [v5 addObject:&unk_1F579BF10];
  }

  return v5;
}

+ (unsigned)blobCapabilitiesWithOneToOneCapabilities:(unsigned __int8)capabilities multiwayCapabilities:(unsigned __int8)multiwayCapabilities
{
  v4 = 2 * (capabilities == 2);
  if (capabilities == 1)
  {
    v4 = 1;
  }

  v5 = v4 | 8;
  if (multiwayCapabilities == 1)
  {
    v4 |= 4u;
  }

  if (multiwayCapabilities == 2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

+ (unsigned)capabilitiesWithBlobCapabilities:(unsigned int)capabilities
{
  if ((capabilities & 2) != 0)
  {
    return 2;
  }

  else
  {
    return capabilities & 1;
  }
}

+ (unsigned)multiwayCapabilitiesWithBlobCapabilities:(unsigned int)capabilities
{
  if ((capabilities & 8) != 0)
  {
    return 2;
  }

  else
  {
    return (capabilities & 4) != 0;
  }
}

- (void)appendFieldName:(id)name codecs:(unsigned int)codecs outString:(id)string
{
  [string appendFormat:@"%@=[", name];
  if ((codecs & 0xF) != 0)
  {
    v7 = @"%@";
    v8 = 1;
    while ((v8 & codecs) == 0)
    {
LABEL_16:
      codecs &= ~v8;
      v8 = (2 * v8);
      if ((codecs & 0xF) == 0)
      {
        goto LABEL_17;
      }
    }

    if (v8 <= 3)
    {
      v9 = @"H264";
      if (v8 == 1)
      {
        goto LABEL_15;
      }

      if (v8 == 2)
      {
        v9 = @"HEVC";
        goto LABEL_15;
      }
    }

    else
    {
      switch(v8)
      {
        case 4:
          v9 = @"JPEG";
          goto LABEL_15;
        case 8:
          v9 = @"HEIF";
          goto LABEL_15;
        case 0xF:
          v9 = @"SupportedMask";
LABEL_15:
          [string appendFormat:v7, v9];
          v7 = @",%@";
          goto LABEL_16;
      }
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    goto LABEL_15;
  }

LABEL_17:

  [string appendString:@"] "];
}

@end