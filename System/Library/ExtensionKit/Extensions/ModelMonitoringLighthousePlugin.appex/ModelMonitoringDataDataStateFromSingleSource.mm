@interface ModelMonitoringDataDataStateFromSingleSource
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ModelMonitoringDataDataStateFromSingleSource

- (id)description
{
  v7.receiver = self;
  v7.super_class = ModelMonitoringDataDataStateFromSingleSource;
  v3 = [(ModelMonitoringDataDataStateFromSingleSource *)&v7 description];
  v4 = [(ModelMonitoringDataDataStateFromSingleSource *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  sourceName = self->_sourceName;
  if (sourceName)
  {
    [v3 setObject:sourceName forKey:@"sourceName"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithInt:self->_recordCount];
    [v4 setObject:v6 forKey:@"recordCount"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sourceName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    recordCount = self->_recordCount;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_sourceName)
  {
    v5 = v4;
    [v4 setSourceName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_recordCount;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sourceName copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_recordCount;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  sourceName = self->_sourceName;
  if (sourceName | *(v4 + 2))
  {
    if (![(NSString *)sourceName isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_recordCount == *(v4 + 2))
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
  v3 = [(NSString *)self->_sourceName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_recordCount;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v5 = v4;
    [(ModelMonitoringDataDataStateFromSingleSource *)self setSourceName:?];
    v4 = v5;
  }

  if (v4[6])
  {
    self->_recordCount = v4[2];
    *&self->_has |= 1u;
  }
}

@end