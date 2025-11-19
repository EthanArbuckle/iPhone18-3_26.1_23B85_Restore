@interface HMMediaGroupProtoMediaGroupRole
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRole:(id)a3;
- (int)role;
- (unint64_t)hash;
- (void)clearOneofValuesForRole;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setMediaSystem:(id)a3;
- (void)setSurroundSystem:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMMediaGroupProtoMediaGroupRole

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[8])
  {
    self->_role = v4[4];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_role != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  mediaSystem = self->_mediaSystem;
  if (mediaSystem | *(v4 + 1) && ![(HMMediaGroupProtoMediaSystemRoles *)mediaSystem isEqual:?])
  {
    goto LABEL_11;
  }

  surroundSystem = self->_surroundSystem;
  if (surroundSystem | *(v4 + 3))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_role;
    *(v5 + 32) |= 1u;
  }

  v7 = [(HMMediaGroupProtoMediaSystemRoles *)self->_mediaSystem copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(HMMediaGroupProtoSurroundSystemRoles *)self->_surroundSystem copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_role;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_mediaSystem)
  {
    [v4 setMediaSystem:?];
    v4 = v5;
  }

  if (self->_surroundSystem)
  {
    [v5 setSurroundSystem:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_mediaSystem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_surroundSystem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  mediaSystem = self->_mediaSystem;
  if (mediaSystem)
  {
    v5 = [(HMMediaGroupProtoMediaSystemRoles *)mediaSystem dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"mediaSystem"];
  }

  surroundSystem = self->_surroundSystem;
  if (surroundSystem)
  {
    v7 = [(HMMediaGroupProtoSurroundSystemRoles *)surroundSystem dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"surroundSystem"];
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

    [v3 setObject:v9 forKey:@"role"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMMediaGroupProtoMediaGroupRole;
  v4 = [(HMMediaGroupProtoMediaGroupRole *)&v8 description];
  v5 = [(HMMediaGroupProtoMediaGroupRole *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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

- (int)StringAsRole:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"mediaSystem"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"surroundSystem"])
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

- (void)setSurroundSystem:(id)a3
{
  v4 = a3;
  [(HMMediaGroupProtoMediaGroupRole *)self clearOneofValuesForRole];
  *&self->_has |= 1u;
  self->_role = 2;
  surroundSystem = self->_surroundSystem;
  self->_surroundSystem = v4;
}

- (void)setMediaSystem:(id)a3
{
  v4 = a3;
  [(HMMediaGroupProtoMediaGroupRole *)self clearOneofValuesForRole];
  *&self->_has |= 1u;
  self->_role = 1;
  mediaSystem = self->_mediaSystem;
  self->_mediaSystem = v4;
}

@end