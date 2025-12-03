@interface HMPBCharacteristicWriteAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMPBCharacteristicWriteAction

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(HMPBCharacteristicWriteAction *)self setActionUUID:?];
    fromCopy = v7;
  }

  if (fromCopy[3])
  {
    [(HMPBCharacteristicWriteAction *)self setTargetValue:?];
    fromCopy = v7;
  }

  characteristicReference = self->_characteristicReference;
  v6 = fromCopy[2];
  if (characteristicReference)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    characteristicReference = [(HMPBCharacteristicReference *)characteristicReference mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    characteristicReference = [(HMPBCharacteristicWriteAction *)self setCharacteristicReference:?];
  }

  fromCopy = v7;
LABEL_11:

  MEMORY[0x1EEE66BB8](characteristicReference, fromCopy);
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_actionUUID hash];
  v4 = [(NSData *)self->_targetValue hash]^ v3;
  return v4 ^ [(HMPBCharacteristicReference *)self->_characteristicReference hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((actionUUID = self->_actionUUID, !(actionUUID | equalCopy[1])) || -[NSData isEqual:](actionUUID, "isEqual:")) && ((targetValue = self->_targetValue, !(targetValue | equalCopy[3])) || -[NSData isEqual:](targetValue, "isEqual:")))
  {
    characteristicReference = self->_characteristicReference;
    if (characteristicReference | equalCopy[2])
    {
      v8 = [(HMPBCharacteristicReference *)characteristicReference isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_actionUUID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_targetValue copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(HMPBCharacteristicReference *)self->_characteristicReference copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_actionUUID)
  {
    [toCopy setActionUUID:?];
    toCopy = v5;
  }

  if (self->_targetValue)
  {
    [v5 setTargetValue:?];
    toCopy = v5;
  }

  if (self->_characteristicReference)
  {
    [v5 setCharacteristicReference:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_actionUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_targetValue)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_characteristicReference)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  actionUUID = self->_actionUUID;
  if (actionUUID)
  {
    [dictionary setObject:actionUUID forKey:@"actionUUID"];
  }

  targetValue = self->_targetValue;
  if (targetValue)
  {
    [v4 setObject:targetValue forKey:@"targetValue"];
  }

  characteristicReference = self->_characteristicReference;
  if (characteristicReference)
  {
    dictionaryRepresentation = [(HMPBCharacteristicReference *)characteristicReference dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"characteristicReference"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBCharacteristicWriteAction;
  v4 = [(HMPBCharacteristicWriteAction *)&v8 description];
  dictionaryRepresentation = [(HMPBCharacteristicWriteAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end