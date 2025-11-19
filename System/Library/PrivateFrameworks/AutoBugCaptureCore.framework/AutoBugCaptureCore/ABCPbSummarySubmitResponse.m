@interface ABCPbSummarySubmitResponse
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABCPbSummarySubmitResponse

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ABCPbSummarySubmitResponse;
  v4 = [(ABCPbSummarySubmitResponse *)&v8 description];
  v5 = [(ABCPbSummarySubmitResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  status = self->_status;
  if (status)
  {
    [v3 setObject:status forKey:@"status"];
  }

  message = self->_message;
  if (message)
  {
    [v4 setObject:message forKey:@"message"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_status)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_message)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_status)
  {
    [v4 setStatus:?];
    v4 = v5;
  }

  if (self->_message)
  {
    [v5 setMessage:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_status copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_message copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((status = self->_status, !(status | v4[2])) || -[NSString isEqual:](status, "isEqual:")))
  {
    message = self->_message;
    if (message | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(ABCPbSummarySubmitResponse *)self setStatus:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(ABCPbSummarySubmitResponse *)self setMessage:?];
    v4 = v5;
  }
}

@end