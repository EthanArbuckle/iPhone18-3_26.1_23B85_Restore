@interface ModelKeyServerAPISignedKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ModelKeyServerAPISignedKey

- (id)description
{
  v7.receiver = self;
  v7.super_class = ModelKeyServerAPISignedKey;
  v3 = [(ModelKeyServerAPISignedKey *)&v7 description];
  dictionaryRepresentation = [(ModelKeyServerAPISignedKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  data = self->_data;
  if (data)
  {
    [v3 setObject:data forKey:@"data"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_data)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  data = self->_data;
  if (data)
  {
    [to setData:data];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_data copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    data = self->_data;
    if (data | equalCopy[1])
    {
      v6 = [(NSData *)data isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(ModelKeyServerAPISignedKey *)self setData:?];
  }
}

@end