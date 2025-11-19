@interface VCMediaNegotiationBlobMomentsSettings
+ (unsigned)avcMomentsCapabilitiesForMultiwayMomentsCapabilities:(int)a3;
+ (unsigned)capabilitiesBitmapWithCapabilities:(unsigned __int8)a3;
- (BOOL)isEqual:(id)a3;
- (VCMediaNegotiationBlobMomentsSettings)initWithVideoCodecs:(id)a3 imageTypes:(id)a4 capabilities:(unsigned __int8)a5 multiwayCapabilities:(unsigned __int8)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)newImageTypeSet;
- (id)newVideoCodecSet;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSupportedImageTypes:(BOOL)a3;
- (void)setHasSupportedVideoCodecs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCMediaNegotiationBlobMomentsSettings

- (void)setHasSupportedVideoCodecs:(BOOL)a3
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

- (void)setHasSupportedImageTypes:(BOOL)a3
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
  v3.super_class = VCMediaNegotiationBlobMomentsSettings;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobMomentsSettings description](&v3, sel_description), -[VCMediaNegotiationBlobMomentsSettings dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_capabilities), @"capabilities"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_supportedImageTypes), @"supportedImageTypes"}];
    if ((*&self->_has & 1) == 0)
    {
      return v3;
    }

    goto LABEL_4;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_supportedVideoCodecs), @"supportedVideoCodecs"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_multiwayCapabilities), @"multiwayCapabilities"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  PBDataWriterWriteUint32Field();
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

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = self->_capabilities;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 5) = self->_supportedVideoCodecs;
    *(a3 + 24) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return;
      }

LABEL_7:
      *(a3 + 3) = self->_multiwayCapabilities;
      *(a3 + 24) |= 1u;
      return;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = self->_supportedImageTypes;
  *(a3 + 24) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_capabilities;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 5) = self->_supportedVideoCodecs;
    *(result + 24) |= 4u;
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

  *(result + 4) = self->_supportedImageTypes;
  *(result + 24) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 3) = self->_multiwayCapabilities;
  *(result + 24) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_capabilities != *(a3 + 2))
    {
LABEL_17:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 24) & 4) == 0 || self->_supportedVideoCodecs != *(a3 + 5))
      {
        goto LABEL_17;
      }
    }

    else if ((*(a3 + 24) & 4) != 0)
    {
      goto LABEL_17;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 24) & 2) == 0 || self->_supportedImageTypes != *(a3 + 4))
      {
        goto LABEL_17;
      }
    }

    else if ((*(a3 + 24) & 2) != 0)
    {
      goto LABEL_17;
    }

    LOBYTE(v5) = (*(a3 + 24) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_multiwayCapabilities != *(a3 + 3))
      {
        goto LABEL_17;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v2 = 2654435761 * self->_supportedVideoCodecs;
  }

  else
  {
    v2 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_supportedImageTypes;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v4 = 0;
    return v2 ^ v3 ^ v4 ^ (2654435761 * self->_capabilities);
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v4 = 2654435761 * self->_multiwayCapabilities;
  return v2 ^ v3 ^ v4 ^ (2654435761 * self->_capabilities);
}

- (void)mergeFrom:(id)a3
{
  self->_capabilities = *(a3 + 2);
  v3 = *(a3 + 24);
  if ((v3 & 4) != 0)
  {
    self->_supportedVideoCodecs = *(a3 + 5);
    *&self->_has |= 4u;
    v3 = *(a3 + 24);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        return;
      }

LABEL_7:
      self->_multiwayCapabilities = *(a3 + 3);
      *&self->_has |= 1u;
      return;
    }
  }

  else if ((*(a3 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_supportedImageTypes = *(a3 + 4);
  *&self->_has |= 2u;
  if (*(a3 + 24))
  {
    goto LABEL_7;
  }
}

+ (unsigned)avcMomentsCapabilitiesForMultiwayMomentsCapabilities:(int)a3
{
  if ((a3 & 4) != 0)
  {
    return 7;
  }

  else
  {
    return (a3 >> 1) & 1;
  }
}

- (VCMediaNegotiationBlobMomentsSettings)initWithVideoCodecs:(id)a3 imageTypes:(id)a4 capabilities:(unsigned __int8)a5 multiwayCapabilities:(unsigned __int8)a6
{
  v6 = a6;
  v7 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VCMediaNegotiationBlobMomentsSettings;
  v10 = [(VCMediaNegotiationBlobMomentsSettings *)&v24 init];
  if (v10)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [a3 countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = v11;
    v13 = *v32;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(a3);
        }

        v15 = [*(*(&v31 + 1) + 8 * i) intValue];
        if (v15 == 123)
        {
          v16 = 1;
        }

        else
        {
          if (v15 != 100)
          {
            continue;
          }

          v16 = 2;
        }

        v10->_supportedVideoCodecs |= v16;
        *&v10->_has |= 4u;
      }

      v12 = [a3 countByEnumeratingWithState:&v31 objects:v30 count:16];
      if (!v12)
      {
LABEL_14:
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v17 = [a4 countByEnumeratingWithState:&v26 objects:v25 count:16];
        if (!v17)
        {
          goto LABEL_26;
        }

        v18 = v17;
        v19 = *v27;
        while (1)
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(a4);
            }

            v21 = [*(*(&v26 + 1) + 8 * j) intValue];
            if (v21)
            {
              if (v21 != 1)
              {
                continue;
              }

              v22 = 2;
            }

            else
            {
              v22 = 1;
            }

            v10->_supportedImageTypes |= v22;
            *&v10->_has |= 2u;
          }

          v18 = [a4 countByEnumeratingWithState:&v26 objects:v25 count:16];
          if (!v18)
          {
LABEL_26:
            [(VCMediaNegotiationBlobMomentsSettings *)v10 setCapabilities:[VCMediaNegotiationBlobMomentsSettings capabilitiesBitmapWithCapabilities:v7]];
            [(VCMediaNegotiationBlobMomentsSettings *)v10 setMultiwayCapabilities:[VCMediaNegotiationBlobMomentsSettings capabilitiesBitmapWithCapabilities:v6]];
            return v10;
          }
        }
      }
    }
  }

  return v10;
}

- (id)newVideoCodecSet
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = 1;
  while (1)
  {
    v5 = v4;
    if ((self->_supportedVideoCodecs & v4) != 0)
    {
      if (v4 == 1)
      {
        [v3 addObject:&unk_1F579B778];
        goto LABEL_7;
      }

      if (v4 == 2)
      {
        break;
      }
    }

LABEL_7:
    v4 = 2 * v5;
    if ((v5 & 1) == 0)
    {
      return v3;
    }
  }

  [v3 addObject:&unk_1F579B790];
  return v3;
}

- (id)newImageTypeSet
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = 1;
  while (1)
  {
    v5 = v4;
    if ((self->_supportedImageTypes & v4) != 0)
    {
      if (v4 == 1)
      {
        [v3 addObject:&unk_1F579B7A8];
        goto LABEL_7;
      }

      if (v4 == 2)
      {
        break;
      }
    }

LABEL_7:
    v4 = 2 * v5;
    if ((v5 & 1) == 0)
    {
      return v3;
    }
  }

  [v3 addObject:&unk_1F579B7C0];
  return v3;
}

+ (unsigned)capabilitiesBitmapWithCapabilities:(unsigned __int8)a3
{
  if (a3 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (a3 == 2)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

@end