@interface HMMediaGroupProtoSurroundSystemRoles
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMMediaGroupProtoSurroundSystemRoles

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(HMMediaGroupProtoSurroundSystemRoles *)self setFrontLeftDestinationIdentifier:?];
  }

  if (v4[2])
  {
    [(HMMediaGroupProtoSurroundSystemRoles *)self setFrontRightDestinationIdentifier:?];
  }

  if (v4[3])
  {
    [(HMMediaGroupProtoSurroundSystemRoles *)self setRearLeftDestinationIdentifier:?];
  }

  if (v4[4])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((frontLeftDestinationIdentifier = self->_frontLeftDestinationIdentifier, !(frontLeftDestinationIdentifier | v4[1])) || -[NSString isEqual:](frontLeftDestinationIdentifier, "isEqual:")) && ((frontRightDestinationIdentifier = self->_frontRightDestinationIdentifier, !(frontRightDestinationIdentifier | v4[2])) || -[NSString isEqual:](frontRightDestinationIdentifier, "isEqual:")) && ((rearLeftDestinationIdentifier = self->_rearLeftDestinationIdentifier, !(rearLeftDestinationIdentifier | v4[3])) || -[NSString isEqual:](rearLeftDestinationIdentifier, "isEqual:")))
  {
    rearRightDestinationIdentifier = self->_rearRightDestinationIdentifier;
    if (rearRightDestinationIdentifier | v4[4])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_frontLeftDestinationIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_frontRightDestinationIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_rearLeftDestinationIdentifier copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_rearRightDestinationIdentifier copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_frontLeftDestinationIdentifier)
  {
    [v4 setFrontLeftDestinationIdentifier:?];
    v4 = v5;
  }

  if (self->_frontRightDestinationIdentifier)
  {
    [v5 setFrontRightDestinationIdentifier:?];
    v4 = v5;
  }

  if (self->_rearLeftDestinationIdentifier)
  {
    [v5 setRearLeftDestinationIdentifier:?];
    v4 = v5;
  }

  if (self->_rearRightDestinationIdentifier)
  {
    [v5 setRearRightDestinationIdentifier:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_frontLeftDestinationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_frontRightDestinationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_rearLeftDestinationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_rearRightDestinationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  frontLeftDestinationIdentifier = self->_frontLeftDestinationIdentifier;
  if (frontLeftDestinationIdentifier)
  {
    [v3 setObject:frontLeftDestinationIdentifier forKey:@"frontLeftDestinationIdentifier"];
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
  v5 = [(HMMediaGroupProtoSurroundSystemRoles *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end