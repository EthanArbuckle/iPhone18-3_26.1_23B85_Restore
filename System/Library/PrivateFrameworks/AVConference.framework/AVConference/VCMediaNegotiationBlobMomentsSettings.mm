@interface VCMediaNegotiationBlobMomentsSettings
+ (unsigned)avcMomentsCapabilitiesForMultiwayMomentsCapabilities:(int)capabilities;
+ (unsigned)capabilitiesBitmapWithCapabilities:(unsigned __int8)capabilities;
- (BOOL)isEqual:(id)equal;
- (VCMediaNegotiationBlobMomentsSettings)initWithVideoCodecs:(id)codecs imageTypes:(id)types capabilities:(unsigned __int8)capabilities multiwayCapabilities:(unsigned __int8)multiwayCapabilities;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)newImageTypeSet;
- (id)newVideoCodecSet;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSupportedImageTypes:(BOOL)types;
- (void)setHasSupportedVideoCodecs:(BOOL)codecs;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobMomentsSettings

- (void)setHasSupportedVideoCodecs:(BOOL)codecs
{
  if (codecs)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSupportedImageTypes:(BOOL)types
{
  if (types)
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_capabilities), @"capabilities"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_supportedImageTypes), @"supportedImageTypes"}];
    if ((*&self->_has & 1) == 0)
    {
      return dictionary;
    }

    goto LABEL_4;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_supportedVideoCodecs), @"supportedVideoCodecs"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_multiwayCapabilities), @"multiwayCapabilities"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  *(to + 2) = self->_capabilities;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 5) = self->_supportedVideoCodecs;
    *(to + 24) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return;
      }

LABEL_7:
      *(to + 3) = self->_multiwayCapabilities;
      *(to + 24) |= 1u;
      return;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_supportedImageTypes;
  *(to + 24) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_capabilities != *(equal + 2))
    {
LABEL_17:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 24) & 4) == 0 || self->_supportedVideoCodecs != *(equal + 5))
      {
        goto LABEL_17;
      }
    }

    else if ((*(equal + 24) & 4) != 0)
    {
      goto LABEL_17;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 24) & 2) == 0 || self->_supportedImageTypes != *(equal + 4))
      {
        goto LABEL_17;
      }
    }

    else if ((*(equal + 24) & 2) != 0)
    {
      goto LABEL_17;
    }

    LOBYTE(v5) = (*(equal + 24) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_multiwayCapabilities != *(equal + 3))
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

- (void)mergeFrom:(id)from
{
  self->_capabilities = *(from + 2);
  v3 = *(from + 24);
  if ((v3 & 4) != 0)
  {
    self->_supportedVideoCodecs = *(from + 5);
    *&self->_has |= 4u;
    v3 = *(from + 24);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        return;
      }

LABEL_7:
      self->_multiwayCapabilities = *(from + 3);
      *&self->_has |= 1u;
      return;
    }
  }

  else if ((*(from + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_supportedImageTypes = *(from + 4);
  *&self->_has |= 2u;
  if (*(from + 24))
  {
    goto LABEL_7;
  }
}

+ (unsigned)avcMomentsCapabilitiesForMultiwayMomentsCapabilities:(int)capabilities
{
  if ((capabilities & 4) != 0)
  {
    return 7;
  }

  else
  {
    return (capabilities >> 1) & 1;
  }
}

- (VCMediaNegotiationBlobMomentsSettings)initWithVideoCodecs:(id)codecs imageTypes:(id)types capabilities:(unsigned __int8)capabilities multiwayCapabilities:(unsigned __int8)multiwayCapabilities
{
  multiwayCapabilitiesCopy = multiwayCapabilities;
  capabilitiesCopy = capabilities;
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
    v11 = [codecs countByEnumeratingWithState:&v31 objects:v30 count:16];
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
          objc_enumerationMutation(codecs);
        }

        intValue = [*(*(&v31 + 1) + 8 * i) intValue];
        if (intValue == 123)
        {
          v16 = 1;
        }

        else
        {
          if (intValue != 100)
          {
            continue;
          }

          v16 = 2;
        }

        v10->_supportedVideoCodecs |= v16;
        *&v10->_has |= 4u;
      }

      v12 = [codecs countByEnumeratingWithState:&v31 objects:v30 count:16];
      if (!v12)
      {
LABEL_14:
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v17 = [types countByEnumeratingWithState:&v26 objects:v25 count:16];
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
              objc_enumerationMutation(types);
            }

            intValue2 = [*(*(&v26 + 1) + 8 * j) intValue];
            if (intValue2)
            {
              if (intValue2 != 1)
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

          v18 = [types countByEnumeratingWithState:&v26 objects:v25 count:16];
          if (!v18)
          {
LABEL_26:
            [(VCMediaNegotiationBlobMomentsSettings *)v10 setCapabilities:[VCMediaNegotiationBlobMomentsSettings capabilitiesBitmapWithCapabilities:capabilitiesCopy]];
            [(VCMediaNegotiationBlobMomentsSettings *)v10 setMultiwayCapabilities:[VCMediaNegotiationBlobMomentsSettings capabilitiesBitmapWithCapabilities:multiwayCapabilitiesCopy]];
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

+ (unsigned)capabilitiesBitmapWithCapabilities:(unsigned __int8)capabilities
{
  if (capabilities == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (capabilities == 2)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

@end