@interface VCMediaNegotiationBlobV2MomentsSettings
+ (id)imageTypesWithSupportedCodecs:(unsigned int)a3;
+ (id)videoCodecsWithSupportedCodecs:(unsigned int)a3;
+ (unsigned)blobCapabilitiesWithOneToOneCapabilities:(unsigned __int8)a3 multiwayCapabilities:(unsigned __int8)a4;
+ (unsigned)capabilitiesWithBlobCapabilities:(unsigned int)a3;
+ (unsigned)multiwayCapabilitiesWithBlobCapabilities:(unsigned int)a3;
+ (unsigned)supportedCodecsWithVideoCodecs:(id)a3 imageTypes:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSSet)imageTypes;
- (NSSet)videoCodecs;
- (VCMediaNegotiationBlobV2MomentsSettings)initWithVideoCodecs:(id)a3 imageTypes:(id)a4 capabilitiesOneToOne:(unsigned __int8)a5 capabilitiesMultiway:(unsigned __int8)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)capabilities;
- (unsigned)capabilitiesMultiway;
- (unsigned)capabilitiesOneToOne;
- (unsigned)supportedCodecs;
- (void)appendFieldName:(id)a3 codecs:(unsigned int)a4 outString:(id)a5;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)printWithLogFile:(void *)a3 prefix:(id)a4;
- (void)setHasSupportedCodecs:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasSupportedCodecs:(BOOL)a3
{
  if (a3)
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_capabilities), @"capabilities"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_supportedCodecs), @"supportedCodecs"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

LABEL_5:
    *(a3 + 3) = self->_supportedCodecs;
    *(a3 + 16) |= 2u;
    return;
  }

  *(a3 + 2) = self->_capabilities;
  *(a3 + 16) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 16) & 1) == 0 || self->_capabilities != *(a3 + 2))
      {
        goto LABEL_11;
      }
    }

    else if (*(a3 + 16))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(a3 + 16) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 16) & 2) == 0 || self->_supportedCodecs != *(a3 + 3))
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

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 16) & 1) == 0)
  {
    if ((*(a3 + 16) & 2) == 0)
    {
      return;
    }

LABEL_5:
    self->_supportedCodecs = *(a3 + 3);
    *&self->_has |= 2u;
    return;
  }

  self->_capabilities = *(a3 + 2);
  *&self->_has |= 1u;
  if ((*(a3 + 16) & 2) != 0)
  {
    goto LABEL_5;
  }
}

- (VCMediaNegotiationBlobV2MomentsSettings)initWithVideoCodecs:(id)a3 imageTypes:(id)a4 capabilitiesOneToOne:(unsigned __int8)a5 capabilitiesMultiway:(unsigned __int8)a6
{
  v6 = a6;
  v7 = a5;
  v10 = [(VCMediaNegotiationBlobV2MomentsSettings *)self init];
  if (v10)
  {
    v11 = [VCMediaNegotiationBlobV2MomentsSettings supportedCodecsWithVideoCodecs:a3 imageTypes:a4];
    v12 = v11;
    if ((v7 == 1 || v6 == 1 || (v6 != 2 ? (v13 = v7 == 2) : (v13 = 1), v13)) && !v11)
    {
      [VCMediaNegotiationBlobV2MomentsSettings(Utils) initWithVideoCodecs:a4 imageTypes:a3 capabilitiesOneToOne:v10 capabilitiesMultiway:?];
      return 0;
    }

    else
    {
      if (v11 != [(VCMediaNegotiationBlobV2MomentsSettings *)v10 supportedCodecs])
      {
        [(VCMediaNegotiationBlobV2MomentsSettings *)v10 setSupportedCodecs:v12];
      }

      v14 = [VCMediaNegotiationBlobV2MomentsSettings blobCapabilitiesWithOneToOneCapabilities:v7 multiwayCapabilities:v6];
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
  v2 = [(VCMediaNegotiationBlobV2MomentsSettings *)self supportedCodecs];

  return [VCMediaNegotiationBlobV2MomentsSettings videoCodecsWithSupportedCodecs:v2];
}

- (NSSet)imageTypes
{
  v2 = [(VCMediaNegotiationBlobV2MomentsSettings *)self supportedCodecs];

  return [VCMediaNegotiationBlobV2MomentsSettings imageTypesWithSupportedCodecs:v2];
}

- (unsigned)capabilitiesOneToOne
{
  v2 = [(VCMediaNegotiationBlobV2MomentsSettings *)self capabilities];

  return [VCMediaNegotiationBlobV2MomentsSettings capabilitiesWithBlobCapabilities:v2];
}

- (unsigned)capabilitiesMultiway
{
  v2 = [(VCMediaNegotiationBlobV2MomentsSettings *)self capabilities];

  return [VCMediaNegotiationBlobV2MomentsSettings multiwayCapabilitiesWithBlobCapabilities:v2];
}

- (void)printWithLogFile:(void *)a3 prefix:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@", objc_msgSend(-[VCMediaNegotiationBlobV2MomentsSettings data](self, "data"), "length"), a4];
  [v6 appendFormat:@"Moments settings: "];
  [(VCMediaNegotiationBlobV2MomentsSettings *)self appendFieldName:@"imageTypes" codecs:[VCMediaNegotiationBlobV2MomentsSettings outString:"supportedCodecsWithVideoCodecs:imageTypes:" supportedCodecsWithVideoCodecs:[VCMediaNegotiationBlobV2MomentsSettings imageTypesWithSupportedCodecs:[(VCMediaNegotiationBlobV2MomentsSettings *)self supportedCodecs]] imageTypes:?], v6];
  [(VCMediaNegotiationBlobV2MomentsSettings *)self appendFieldName:@"videoCodecs" codecs:[VCMediaNegotiationBlobV2MomentsSettings outString:"supportedCodecsWithVideoCodecs:imageTypes:" supportedCodecsWithVideoCodecs:0 imageTypes:?], v6];
  v7 = [v6 UTF8String];
  VRLogfilePrintWithTimestamp(a3, "%s\n", v8, v9, v10, v11, v12, v13, v7);
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
      v23 = v6;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }
}

