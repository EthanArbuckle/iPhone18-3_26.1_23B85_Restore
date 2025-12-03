@interface ADUserTransparencyResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ADUserTransparencyResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADUserTransparencyResponse;
  v4 = [(ADUserTransparencyResponse *)&v8 description];
  dictionaryRepresentation = [(ADUserTransparencyResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  transparencyDetails = self->_transparencyDetails;
  if (transparencyDetails)
  {
    dictionaryRepresentation = [(ADTransparencyDetails *)transparencyDetails dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"transparencyDetails"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_transparencyDetails)
  {
    [ADUserTransparencyResponse writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ADTransparencyDetails *)self->_transparencyDetails copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    transparencyDetails = self->_transparencyDetails;
    if (transparencyDetails | equalCopy[1])
    {
      v6 = [(ADTransparencyDetails *)transparencyDetails isEqual:?];
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
  fromCopy = from;
  transparencyDetails = self->_transparencyDetails;
  v6 = fromCopy[1];
  if (transparencyDetails)
  {
    if (v6)
    {
      [(ADTransparencyDetails *)transparencyDetails mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ADUserTransparencyResponse *)self setTransparencyDetails:?];
  }

  MEMORY[0x2821F96F8]();
}

@end