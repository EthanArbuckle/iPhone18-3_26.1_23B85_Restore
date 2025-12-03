@interface HMMediaGroupProtoMediaSystemRoles
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMMediaGroupProtoMediaSystemRoles

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(HMMediaGroupProtoMediaSystemRoles *)self setLeftDestinationIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(HMMediaGroupProtoMediaSystemRoles *)self setRightDestinationIdentifier:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((leftDestinationIdentifier = self->_leftDestinationIdentifier, !(leftDestinationIdentifier | equalCopy[1])) || -[NSString isEqual:](leftDestinationIdentifier, "isEqual:")))
  {
    rightDestinationIdentifier = self->_rightDestinationIdentifier;
    if (rightDestinationIdentifier | equalCopy[2])
    {
      v7 = [(NSString *)rightDestinationIdentifier isEqual:?];
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
  v6 = [(NSString *)self->_leftDestinationIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_rightDestinationIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_leftDestinationIdentifier)
  {
    [toCopy setLeftDestinationIdentifier:?];
    toCopy = v5;
  }

  if (self->_rightDestinationIdentifier)
  {
    [v5 setRightDestinationIdentifier:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_leftDestinationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_rightDestinationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  leftDestinationIdentifier = self->_leftDestinationIdentifier;
  if (leftDestinationIdentifier)
  {
    [dictionary setObject:leftDestinationIdentifier forKey:@"leftDestinationIdentifier"];
  }

  rightDestinationIdentifier = self->_rightDestinationIdentifier;
  if (rightDestinationIdentifier)
  {
    [v4 setObject:rightDestinationIdentifier forKey:@"rightDestinationIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMMediaGroupProtoMediaSystemRoles;
  v4 = [(HMMediaGroupProtoMediaSystemRoles *)&v8 description];
  dictionaryRepresentation = [(HMMediaGroupProtoMediaSystemRoles *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end