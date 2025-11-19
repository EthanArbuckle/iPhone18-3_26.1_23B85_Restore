@interface VCMediaNegotiationBlobV2MicrophoneSettingsU1
+ (int)flagFromPayload:(int)a3;
+ (int)payloadFromFlag:(int)a3;
- (BOOL)isEqual:(id)a3;
- (NSSet)audioPayloads;
- (VCMediaNegotiationBlobV2MicrophoneSettingsU1)initWithSSRC:(unsigned int)a3 audioPayloads:(id)a4 u1AuthTagEnabled:(BOOL)a5;
- (id)cipherSuitesAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCipherSuites:(id)a3;
- (int)cipherSuites;
- (unint64_t)hash;
- (unsigned)payloadBitmapWithAudioPayloads:(id)a3;
- (unsigned)payloads;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)printWithLogFile:(void *)a3 prefix:(id)a4;
- (void)setHasPayloads:(BOOL)a3;
- (void)setHasRtpSSRC:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCMediaNegotiationBlobV2MicrophoneSettingsU1

- (void)setHasRtpSSRC:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (unsigned)payloads
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_payloads;
  }

  else
  {
    return 15;
  }
}

- (void)setHasPayloads:(BOOL)a3
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

- (int)cipherSuites
{
  if (*&self->_has)
  {
    return self->_cipherSuites;
  }

  else
  {
    return 1;
  }
}

- (id)cipherSuitesAsString:(int)a3
{
  if (a3 > 7)
  {
    if (a3 == 8)
    {
      return @"CipherAES256AuthSHA280RCCM2Deferred";
    }

    if (a3 != 16)
    {
      if (a3 == 31)
      {
        return @"SupportedMask";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }

    return @"CipherAES256AuthSHA232RCCM2Deferred";
  }

  else
  {
    if (a3 == 1)
    {
      return @"CipherAES128AuthNoneRCCM3";
    }

    if (a3 != 2)
    {
      if (a3 == 4)
      {
        return @"CipherAES128AuthSHA232RCCM2Deferred";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }

    return @"CipherAES128AuthSHA280RCCM2Deferred";
  }
}

- (int)StringAsCipherSuites:(id)a3
{
  if ([a3 isEqualToString:@"CipherAES128AuthNoneRCCM3"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"CipherAES128AuthSHA280RCCM2Deferred"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"CipherAES128AuthSHA232RCCM2Deferred"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"CipherAES256AuthSHA280RCCM2Deferred"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"CipherAES256AuthSHA232RCCM2Deferred"])
  {
    return 16;
  }

  if ([a3 isEqualToString:@"SupportedMask"])
  {
    return 31;
  }

  return 1;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobV2MicrophoneSettingsU1;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobV2MicrophoneSettingsU1 description](&v3, sel_description), -[VCMediaNegotiationBlobV2MicrophoneSettingsU1 dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtpSSRC), @"rtpSSRC"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return v3;
      }

LABEL_7:
      cipherSuites = self->_cipherSuites;
      if (cipherSuites > 7)
      {
        switch(cipherSuites)
        {
          case 8:
            v6 = @"CipherAES256AuthSHA280RCCM2Deferred";
            goto LABEL_21;
          case 16:
            v6 = @"CipherAES256AuthSHA232RCCM2Deferred";
            goto LABEL_21;
          case 31:
            v6 = @"SupportedMask";
            goto LABEL_21;
        }
      }

      else
      {
        switch(cipherSuites)
        {
          case 1:
            v6 = @"CipherAES128AuthNoneRCCM3";
            goto LABEL_21;
          case 2:
            v6 = @"CipherAES128AuthSHA280RCCM2Deferred";
            goto LABEL_21;
          case 4:
            v6 = @"CipherAES128AuthSHA232RCCM2Deferred";
LABEL_21:
            [v3 setObject:v6 forKey:@"cipherSuites"];
            return v3;
        }
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_cipherSuites];
      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_payloads), @"payloads"}];
  if (*&self->_has)
  {
    goto LABEL_7;
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_7:

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 4) = self->_rtpSSRC;
    *(a3 + 20) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return;
      }

