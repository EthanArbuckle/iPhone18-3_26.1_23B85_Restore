@interface HMRemoteEventRouterProtoConnectedClientInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMRemoteEventRouterProtoConnectedClientInfo

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(HMRemoteEventRouterProtoConnectedClientInfo *)self setConnectedClientIdentifierString:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    connectedClientIdentifierString = self->_connectedClientIdentifierString;
    if (connectedClientIdentifierString | equalCopy[1])
    {
      v6 = [(NSString *)connectedClientIdentifierString isEqual:?];
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
  v6 = [(NSString *)self->_connectedClientIdentifierString copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  connectedClientIdentifierString = self->_connectedClientIdentifierString;
  if (connectedClientIdentifierString)
  {
    [to setConnectedClientIdentifierString:connectedClientIdentifierString];
  }
}

- (void)writeTo:(id)to
{
  if (self->_connectedClientIdentifierString)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  connectedClientIdentifierString = self->_connectedClientIdentifierString;
  if (connectedClientIdentifierString)
  {
    [dictionary setObject:connectedClientIdentifierString forKey:@"connectedClientIdentifierString"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMRemoteEventRouterProtoConnectedClientInfo;
  v4 = [(HMRemoteEventRouterProtoConnectedClientInfo *)&v8 description];
  dictionaryRepresentation = [(HMRemoteEventRouterProtoConnectedClientInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end