@interface NWPBHostEndpoint
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation NWPBHostEndpoint

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((hostname = self->_hostname, !(hostname | equalCopy[1])) || -[NSString isEqual:](hostname, "isEqual:")))
  {
    port = self->_port;
    if (port | equalCopy[2])
    {
      v7 = [(NSString *)port isEqual:?];
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
  v6 = [(NSString *)self->_hostname copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_port copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_hostname)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_port)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  hostname = self->_hostname;
  if (hostname)
  {
    [dictionary setObject:hostname forKey:@"hostname"];
  }

  port = self->_port;
  if (port)
  {
    [v4 setObject:port forKey:@"port"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBHostEndpoint;
  v4 = [(NWPBHostEndpoint *)&v8 description];
  dictionaryRepresentation = [(NWPBHostEndpoint *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end