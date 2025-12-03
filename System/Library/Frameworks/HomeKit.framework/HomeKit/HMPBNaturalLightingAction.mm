@interface HMPBNaturalLightingAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMPBNaturalLightingAction

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(HMPBNaturalLightingAction *)self setUuid:?];
    fromCopy = v5;
  }

  if (fromCopy[28])
  {
    self->_naturalLightingEnabled = fromCopy[24];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(HMPBNaturalLightingAction *)self setLightProfileUUID:?];
    fromCopy = v5;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 2))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(equalCopy + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(equalCopy + 24);
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

  if ((*(equalCopy + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  lightProfileUUID = self->_lightProfileUUID;
  if (lightProfileUUID | *(equalCopy + 1))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_naturalLightingEnabled;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSData *)self->_lightProfileUUID copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_naturalLightingEnabled;
    toCopy[28] |= 1u;
  }

  if (self->_lightProfileUUID)
  {
    [v5 setLightProfileUUID:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    naturalLightingEnabled = self->_naturalLightingEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_lightProfileUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
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
  dictionaryRepresentation = [(HMPBNaturalLightingAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end