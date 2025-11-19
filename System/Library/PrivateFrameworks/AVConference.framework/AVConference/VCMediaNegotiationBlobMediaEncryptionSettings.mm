@interface VCMediaNegotiationBlobMediaEncryptionSettings
- (BOOL)isEqual:(id)a3;
- (BOOL)setUpMediaBitmaskWithCipherSuites:(id)a3;
- (BOOL)setUpSRTCPBitmaskWithCipherSuites:(id)a3;
- (VCMediaNegotiationBlobMediaEncryptionSettings)initWithMediaEncryptionSettings:(id)a3;
- (VCMediaNegotiatorMediaEncryptionSettings)mediaEncryptionSettings;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)mediaCipherSuites;
- (unsigned)srtcpCipherSuites;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)extractMediaCipherSuitesWithBlock:(id)a3;
- (void)extractSRTCPCipherSuitesWithBlock:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSrtcpCipherSuites:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCMediaNegotiationBlobMediaEncryptionSettings

- (VCMediaNegotiationBlobMediaEncryptionSettings)initWithMediaEncryptionSettings:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCMediaNegotiationBlobMediaEncryptionSettings;
  v4 = [(VCMediaNegotiationBlobMediaEncryptionSettings *)&v7 init];
  v5 = v4;
  if (!v4)
  {
    [VCMediaNegotiationBlobMediaEncryptionSettings(Utils) initWithMediaEncryptionSettings:];
LABEL_10:

    return 0;
  }

  if (!a3)
  {
    [VCMediaNegotiationBlobMediaEncryptionSettings(Utils) initWithMediaEncryptionSettings:v4];
    goto LABEL_10;
  }

  -[VCMediaNegotiationBlobMediaEncryptionSettings setSendMediaKey:](v4, "setSendMediaKey:", [a3 sendMediaKey]);
  if (!-[VCMediaNegotiationBlobMediaEncryptionSettings setUpMediaBitmaskWithCipherSuites:](v5, "setUpMediaBitmaskWithCipherSuites:", [a3 mediaCipherSuites]))
  {
    [VCMediaNegotiationBlobMediaEncryptionSettings(Utils) initWithMediaEncryptionSettings:v5];
    goto LABEL_10;
  }

  if (!-[VCMediaNegotiationBlobMediaEncryptionSettings setUpSRTCPBitmaskWithCipherSuites:](v5, "setUpSRTCPBitmaskWithCipherSuites:", [a3 srtcpCipherSuites]))
  {
    [VCMediaNegotiationBlobMediaEncryptionSettings(Utils) initWithMediaEncryptionSettings:v5];
    goto LABEL_10;
  }

  return v5;
}

- (VCMediaNegotiatorMediaEncryptionSettings)mediaEncryptionSettings
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [[VCMediaNegotiatorMediaEncryptionSettings alloc] initWithSendMediaKey:self->_sendMediaKey];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__VCMediaNegotiationBlobMediaEncryptionSettings_Utils__mediaEncryptionSettings__block_invoke;
  v6[3] = &unk_1E85F5C58;
  v6[4] = v3;
  [(VCMediaNegotiationBlobMediaEncryptionSettings *)self extractMediaCipherSuitesWithBlock:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__VCMediaNegotiationBlobMediaEncryptionSettings_Utils__mediaEncryptionSettings__block_invoke_2;
  v5[3] = &unk_1E85F5C58;
  v5[4] = v3;
  [(VCMediaNegotiationBlobMediaEncryptionSettings *)self extractSRTCPCipherSuitesWithBlock:v5];
  return v3;
}

- (BOOL)setUpMediaBitmaskWithCipherSuites:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  self->_mediaCipherSuites = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) integerValue];
        if (v9 == 6)
        {
          v10 = 2;
        }

        else
        {
          if (v9 != 7)
          {
            return 0;
          }

          v10 = 1;
        }

        self->_mediaCipherSuites |= v10;
      }

      v6 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = *&self->_has & 0xFE;
  if (self->_mediaCipherSuites)
  {
    ++v11;
  }

  *&self->_has = v11;
  return 1;
}

