@interface VCMediaNegotiationFaceTimeSettings
- (BOOL)SIPDisabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)secureMessagingRequired;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)capabilities;
- (unsigned)mediaControlInfoFECFeedbackVersion;
- (unsigned)mediaControlInfoSubVersion;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLinkProbingCapabilityVersion:(BOOL)version;
- (void)setHasMediaControlInfoSubVersion:(BOOL)version;
- (void)setHasOneToOneModeSupported:(BOOL)supported;
- (void)setHasSwitches:(BOOL)switches;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationFaceTimeSettings

- (BOOL)SIPDisabled
{
  hasCapabilities = [(VCMediaNegotiationFaceTimeSettings *)self hasCapabilities];
  if (hasCapabilities)
  {
    return (LOBYTE(self->_capabilities) >> 1) & 1;
  }

  return hasCapabilities;
}

- (BOOL)secureMessagingRequired
{
  hasCapabilities = [(VCMediaNegotiationFaceTimeSettings *)self hasCapabilities];
  if (hasCapabilities)
  {
    LOBYTE(hasCapabilities) = self->_capabilities & 1;
  }

  return hasCapabilities;
}

- (unsigned)mediaControlInfoFECFeedbackVersion
{
  if ([(VCMediaNegotiationFaceTimeSettings *)self hasMediaControlInfoSubVersion])
  {
    return self->_mediaControlInfoSubVersion;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (unsigned)capabilities
{
  if (*&self->_has)
  {
    return self->_capabilities;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSwitches:(BOOL)switches
{
  if (switches)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasOneToOneModeSupported:(BOOL)supported
{
  if (supported)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (unsigned)mediaControlInfoSubVersion
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_mediaControlInfoSubVersion;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMediaControlInfoSubVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLinkProbingCapabilityVersion:(BOOL)version
{
  if (version)
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
  v3.super_class = VCMediaNegotiationFaceTimeSettings;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationFaceTimeSettings description](&v3, sel_description), -[VCMediaNegotiationFaceTimeSettings dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_capabilities), @"capabilities"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_switches), @"switches"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_mediaControlInfoSubVersion), @"mediaControlInfoSubVersion"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_6;
  }

LABEL_10:
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_oneToOneModeSupported), @"oneToOneModeSupported"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_linkProbingCapabilityVersion), @"linkProbingCapabilityVersion"}];
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
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_11:

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 2) = self->_capabilities;
    *(to + 28) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(to + 5) = self->_switches;
  *(to + 28) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(to + 24) = self->_oneToOneModeSupported;
  *(to + 28) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_11:
    *(to + 3) = self->_linkProbingCapabilityVersion;
    *(to + 28) |= 2u;
    return;
  }

LABEL_10:
  *(to + 4) = self->_mediaControlInfoSubVersion;
  *(to + 28) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_capabilities;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_switches;
  *(result + 28) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 24) = self->_oneToOneModeSupported;
  *(result + 28) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 4) = self->_mediaControlInfoSubVersion;
  *(result + 28) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 3) = self->_linkProbingCapabilityVersion;
  *(result + 28) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if (*&self->_has)
  {
    if ((*(equal + 28) & 1) == 0 || self->_capabilities != *(equal + 2))
    {
      goto LABEL_28;
    }
  }

  else if (*(equal + 28))
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equal + 28) & 8) == 0 || self->_switches != *(equal + 5))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equal + 28) & 8) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(equal + 28) & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 28) & 0x10) == 0)
  {
    goto LABEL_28;
  }

  if (self->_oneToOneModeSupported)
  {
    if ((*(equal + 24) & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  if (*(equal + 24))
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 28) & 4) == 0 || self->_mediaControlInfoSubVersion != *(equal + 4))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equal + 28) & 4) != 0)
  {
    goto LABEL_28;
  }

  LOBYTE(v5) = (*(equal + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 28) & 2) == 0 || self->_linkProbingCapabilityVersion != *(equal + 3))
    {
      goto LABEL_28;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_capabilities;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_switches;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_oneToOneModeSupported;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_mediaControlInfoSubVersion;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_linkProbingCapabilityVersion;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if (v3)
  {
    self->_capabilities = *(from + 2);
    *&self->_has |= 1u;
    v3 = *(from + 28);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(from + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_switches = *(from + 5);
  *&self->_has |= 8u;
  v3 = *(from + 28);
  if ((v3 & 0x10) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  self->_oneToOneModeSupported = *(from + 24);
  *&self->_has |= 0x10u;
  v3 = *(from + 28);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_11:
    self->_linkProbingCapabilityVersion = *(from + 3);
    *&self->_has |= 2u;
    return;
  }

LABEL_10:
  self->_mediaControlInfoSubVersion = *(from + 4);
  *&self->_has |= 4u;
  if ((*(from + 28) & 2) != 0)
  {
    goto LABEL_11;
  }
}

@end