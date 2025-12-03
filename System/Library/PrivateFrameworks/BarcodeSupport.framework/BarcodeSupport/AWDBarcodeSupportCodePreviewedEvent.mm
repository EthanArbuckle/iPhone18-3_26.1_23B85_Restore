@interface AWDBarcodeSupportCodePreviewedEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPreviewContentType:(id)type;
- (int)previewContentType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPreviewContentType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDBarcodeSupportCodePreviewedEvent

- (int)previewContentType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_previewContentType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPreviewContentType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsPreviewContentType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"URL"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"DATA_DETECTORS_SCANNED_RESULT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CALENDAR_EVENT"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CONTACT"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"STRING"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"OTHER"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDBarcodeSupportCodePreviewedEvent;
  v4 = [(AWDBarcodeSupportCodePreviewedEvent *)&v8 description];
  dictionaryRepresentation = [(AWDBarcodeSupportCodePreviewedEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    previewContentType = self->_previewContentType;
    if (previewContentType >= 6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_previewContentType];
    }

    else
    {
      v7 = off_278CFE758[previewContentType];
    }

    [dictionary setObject:v7 forKey:@"previewContentType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    previewContentType = self->_previewContentType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_previewContentType;
    *(toCopy + 20) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 4) = self->_previewContentType;
    *(result + 20) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_previewContentType != *(equalCopy + 4))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
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
  v3 = 2654435761 * self->_previewContentType;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 20);
  }

  if ((v5 & 2) != 0)
  {
    self->_previewContentType = *(fromCopy + 4);
    *&self->_has |= 2u;
  }
}

@end