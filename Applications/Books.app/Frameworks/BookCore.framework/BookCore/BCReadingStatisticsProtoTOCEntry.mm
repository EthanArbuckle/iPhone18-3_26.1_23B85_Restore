@interface BCReadingStatisticsProtoTOCEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCReadingStatisticsProtoTOCEntry

- (id)description
{
  v7.receiver = self;
  v7.super_class = BCReadingStatisticsProtoTOCEntry;
  v3 = [(BCReadingStatisticsProtoTOCEntry *)&v7 description];
  v4 = [(BCReadingStatisticsProtoTOCEntry *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteStringField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
}

- (void)copyTo:(id)a3
{
  href = self->_href;
  v5 = a3;
  [v5 setHref:href];
  v5[1] = self->_readProportion;
  v5[2] = self->_timestamp;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_href copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v5[1] = *&self->_readProportion;
  v5[2] = *&self->_timestamp;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((href = self->_href, !(href | *(v4 + 3))) || -[NSString isEqual:](href, "isEqual:")) && self->_readProportion == *(v4 + 1) && self->_timestamp == *(v4 + 2);

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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    v5 = v4;
    [(BCReadingStatisticsProtoTOCEntry *)self setHref:?];
    v4 = v5;
  }

  self->_readProportion = v4[1];
  self->_timestamp = v4[2];
}

@end