@interface HMMediaGroupProtoSurroundSystemRoles
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMMediaGroupProtoSurroundSystemRoles

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(HMMediaGroupProtoSurroundSystemRoles *)self setFrontLeftDestinationIdentifier:?];
  }

  if (fromCopy[2])
  {
    [(HMMediaGroupProtoSurroundSystemRoles *)self setFrontRightDestinationIdentifier:?];
  }

  if (fromCopy[3])
  {
    [(HMMediaGroupProtoSurroundSystemRoles *)self setRearLeftDestinationIdentifier:?];
  }

  if (fromCopy[4])
  {
    [(HMMediaGroupProtoSurroundSystemRoles *)self setRearRightDestinationIdentifier:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_frontLeftDestinationIdentifier hash];
  v4 = [(NSString *)self->_frontRightDestinationIdentifier hash]^ v3;
  v5 = [(NSString *)self->_rearLeftDestinationIdentifier hash];
  return v4 ^ v5 ^ [(NSString *)self->_rearRightDestinationIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((frontLeftDestinationIdentifier = self->_frontLeftDestinationIdentifier, !(frontLeftDestinationIdentifier | equalCopy[1])) || -[NSString isEqual:](frontLeftDestinationIdentifier, "isEqual:")) && ((frontRightDestinationIdentifier = self->_frontRightDestinationIdentifier, !(frontRightDestinationIdentifier | equalCopy[2])) || -[NSString isEqual:](frontRightDestinationIdentifier, "isEqual:")) && ((rearLeftDestinationIdentifier = self->_rearLeftDestinationIdentifier, !(rearLeftDestinationIdentifier | equalCopy[3])) || -[NSString isEqual:](rearLeftDestinationIdentifier, "isEqual:")))
  {
    rearRightDestinationIdentifier = self->_rearRightDestinationIdentifier;
    if (rearRightDestinationIdentifier | equalCopy[4])
    {
      v9 = [(NSString *)rearRightDestinationIdentifier isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_frontLeftDestinationIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_frontRightDestinationIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_rearLeftDestinationIdentifier copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_rearRightDestinationIdentifier copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_frontLeftDestinationIdentifier)
  {
    [toCopy setFrontLeftDestinationIdentifier:?];
    toCopy = v5;
  }

  if (self->_frontRightDestinationIdentifier)
  {
    [v5 setFrontRightDestinationIdentifier:?];
    toCopy = v5;
  }

  if (self->_rearLeftDestinationIdentifier)
  {
    [v5 setRearLeftDestinationIdentifier:?];
    toCopy = v5;
  }

  if (self->_rearRightDestinationIdentifier)
  {
    [v5 setRearRightDestinationIdentifier:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_frontLeftDestinationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_frontRightDestinationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_rearLeftDestinationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_rearRightDestinationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  frontLeftDestinationIdentifier = self->_frontLeftDestinationIdentifier;
  if (frontLeftDestinationIdentifier)
  {
    [dictionary setObject:frontLeftDestinationIdentifier forKey:@"frontLeftDestinationIdentifier"];
  }

  frontRightDestinationIdentifier = self->_frontRightDestinationIdentifier;
  if (frontRightDestinationIdentifier)
  {
    [v4 setObject:frontRightDestinationIdentifier forKey:@"frontRightDestinationIdentifier"];
  }

  rearLeftDestinationIdentifier = self->_rearLeftDestinationIdentifier;
  if (rearLeftDestinationIdentifier)
  {
    [v4 setObject:rearLeftDestinationIdentifier forKey:@"rearLeftDestinationIdentifier"];
  }

  rearRightDestinationIdentifier = self->_rearRightDestinationIdentifier;
  if (rearRightDestinationIdentifier)
  {
    [v4 setObject:rearRightDestinationIdentifier forKey:@"rearRightDestinationIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMMediaGroupProtoSurroundSystemRoles;
  v4 = [(HMMediaGroupProtoSurroundSystemRoles *)&v8 description];
  dictionaryRepresentation = [(HMMediaGroupProtoSurroundSystemRoles *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end