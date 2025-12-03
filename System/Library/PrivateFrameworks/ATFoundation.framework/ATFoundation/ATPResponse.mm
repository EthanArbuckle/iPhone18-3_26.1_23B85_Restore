@interface ATPResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATPResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  error = self->_error;
  v6 = fromCopy[1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    error = self->_error;
    if (error | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ATPError *)self->_error copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  error = self->_error;
  if (error)
  {
    [to setError:error];
  }
}

- (void)writeTo:(id)to
{
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  error = self->_error;
  if (error)
  {
    dictionaryRepresentation = [(ATPError *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"error"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATPResponse;
  v4 = [(ATPResponse *)&v8 description];
  dictionaryRepresentation = [(ATPResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end