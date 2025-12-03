@interface BCReadingStatisticsProtoTOCEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BCReadingStatisticsProtoTOCEntry

- (id)description
{
  v7.receiver = self;
  v7.super_class = BCReadingStatisticsProtoTOCEntry;
  v3 = [(BCReadingStatisticsProtoTOCEntry *)&v7 description];
  dictionaryRepresentation = [(BCReadingStatisticsProtoTOCEntry *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  href = self->_href;
  if (href)
  {
    [v3 setObject:href forKey:@"href"];
  }

  v6 = [NSNumber numberWithDouble:self->_readProportion];
  [v4 setObject:v6 forKey:@"readProportion"];

  v7 = [NSNumber numberWithDouble:self->_timestamp];
  [v4 setObject:v7 forKey:@"timestamp"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteStringField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
}

- (void)copyTo:(id)to
{
  href = self->_href;
  toCopy = to;
  [toCopy setHref:href];
  toCopy[1] = self->_readProportion;
  toCopy[2] = self->_timestamp;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_href copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v5[1] = *&self->_readProportion;
  v5[2] = *&self->_timestamp;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((href = self->_href, !(href | *(equalCopy + 3))) || -[NSString isEqual:](href, "isEqual:")) && self->_readProportion == *(equalCopy + 1) && self->_timestamp == *(equalCopy + 2);

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_href hash];
  readProportion = self->_readProportion;
  if (readProportion < 0.0)
  {
    readProportion = -readProportion;
  }

  *v5.i64 = floor(readProportion + 0.5);
  v8 = readProportion - *v5.i64;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  v11 = vbslq_s8(v10, v6, v5);
  v12 = v8 * 1.84467441e19;
  v13 = 2654435761u * *v11.i64;
  v14 = v13 + v12;
  if (v12 <= 0.0)
  {
    v14 = 2654435761u * *v11.i64;
  }

  v15 = v13 - fabs(v12);
  if (v12 >= 0.0)
  {
    v15 = v14;
  }

  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v4.i64 = floor(timestamp + 0.5);
  v17 = (timestamp - *v4.i64) * 1.84467441e19;
  *v11.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v18 = 2654435761u * *vbslq_s8(v10, v11, v4).i64;
  v19 = v18 + v17;
  v20 = fabs(v17);
  if (v17 <= 0.0)
  {
    v19 = v18;
  }

  v21 = v18 - v20;
  if (v17 >= 0.0)
  {
    v21 = v19;
  }

  return v15 ^ v3 ^ v21;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    v5 = fromCopy;
    [(BCReadingStatisticsProtoTOCEntry *)self setHref:?];
    fromCopy = v5;
  }

  self->_readProportion = fromCopy[1];
  self->_timestamp = fromCopy[2];
}

@end