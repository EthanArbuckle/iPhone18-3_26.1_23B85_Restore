@interface VCMediaNegotiationBlobCaptionsSettings
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCanDisplayCaptions:(BOOL)captions;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobCaptionsSettings

- (void)setHasCanDisplayCaptions:(BOOL)captions
{
  if (captions)
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
  v3.super_class = VCMediaNegotiationBlobCaptionsSettings;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobCaptionsSettings description](&v3, sel_description), -[VCMediaNegotiationBlobCaptionsSettings dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_canDisplayCaptions), @"canDisplayCaptions"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_senderLanguages), @"senderLanguages"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

LABEL_5:
    *(to + 2) = self->_senderLanguages;
    *(to + 16) |= 1u;
    return;
  }

  *(to + 12) = self->_canDisplayCaptions;
  *(to + 16) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 12) = self->_canDisplayCaptions;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_senderLanguages;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 16) & 2) == 0)
      {
        goto LABEL_9;
      }

      if (self->_canDisplayCaptions)
      {
        if ((*(equal + 12) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (*(equal + 12))
      {
        goto LABEL_9;
      }
    }

    else if ((*(equal + 16) & 2) != 0)
    {
      goto LABEL_9;
    }

    LOBYTE(v5) = (*(equal + 16) & 1) == 0;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    if ((*(equal + 16) & 1) != 0 && self->_senderLanguages == *(equal + 2))
    {
      LOBYTE(v5) = 1;
      return v5;
    }

LABEL_9:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_canDisplayCaptions;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_senderLanguages;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 16) & 2) == 0)
  {
    if ((*(from + 16) & 1) == 0)
    {
      return;
    }

LABEL_5:
    self->_senderLanguages = *(from + 2);
    *&self->_has |= 1u;
    return;
  }

  self->_canDisplayCaptions = *(from + 12);
  *&self->_has |= 2u;
  if (*(from + 16))
  {
    goto LABEL_5;
  }
}

@end