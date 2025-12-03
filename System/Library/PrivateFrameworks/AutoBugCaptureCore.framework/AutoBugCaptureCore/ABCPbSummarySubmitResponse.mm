@interface ABCPbSummarySubmitResponse
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ABCPbSummarySubmitResponse

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ABCPbSummarySubmitResponse;
  v4 = [(ABCPbSummarySubmitResponse *)&v8 description];
  dictionaryRepresentation = [(ABCPbSummarySubmitResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  status = self->_status;
  if (status)
  {
    [dictionary setObject:status forKey:@"status"];
  }

  message = self->_message;
  if (message)
  {
    [v4 setObject:message forKey:@"message"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_status)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_message)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_status)
  {
    [toCopy setStatus:?];
    toCopy = v5;
  }

  if (self->_message)
  {
    [v5 setMessage:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_status copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_message copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((status = self->_status, !(status | equalCopy[2])) || -[NSString isEqual:](status, "isEqual:")))
  {
    message = self->_message;
    if (message | equalCopy[1])
    {
      v7 = [(NSString *)message isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(ABCPbSummarySubmitResponse *)self setStatus:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(ABCPbSummarySubmitResponse *)self setMessage:?];
    fromCopy = v5;
  }
}

@end