- (void)extractMediaCipherSuitesWithBlock:(id)a3
{
  if (*&self->_has)
  {
    mediaCipherSuites = self->_mediaCipherSuites;
    if (mediaCipherSuites)
    {
      for (i = 1; i != 2; i *= 2)
      {
        if (i == 1)
        {
          v6 = 7;
LABEL_8:
          (*(a3 + 2))(a3, v6);
        }

        mediaCipherSuites &= ~i;
        if (!mediaCipherSuites)
        {
          return;
        }
      }

      v6 = 6;
      goto LABEL_8;
    }
  }
}

- (BOOL)setUpSRTCPBitmaskWithCipherSuites:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  self->_srtcpCipherSuites = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) integerValue];
        if (v9 == 7)
        {
          v10 = 1;
        }

        else
        {
          if (v9 != 6)
          {
            return 0;
          }

          v10 = 2;
        }

        self->_srtcpCipherSuites |= v10;
      }

      v6 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  *&self->_has = *&self->_has & 0xFD | (2 * (self->_srtcpCipherSuites != 0));
  return 1;
}

- (void)extractSRTCPCipherSuitesWithBlock:(id)a3
{
  if ((*&self->_has & 2) != 0)
  {
    srtcpCipherSuites = self->_srtcpCipherSuites;
    if (srtcpCipherSuites)
    {
      for (i = 1; i != 1; i *= 2)
      {
        if (i == 2)
        {
          v6 = 6;
LABEL_8:
          (*(a3 + 2))(a3, v6);
        }

        srtcpCipherSuites &= ~i;
        if (!srtcpCipherSuites)
        {
          return;
        }
      }

      v6 = 7;
      goto LABEL_8;
    }
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobMediaEncryptionSettings *)self setSendMediaKey:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobMediaEncryptionSettings;
  [(VCMediaNegotiationBlobMediaEncryptionSettings *)&v3 dealloc];
}

- (unsigned)mediaCipherSuites
{
  if (*&self->_has)
  {
    return self->_mediaCipherSuites;
  }

  else
  {
    return 0;
  }
}

- (unsigned)srtcpCipherSuites
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_srtcpCipherSuites;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSrtcpCipherSuites:(BOOL)a3
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
  v3.super_class = VCMediaNegotiationBlobMediaEncryptionSettings;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobMediaEncryptionSettings description](&v3, sel_description), -[VCMediaNegotiationBlobMediaEncryptionSettings dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  sendMediaKey = self->_sendMediaKey;
  if (sendMediaKey)
  {
    [v3 setObject:sendMediaKey forKey:@"sendMediaKey"];
  }

  has = self->_has;
  if (has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_mediaCipherSuites), @"mediaCipherSuites"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_srtcpCipherSuites), @"srtcpCipherSuites"}];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_sendMediaKey)
  {
    PBDataWriterWriteDataField();
  }

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
  if (self->_sendMediaKey)
  {
    [a3 setSendMediaKey:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 2) = self->_mediaCipherSuites;
    *(a3 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 6) = self->_srtcpCipherSuites;
    *(a3 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 16) = [(NSData *)self->_sendMediaKey copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_mediaCipherSuites;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_srtcpCipherSuites;
    *(v5 + 28) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    sendMediaKey = self->_sendMediaKey;
    if (!(sendMediaKey | *(a3 + 2)) || (v5 = [(NSData *)sendMediaKey isEqual:?]) != 0)
    {
      if (*&self->_has)
      {
        if ((*(a3 + 28) & 1) == 0 || self->_mediaCipherSuites != *(a3 + 2))
        {
          goto LABEL_13;
        }
      }

      else if (*(a3 + 28))
      {
LABEL_13:
        LOBYTE(v5) = 0;
        return v5;
      }

      LOBYTE(v5) = (*(a3 + 28) & 2) == 0;
      if ((*&self->_has & 2) != 0)
      {
        if ((*(a3 + 28) & 2) == 0 || self->_srtcpCipherSuites != *(a3 + 6))
        {
          goto LABEL_13;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_sendMediaKey hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_mediaCipherSuites;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_srtcpCipherSuites;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 2))
  {
    [(VCMediaNegotiationBlobMediaEncryptionSettings *)self setSendMediaKey:?];
  }

  v5 = *(a3 + 28);
  if (v5)
  {
    self->_mediaCipherSuites = *(a3 + 2);
    *&self->_has |= 1u;
    v5 = *(a3 + 28);
  }

  if ((v5 & 2) != 0)
  {
    self->_srtcpCipherSuites = *(a3 + 6);
    *&self->_has |= 2u;
  }
}

@end