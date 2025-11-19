@interface Plmn
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation Plmn

- (id)description
{
  v7.receiver = self;
  v7.super_class = Plmn;
  v3 = [(Plmn *)&v7 description];
  v4 = [(Plmn *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  encodedPlmn = self->_encodedPlmn;
  if (encodedPlmn)
  {
    [v3 setObject:encodedPlmn forKey:@"encoded_plmn"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_encodedPlmn)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  encodedPlmn = self->_encodedPlmn;
  if (encodedPlmn)
  {
    [a3 setEncodedPlmn:encodedPlmn];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_encodedPlmn copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    encodedPlmn = self->_encodedPlmn;
    if (encodedPlmn | v4[1])
    {
      v6 = [(NSData *)encodedPlmn isEqual:?];
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
    [(Plmn *)self setEncodedPlmn:?];
  }
}

@end