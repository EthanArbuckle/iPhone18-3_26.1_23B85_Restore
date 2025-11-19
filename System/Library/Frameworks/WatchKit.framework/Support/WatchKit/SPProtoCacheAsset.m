@interface SPProtoCacheAsset
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoCacheAsset

- (id)description
{
  v7.receiver = self;
  v7.super_class = SPProtoCacheAsset;
  v3 = [(SPProtoCacheAsset *)&v7 description];
  v4 = [(SPProtoCacheAsset *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInt:self->_state];
  [v3 setObject:v4 forKey:@"state"];

  v5 = [NSNumber numberWithUnsignedLongLong:self->_size];
  [v3 setObject:v5 forKey:@"size"];

  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  v7 = [NSNumber numberWithDouble:self->_accessDate];
  [v3 setObject:v7 forKey:@"accessDate"];

  return v3;
}

- (void)writeTo:(id)a3
{
  state = self->_state;
  v8 = a3;
  PBDataWriterWriteUint32Field();
  size = self->_size;
  PBDataWriterWriteUint64Field();
  key = self->_key;
  PBDataWriterWriteStringField();
  accessDate = self->_accessDate;
  PBDataWriterWriteDoubleField();
}

- (void)copyTo:(id)a3
{
  *(a3 + 8) = self->_state;
  *(a3 + 2) = self->_size;
  key = self->_key;
  v5 = a3;
  [v5 setKey:key];
  v5[1] = self->_accessDate;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[8] = self->_state;
  *(v5 + 2) = self->_size;
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 3);
  *(v5 + 3) = v6;

  *(v5 + 1) = *&self->_accessDate;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && self->_state == *(v4 + 8) && self->_size == *(v4 + 2) && ((key = self->_key, !(key | *(v4 + 3))) || -[NSString isEqual:](key, "isEqual:")) && self->_accessDate == *(v4 + 1);

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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_state = *(v4 + 8);
  self->_size = *(v4 + 2);
  if (*(v4 + 3))
  {
    v5 = v4;
    [(SPProtoCacheAsset *)self setKey:?];
    v4 = v5;
  }

  self->_accessDate = *(v4 + 1);
}

@end