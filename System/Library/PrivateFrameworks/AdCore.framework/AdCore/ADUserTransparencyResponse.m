@interface ADUserTransparencyResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ADUserTransparencyResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADUserTransparencyResponse;
  v4 = [(ADUserTransparencyResponse *)&v8 description];
  v5 = [(ADUserTransparencyResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  transparencyDetails = self->_transparencyDetails;
  if (transparencyDetails)
  {
    v5 = [(ADTransparencyDetails *)transparencyDetails dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"transparencyDetails"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_transparencyDetails)
  {
    [ADUserTransparencyResponse writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ADTransparencyDetails *)self->_transparencyDetails copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    transparencyDetails = self->_transparencyDetails;
    if (transparencyDetails | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  transparencyDetails = self->_transparencyDetails;
  v6 = v4[1];
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