@interface ModelMonitoringDataDataStateFromSingleSource
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ModelMonitoringDataDataStateFromSingleSource

- (id)description
{
  v7.receiver = self;
  v7.super_class = ModelMonitoringDataDataStateFromSingleSource;
  v3 = [(ModelMonitoringDataDataStateFromSingleSource *)&v7 description];
  dictionaryRepresentation = [(ModelMonitoringDataDataStateFromSingleSource *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sourceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    recordCount = self->_recordCount;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_sourceName)
  {
    v5 = toCopy;
    [toCopy setSourceName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_recordCount;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sourceName copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_recordCount;
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

  sourceName = self->_sourceName;
  if (sourceName | *(equalCopy + 2))
  {
    if (![(NSString *)sourceName isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_recordCount == *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(ModelMonitoringDataDataStateFromSingleSource *)self setSourceName:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_recordCount = fromCopy[2];
    *&self->_has |= 1u;
  }
}

@end