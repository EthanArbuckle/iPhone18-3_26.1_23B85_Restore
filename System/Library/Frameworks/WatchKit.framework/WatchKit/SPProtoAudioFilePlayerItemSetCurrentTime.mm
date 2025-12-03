@interface SPProtoAudioFilePlayerItemSetCurrentTime
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sockPuppetMessage;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SPProtoAudioFilePlayerItemSetCurrentTime

- (id)sockPuppetMessage
{
  v3 = objc_alloc_init(SPProtoAudioFilePlayerItem);
  [(SPProtoAudioFilePlayerItem *)v3 setSetItemCurrentTime:self];
  sockPuppetMessage = [(SPProtoAudioFilePlayerItem *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFilePlayerItemSetCurrentTime;
  v4 = [(SPProtoAudioFilePlayerItemSetCurrentTime *)&v8 description];
  dictionaryRepresentation = [(SPProtoAudioFilePlayerItemSetCurrentTime *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_currentTime];
    [v4 setObject:v6 forKey:@"currentTime"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  identifier = self->_identifier;
  v7 = toCopy;
  PBDataWriterWriteStringField();
  if (*&self->_has)
  {
    currentTime = self->_currentTime;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setIdentifier:self->_identifier];
  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_currentTime;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_currentTime;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 2))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_currentTime == *(equalCopy + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    currentTime = self->_currentTime;
    if (currentTime < 0.0)
    {
      currentTime = -currentTime;
    }

    *v4.i64 = floor(currentTime + 0.5);
    v8 = (currentTime - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(SPProtoAudioFilePlayerItemSetCurrentTime *)self setIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    self->_currentTime = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end