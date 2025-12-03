@interface SPProtoAudioFileQueuePlayerSetRate
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

@implementation SPProtoAudioFileQueuePlayerSetRate

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoAudioFileQueuePlayerSetRate;
  v4 = [(SPProtoAudioFileQueuePlayerSetRate *)&v8 description];
  dictionaryRepresentation = [(SPProtoAudioFileQueuePlayerSetRate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  *&v4 = self->_rate;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v5 setObject:v7 forKey:@"rate"];

  return v5;
}

- (void)writeTo:(id)to
{
  identifier = self->_identifier;
  toCopy = to;
  PBDataWriterWriteStringField();
  rate = self->_rate;
  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)to
{
  identifier = self->_identifier;
  toCopy = to;
  [toCopy setIdentifier:identifier];
  toCopy[4] = self->_rate;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_rate;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | *(equalCopy + 1))) || -[NSString isEqual:](identifier, "isEqual:")) && self->_rate == *(equalCopy + 4);

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  rate = self->_rate;
  if (rate >= 0.0)
  {
    v7 = rate;
  }

  else
  {
    v7 = -rate;
  }

  *v4.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v4.i64[0] = vbslq_s8(vnegq_f64(v9), v5, v4).i64[0];
  v10 = 2654435761u * *v4.i64;
  v11 = v10 + v8;
  if (v8 <= 0.0)
  {
    v11 = 2654435761u * *v4.i64;
  }

  v12 = v10 - fabs(v8);
  if (v8 >= 0.0)
  {
    v12 = v11;
  }

  return v12 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(SPProtoAudioFileQueuePlayerSetRate *)self setIdentifier:?];
    fromCopy = v5;
  }

  self->_rate = fromCopy[4];
}

- (id)sockPuppetMessage
{
  v3 = objc_alloc_init(SPProtoAudioFileQueuePlayer);
  [(SPProtoAudioFileQueuePlayer *)v3 setSetRate:self];
  sockPuppetMessage = [(SPProtoAudioFileQueuePlayer *)v3 sockPuppetMessage];

  return sockPuppetMessage;
}

@end