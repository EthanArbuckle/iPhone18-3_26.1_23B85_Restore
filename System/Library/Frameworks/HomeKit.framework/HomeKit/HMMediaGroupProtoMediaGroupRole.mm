@interface HMMediaGroupProtoMediaGroupRole
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRole:(id)role;
- (int)role;
- (unint64_t)hash;
- (void)clearOneofValuesForRole;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setMediaSystem:(id)system;
- (void)setSurroundSystem:(id)system;
- (void)writeTo:(id)to;
@end

@implementation HMMediaGroupProtoMediaGroupRole

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[8])
  {
    self->_role = fromCopy[4];
    *&self->_has |= 1u;
  }

  mediaSystem = self->_mediaSystem;
  v7 = *(v5 + 1);
  v10 = v5;
  if (mediaSystem)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(HMMediaGroupProtoMediaSystemRoles *)mediaSystem mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(HMMediaGroupProtoMediaGroupRole *)self setMediaSystem:?];
  }

  v5 = v10;
LABEL_9:
  surroundSystem = self->_surroundSystem;
  v9 = *(v5 + 3);
  if (surroundSystem)
  {
    if (v9)
    {
      [(HMMediaGroupProtoSurroundSystemRoles *)surroundSystem mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(HMMediaGroupProtoMediaGroupRole *)self setSurroundSystem:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_role;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HMMediaGroupProtoMediaSystemRoles *)self->_mediaSystem hash]^ v3;
  return v4 ^ [(HMMediaGroupProtoSurroundSystemRoles *)self->_surroundSystem hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_role != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  mediaSystem = self->_mediaSystem;
  if (mediaSystem | *(equalCopy + 1) && ![(HMMediaGroupProtoMediaSystemRoles *)mediaSystem isEqual:?])
  {
    goto LABEL_11;
  }

  surroundSystem = self->_surroundSystem;
  if (surroundSystem | *(equalCopy + 3))
  {
    v8 = [(HMMediaGroupProtoSurroundSystemRoles *)surroundSystem isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_role;
    *(v5 + 32) |= 1u;
  }

  v7 = [(HMMediaGroupProtoMediaSystemRoles *)self->_mediaSystem copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(HMMediaGroupProtoSurroundSystemRoles *)self->_surroundSystem copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_role;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_mediaSystem)
  {
    [toCopy setMediaSystem:?];
    toCopy = v5;
  }

  if (self->_surroundSystem)
  {
    [v5 setSurroundSystem:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_mediaSystem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_surroundSystem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  mediaSystem = self->_mediaSystem;
  if (mediaSystem)
  {
    dictionaryRepresentation = [(HMMediaGroupProtoMediaSystemRoles *)mediaSystem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"mediaSystem"];
  }

  surroundSystem = self->_surroundSystem;
  if (surroundSystem)
  {
    dictionaryRepresentation2 = [(HMMediaGroupProtoSurroundSystemRoles *)surroundSystem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"surroundSystem"];
  }

  if (*&self->_has)
  {
    role = self->_role;
    if (role >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_role];
    }

    else
    {
      v9 = off_1E7546988[role];
    }

    [dictionary setObject:v9 forKey:@"role"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMMediaGroupProtoMediaGroupRole;
  v4 = [(HMMediaGroupProtoMediaGroupRole *)&v8 description];
  dictionaryRepresentation = [(HMMediaGroupProtoMediaGroupRole *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)clearOneofValuesForRole
{
  *&self->_has &= ~1u;
  self->_role = 0;
  mediaSystem = self->_mediaSystem;
  self->_mediaSystem = 0;

  surroundSystem = self->_surroundSystem;
  self->_surroundSystem = 0;
}

- (int)StringAsRole:(id)role
{
  roleCopy = role;
  if ([roleCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([roleCopy isEqualToString:@"mediaSystem"])
  {
    v4 = 1;
  }

  else if ([roleCopy isEqualToString:@"surroundSystem"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)role
{
  if (*&self->_has)
  {
    return self->_role;
  }

  else
  {
    return 0;
  }
}

- (void)setSurroundSystem:(id)system
{
  systemCopy = system;
  [(HMMediaGroupProtoMediaGroupRole *)self clearOneofValuesForRole];
  *&self->_has |= 1u;
  self->_role = 2;
  surroundSystem = self->_surroundSystem;
  self->_surroundSystem = systemCopy;
}

- (void)setMediaSystem:(id)system
{
  systemCopy = system;
  [(HMMediaGroupProtoMediaGroupRole *)self clearOneofValuesForRole];
  *&self->_has |= 1u;
  self->_role = 1;
  mediaSystem = self->_mediaSystem;
  self->_mediaSystem = systemCopy;
}

@end