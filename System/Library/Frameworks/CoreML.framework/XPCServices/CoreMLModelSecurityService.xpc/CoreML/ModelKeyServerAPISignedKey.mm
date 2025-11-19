@interface ModelKeyServerAPISignedKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ModelKeyServerAPISignedKey

- (id)description
{
  v7.receiver = self;
  v7.super_class = ModelKeyServerAPISignedKey;
  v3 = [(ModelKeyServerAPISignedKey *)&v7 description];
  v4 = [(ModelKeyServerAPISignedKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  if (self->_data)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  data = self->_data;
  if (data)
  {
    [a3 setData:data];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_data copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    data = self->_data;
    if (data | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(ModelKeyServerAPISignedKey *)self setData:?];
  }
}

@end