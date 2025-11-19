@interface SPProtoAudioFilePlayerStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sockPuppetMessageForPlayerItemSetStatus;
- (id)sockPuppetMessageForQueuePlayerSetStatus;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoAudioFilePlayerStatus

- (void)setHasStatus:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFilePlayerStatus;
  v4 = [(SPProtoAudioFilePlayerStatus *)&v8 description];
  v5 = [(SPProtoAudioFilePlayerStatus *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }

  if (self->_errorDict)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 10) = self->_status;
    *(v4 + 44) |= 2u;
  }

  if (self->_errorDomain)
  {
    [v5 setErrorDomain:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_errorCode;
    *(v4 + 44) |= 1u;
  }

  if (self->_errorDict)
  {
    [v5 setErrorDict:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_status;
    *(v5 + 44) |= 2u;
  }

  v8 = [(NSString *)self->_errorDomain copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_errorCode;
    *(v5 + 44) |= 1u;
  }

  v10 = [(NSData *)self->_errorDict copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  has = self->_has;
  v7 = *(v4 + 44);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_status != *(v4 + 10))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_19;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(v4 + 3))
  {
    if (![(NSString *)errorDomain isEqual:?])
    {
LABEL_19:
      v11 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  v9 = *(v4 + 44);
  if (has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_errorCode != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_19;
  }

  errorDict = self->_errorDict;
  if (errorDict | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(SPProtoAudioFilePlayerStatus *)self setIdentifier:?];
    v4 = v5;
  }

  if ((*(v4 + 44) & 2) != 0)
  {
    self->_status = *(v4 + 10);
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    [(SPProtoAudioFilePlayerStatus *)self setErrorDomain:?];
    v4 = v5;
  }

  if (*(v4 + 44))
  {
    self->_errorCode = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(SPProtoAudioFilePlayerStatus *)self setErrorDict:?];
    v4 = v5;
  }
}

- (id)sockPuppetMessageForPlayerItemSetStatus
{
  v3 = objc_alloc_init(SPProtoAudioFilePlayerItem);
  [(SPProtoAudioFilePlayerItem *)v3 setSetStatus:self];
  v4 = [(SPProtoAudioFilePlayerItem *)v3 sockPuppetMessage];

  return v4;
}

- (id)sockPuppetMessageForQueuePlayerSetStatus
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setSetStatus:self];
  v4 = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return v4;
}

@end