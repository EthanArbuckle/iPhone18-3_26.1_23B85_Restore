@interface ATPRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATPRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(ATPRequest *)self setCommand:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(ATPRequest *)self setDataClass:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((command = self->_command, !(command | v4[1])) || -[NSString isEqual:](command, "isEqual:")))
  {
    dataClass = self->_dataClass;
    if (dataClass | v4[2])
    {
      v7 = [(NSString *)dataClass isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_command copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_dataClass copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_command)
  {
    [v4 setCommand:?];
    v4 = v5;
  }

  if (self->_dataClass)
  {
    [v5 setDataClass:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_command)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_dataClass)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  command = self->_command;
  if (command)
  {
    [v3 setObject:command forKey:@"command"];
  }

  dataClass = self->_dataClass;
  if (dataClass)
  {
    [v4 setObject:dataClass forKey:@"dataClass"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATPRequest;
  v4 = [(ATPRequest *)&v8 description];
  v5 = [(ATPRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end