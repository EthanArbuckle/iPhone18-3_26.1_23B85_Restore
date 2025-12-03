@interface SPProtoCacheAsset
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SPProtoCacheAsset

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoCacheAsset;
  v4 = [(SPProtoCacheAsset *)&v8 description];
  dictionaryRepresentation = [(SPProtoCacheAsset *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_state];
  [dictionary setObject:v4 forKey:@"state"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_size];
  [dictionary setObject:v5 forKey:@"size"];

  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_accessDate];
  [dictionary setObject:v7 forKey:@"accessDate"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  state = self->_state;
  toCopy = to;
  PBDataWriterWriteUint32Field();
  size = self->_size;
  PBDataWriterWriteUint64Field();
  key = self->_key;
  PBDataWriterWriteStringField();
  accessDate = self->_accessDate;
  PBDataWriterWriteDoubleField();
}

- (void)copyTo:(id)to
{
  *(to + 8) = self->_state;
  *(to + 2) = self->_size;
  key = self->_key;
  toCopy = to;
  [toCopy setKey:key];
  toCopy[1] = self->_accessDate;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 32) = self->_state;
  *(v5 + 16) = self->_size;
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_accessDate;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_state == *(equalCopy + 8) && self->_size == *(equalCopy + 2) && ((key = self->_key, !(key | *(equalCopy + 3))) || -[NSString isEqual:](key, "isEqual:")) && self->_accessDate == *(equalCopy + 1);

  return v6;
}

- (unint64_t)hash
{
  state = self->_state;
  size = self->_size;
  v5 = [(NSString *)self->_key hash];
  accessDate = self->_accessDate;
  if (accessDate < 0.0)
  {
    accessDate = -accessDate;
  }

  *v6.i64 = floor(accessDate + 0.5);
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v7.i64[0] = vbslq_s8(vnegq_f64(v9), v7, v6).i64[0];
  v10 = (accessDate - *v6.i64) * 1.84467441e19;
  v11 = 2654435761u * *v7.i64;
  v12 = v11 + v10;
  if (v10 <= 0.0)
  {
    v12 = 2654435761u * *v7.i64;
  }

  v13 = v11 - fabs(v10);
  if (v10 >= 0.0)
  {
    v13 = v12;
  }

  return (2654435761u * size) ^ (2654435761 * state) ^ v5 ^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_state = *(fromCopy + 8);
  self->_size = *(fromCopy + 2);
  if (*(fromCopy + 3))
  {
    v5 = fromCopy;
    [(SPProtoCacheAsset *)self setKey:?];
    fromCopy = v5;
  }

  self->_accessDate = *(fromCopy + 1);
}

@end