+ (unsigned)supportedCodecsWithVideoCodecs:(id)a3 imageTypes:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v24 objects:v23 count:16];
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
          objc_enumerationMutation(a3);
        }

        v11 = [*(*(&v24 + 1) + 8 * i) intValue];
        if (v11 == 100)
        {
          v8 |= 2u;
        }

        else if (v11 == 123)
        {
          v8 |= 1u;
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v24 objects:v23 count:16];
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
  v12 = [a4 countByEnumeratingWithState:&v19 objects:v18 count:16];
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
          objc_enumerationMutation(a4);
        }

        v16 = [*(*(&v19 + 1) + 8 * j) intValue];
        if (v16 == 1)
        {
          v8 |= 8u;
        }

        else if (!v16)
        {
          v8 |= 4u;
        }
      }

      v13 = [a4 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v13);
  }

  return v8;
}

+ (id)videoCodecsWithSupportedCodecs:(unsigned int)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = v4;
  if (v3)
  {
    [v4 addObject:&unk_1F579BEC8];
  }

  if ((v3 & 2) != 0)
  {
    [v5 addObject:&unk_1F579BEE0];
  }

  return v5;
}

+ (id)imageTypesWithSupportedCodecs:(unsigned int)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = v4;
  if ((v3 & 4) != 0)
  {
    [v4 addObject:&unk_1F579BEF8];
  }

  if ((v3 & 8) != 0)
  {
    [v5 addObject:&unk_1F579BF10];
  }

  return v5;
}

+ (unsigned)blobCapabilitiesWithOneToOneCapabilities:(unsigned __int8)a3 multiwayCapabilities:(unsigned __int8)a4
{
  v4 = 2 * (a3 == 2);
  if (a3 == 1)
  {
    v4 = 1;
  }

  v5 = v4 | 8;
  if (a4 == 1)
  {
    v4 |= 4u;
  }

  if (a4 == 2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

+ (unsigned)capabilitiesWithBlobCapabilities:(unsigned int)a3
{
  if ((a3 & 2) != 0)
  {
    return 2;
  }

  else
  {
    return a3 & 1;
  }
}

+ (unsigned)multiwayCapabilitiesWithBlobCapabilities:(unsigned int)a3
{
  if ((a3 & 8) != 0)
  {
    return 2;
  }

  else
  {
    return (a3 & 4) != 0;
  }
}

- (void)appendFieldName:(id)a3 codecs:(unsigned int)a4 outString:(id)a5
{
  [a5 appendFormat:@"%@=[", a3];
  if ((a4 & 0xF) != 0)
  {
    v7 = @"%@";
    v8 = 1;
    while ((v8 & a4) == 0)
    {
LABEL_16:
      a4 &= ~v8;
      v8 = (2 * v8);
      if ((a4 & 0xF) == 0)
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
          [a5 appendFormat:v7, v9];
          v7 = @",%@";
          goto LABEL_16;
      }
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    goto LABEL_15;
  }

LABEL_17:

  [a5 appendString:@"] "];
}

@end