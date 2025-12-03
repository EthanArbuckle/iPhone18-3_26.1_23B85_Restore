@interface SPProtoAudioFilePlayerStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sockPuppetMessageForPlayerItemSetStatus;
- (id)sockPuppetMessageForQueuePlayerSetStatus;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation SPProtoAudioFilePlayerStatus

- (void)setHasStatus:(BOOL)status
{
  if (status)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFilePlayerStatus;
  v4 = [(SPProtoAudioFilePlayerStatus *)&v8 description];
  dictionaryRepresentation = [(SPProtoAudioFilePlayerStatus *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_status];
    [v4 setObject:v6 forKey:@"status"];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v4 setObject:errorDomain forKey:@"errorDomain"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_errorCode];
    [v4 setObject:v8 forKey:@"errorCode"];
  }

  errorDict = self->_errorDict;
  if (errorDict)
  {
    [v4 setObject:errorDict forKey:@"errorDict"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }

  if (self->_errorDict)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 10) = self->_status;
    *(toCopy + 44) |= 2u;
  }

  if (self->_errorDomain)
  {
    [v5 setErrorDomain:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_errorCode;
    *(toCopy + 44) |= 1u;
  }

  if (self->_errorDict)
  {
    [v5 setErrorDict:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_status;
    *(v5 + 44) |= 2u;
  }

  v8 = [(NSString *)self->_errorDomain copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_errorCode;
    *(v5 + 44) |= 1u;
  }

  v10 = [(NSData *)self->_errorDict copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 44);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_status != *(equalCopy + 10))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_19;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(equalCopy + 3))
  {
    if (![(NSString *)errorDomain isEqual:?])
    {
LABEL_19:
      v11 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  v9 = *(equalCopy + 44);
  if (has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_errorCode != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_19;
  }

  errorDict = self->_errorDict;
  if (errorDict | *(equalCopy + 2))
  {
    v11 = [(NSData *)errorDict isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_20:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_status;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_errorDomain hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_errorCode;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSData *)self->_errorDict hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(SPProtoAudioFilePlayerStatus *)self setIdentifier:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 44) & 2) != 0)
  {
    self->_status = *(fromCopy + 10);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    [(SPProtoAudioFilePlayerStatus *)self setErrorDomain:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 44))
  {
    self->_errorCode = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(SPProtoAudioFilePlayerStatus *)self setErrorDict:?];
    fromCopy = v5;
  }
}

- (id)sockPuppetMessageForPlayerItemSetStatus
{
  v3 = objc_alloc_init(SPProtoAudioFilePlayerItem);
  [(SPProtoAudioFilePlayerItem *)v3 setSetStatus:self];
  sockPuppetMessage = [(SPProtoAudioFilePlayerItem *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)sockPuppetMessageForQueuePlayerSetStatus
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setSetStatus:self];
  sockPuppetMessage = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

@end