LABEL_7:
      *(a3 + 2) = self->_cipherSuites;
      *(a3 + 20) |= 1u;
      return;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 3) = self->_payloads;
  *(a3 + 20) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 4) = self->_rtpSSRC;
    *(result + 20) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_payloads;
  *(result + 20) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 2) = self->_cipherSuites;
  *(result + 20) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 20) & 4) == 0 || self->_rtpSSRC != *(a3 + 4))
      {
        goto LABEL_16;
      }
    }

    else if ((*(a3 + 20) & 4) != 0)
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 20) & 2) == 0 || self->_payloads != *(a3 + 3))
      {
        goto LABEL_16;
      }
    }

    else if ((*(a3 + 20) & 2) != 0)
    {
      goto LABEL_16;
    }

    LOBYTE(v5) = (*(a3 + 20) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(a3 + 20) & 1) == 0 || self->_cipherSuites != *(a3 + 2))
      {
        goto LABEL_16;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_rtpSSRC;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_payloads;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_cipherSuites;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 20);
  if ((v3 & 4) != 0)
  {
    self->_rtpSSRC = *(a3 + 4);
    *&self->_has |= 4u;
    v3 = *(a3 + 20);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        return;
      }

LABEL_7:
      self->_cipherSuites = *(a3 + 2);
      *&self->_has |= 1u;
      return;
    }
  }

  else if ((*(a3 + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_payloads = *(a3 + 3);
  *&self->_has |= 2u;
  if (*(a3 + 20))
  {
    goto LABEL_7;
  }
}

- (VCMediaNegotiationBlobV2MicrophoneSettingsU1)initWithSSRC:(unsigned int)a3 audioPayloads:(id)a4 u1AuthTagEnabled:(BOOL)a5
{
  v5 = a5;
  v7 = *&a3;
  v8 = [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)self init];
  if (!v8)
  {
    return v8;
  }

  if (![a4 count])
  {
    [VCMediaNegotiationBlobV2MicrophoneSettingsU1(Utils) initWithSSRC:audioPayloads:u1AuthTagEnabled:];
LABEL_13:

    return 0;
  }

  if ([(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)v8 rtpSSRC]!= v7)
  {
    [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)v8 setRtpSSRC:v7];
  }

  v9 = [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)v8 payloadBitmapWithAudioPayloads:a4];
  if (!v9)
  {
    [VCMediaNegotiationBlobV2MicrophoneSettingsU1(Utils) initWithSSRC:a4 audioPayloads:? u1AuthTagEnabled:?];
    goto LABEL_13;
  }

  v10 = v9;
  if (v9 != [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)v8 payloads])
  {
    [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)v8 setPayloads:v10];
  }

  v11 = [VCMediaNegotiationBlobV2 pruneDisabledCipherSuites:[VCMediaNegotiationBlobV2SettingsU1 negotiationCipherSuitesFromMediaStreamCipherSuites:[VCEncryptionRules supportedCipherSuitesForStreamGroupID:1835623282 isOneToOne:1]] u1AuthTagEnabled:v5];
  if (v11 != [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)v8 cipherSuites])
  {
    [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)v8 setCipherSuites:v11];
  }

  return v8;
}

- (NSSet)audioPayloads
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)self payloads];
  if (v4)
  {
    v5 = v4;
    v6 = 1;
    do
    {
      if ((v6 & v5) != 0)
      {
        -[NSSet addObject:](v3, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{+[VCMediaNegotiationBlobV2MicrophoneSettingsU1 payloadFromFlag:](VCMediaNegotiationBlobV2MicrophoneSettingsU1, "payloadFromFlag:", v6)}]);
      }

      v5 &= ~v6;
      if (!v5)
      {
        break;
      }

      v7 = v6 & 0x7F;
      v6 = (2 * v6);
    }

    while (v7);
  }

  return v3;
}

