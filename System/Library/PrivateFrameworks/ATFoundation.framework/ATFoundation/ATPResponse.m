@interface ATPResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATPResponse

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  error = self->_error;
  v6 = v4[1];
  if (error)
  {
    if (v6)
    {
      [(ATPError *)error mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ATPResponse *)self setError:?];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    error = self->_error;
    if (error | v4[1])
    {
      v6 = [(ATPError *)error isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ATPError *)self->_error copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  error = self->_error;
  if (error)
  {
    [a3 setError:error];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  error = self->_error;
  if (error)
  {
    v5 = [(ATPError *)error dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"error"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATPResponse;
  v4 = [(ATPResponse *)&v8 description];
  v5 = [(ATPResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end