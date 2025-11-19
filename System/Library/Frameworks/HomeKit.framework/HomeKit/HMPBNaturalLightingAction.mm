@interface HMPBNaturalLightingAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMPBNaturalLightingAction

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(HMPBNaturalLightingAction *)self setUuid:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_naturalLightingEnabled = v4[24];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(HMPBNaturalLightingAction *)self setLightProfileUUID:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_uuid hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_naturalLightingEnabled;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSData *)self->_lightProfileUUID hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 2))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(v4 + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v4 + 24);
  if (!self->_naturalLightingEnabled)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  lightProfileUUID = self->_lightProfileUUID;
  if (lightProfileUUID | *(v4 + 1))
  {
    v8 = [(NSData *)lightProfileUUID isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_naturalLightingEnabled;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSData *)self->_lightProfileUUID copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_naturalLightingEnabled;
    v4[28] |= 1u;
  }

  if (self->_lightProfileUUID)
  {
    [v5 setLightProfileUUID:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    naturalLightingEnabled = self->_naturalLightingEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_lightProfileUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_naturalLightingEnabled];
    [v4 setObject:v6 forKey:@"naturalLightingEnabled"];
  }

  lightProfileUUID = self->_lightProfileUUID;
  if (lightProfileUUID)
  {
    [v4 setObject:lightProfileUUID forKey:@"lightProfileUUID"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBNaturalLightingAction;
  v4 = [(HMPBNaturalLightingAction *)&v8 description];
  v5 = [(HMPBNaturalLightingAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end