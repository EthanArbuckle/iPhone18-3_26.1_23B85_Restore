@interface ATPRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATPRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(ATPRequest *)self setCommand:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(ATPRequest *)self setDataClass:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((command = self->_command, !(command | equalCopy[1])) || -[NSString isEqual:](command, "isEqual:")))
  {
    dataClass = self->_dataClass;
    if (dataClass | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_command copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_dataClass copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_command)
  {
    [toCopy setCommand:?];
    toCopy = v5;
  }

  if (self->_dataClass)
  {
    [v5 setDataClass:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_command)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_dataClass)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  command = self->_command;
  if (command)
  {
    [dictionary setObject:command forKey:@"command"];
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
  dictionaryRepresentation = [(ATPRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end