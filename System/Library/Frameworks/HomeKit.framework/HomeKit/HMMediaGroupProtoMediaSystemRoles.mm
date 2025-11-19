@interface HMMediaGroupProtoMediaSystemRoles
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMMediaGroupProtoMediaSystemRoles

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(HMMediaGroupProtoMediaSystemRoles *)self setLeftDestinationIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(HMMediaGroupProtoMediaSystemRoles *)self setRightDestinationIdentifier:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((leftDestinationIdentifier = self->_leftDestinationIdentifier, !(leftDestinationIdentifier | v4[1])) || -[NSString isEqual:](leftDestinationIdentifier, "isEqual:")))
  {
    rightDestinationIdentifier = self->_rightDestinationIdentifier;
    if (rightDestinationIdentifier | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_leftDestinationIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_rightDestinationIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_leftDestinationIdentifier)
  {
    [v4 setLeftDestinationIdentifier:?];
    v4 = v5;
  }

  if (self->_rightDestinationIdentifier)
  {
    [v5 setRightDestinationIdentifier:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_leftDestinationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_rightDestinationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  leftDestinationIdentifier = self->_leftDestinationIdentifier;
  if (leftDestinationIdentifier)
  {
    [v3 setObject:leftDestinationIdentifier forKey:@"leftDestinationIdentifier"];
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
  v5 = [(HMMediaGroupProtoMediaSystemRoles *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end