- (void)printWithLogFile:(void *)a3 prefix:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"[%lu] %@", objc_msgSend(-[VCMediaNegotiationBlobV2MicrophoneSettingsU1 data](self, "data"), "length"), a4];
  [v6 appendFormat:@"Mic settings (U+1): "];
  if ((*&self->_has & 4) != 0)
  {
    [v6 appendFormat:@"ssrc=%08x ", -[VCMediaNegotiationBlobV2MicrophoneSettingsU1 rtpSSRC](self, "rtpSSRC")];
  }

  v7 = [(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)self payloads];
  v8 = v7;
  [v6 appendFormat:@"payloads=0x%x [", v7];
  if (v8)
  {
    v9 = @"%@";
    v10 = 1;
    while (1)
    {
      if ((v8 & v10) == 0)
      {
        goto LABEL_24;
      }

      if (v10 <= 7)
      {
        switch(v10)
        {
          case 1:
            v11 = @"AACELD_24000";
            break;
          case 2:
            v11 = @"EVS_32000";
            break;
          case 4:
            v11 = @"CN";
            break;
          default:
            goto LABEL_19;
        }
      }

      else if (v10 > 63)
      {
        if (v10 == 64)
        {
          v11 = @"AACELD_48000";
          goto LABEL_23;
        }

        if (v10 != 255)
        {
          goto LABEL_19;
        }

        v11 = @"SupportedMask";
      }

      else
      {
        if (v10 == 8)
        {
          v11 = @"RED";
          goto LABEL_23;
        }

        if (v10 != 32)
        {
LABEL_19:
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
          goto LABEL_23;
        }

        v11 = @"ACC24";
      }

LABEL_23:
      [v6 appendFormat:v9, v11];
      v9 = @",%@";
LABEL_24:
      v8 &= ~v10;
      if (v8)
      {
        v12 = v10 & 0x7F;
        v10 = (2 * v10);
        if (v12)
        {
          continue;
        }
      }

      break;
    }
  }

  [v6 appendString:@"] "];
  [VCMediaNegotiationBlobV2SettingsU1 appendCipherSuiteFlags:[(VCMediaNegotiationBlobV2MicrophoneSettingsU1 *)self cipherSuites] toDescription:v6];
  v13 = [v6 UTF8String];
  VRLogfilePrintWithTimestamp(a3, "%s\n", v14, v15, v16, v17, v18, v19, v13);
  if (VRTraceGetErrorLogLevelForModule() > 5)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v23 = v20;
      v24 = 2080;
      v25 = "[VCMediaNegotiationBlobV2MicrophoneSettingsU1(Utils) printWithLogFile:prefix:]";
      v26 = 1024;
      v27 = 85;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@", buf, 0x26u);
    }
  }
}

+ (int)flagFromPayload:(int)a3
{
  if (a3 > 103)
  {
    if (a3 == 104)
    {
      return 1;
    }

    if (a3 != 108)
    {
      if (a3 == 113)
      {
        return 32;
      }

      return 0;
    }

    return 2;
  }

  else
  {
    if (a3 == 13)
    {
      return 4;
    }

    if (a3 != 20)
    {
      if (a3 == 101)
      {
        return 64;
      }

      return 0;
    }

    return 8;
  }
}

+ (int)payloadFromFlag:(int)a3
{
  if (a3 > 7)
  {
    if (a3 == 8)
    {
      return 20;
    }

    if (a3 != 32)
    {
      if (a3 == 64)
      {
        return 101;
      }

      return 128;
    }

    return 113;
  }

  else
  {
    if (a3 == 1)
    {
      return 104;
    }

    if (a3 != 2)
    {
      if (a3 == 4)
      {
        return 13;
      }

      return 128;
    }

    return 108;
  }
}

- (unsigned)payloadBitmapWithAudioPayloads:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v12;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(a3);
      }

      v6 |= +[VCMediaNegotiationBlobV2MicrophoneSettingsU1 flagFromPayload:](VCMediaNegotiationBlobV2MicrophoneSettingsU1, "flagFromPayload:", [*(*(&v11 + 1) + 8 * i) unsignedIntValue]);
    }

    v5 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  }

  while (v5);
  return v6;
}

@end