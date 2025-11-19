@interface HMPBCharacteristicWriteAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMPBCharacteristicWriteAction

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[1])
  {
    [(HMPBCharacteristicWriteAction *)self setActionUUID:?];
    v4 = v7;
  }

  if (v4[3])
  {
    [(HMPBCharacteristicWriteAction *)self setTargetValue:?];
    v4 = v7;
  }

  characteristicReference = self->_characteristicReference;
  v6 = v4[2];
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

  v4 = v7;
LABEL_11:

  MEMORY[0x1EEE66BB8](characteristicReference, v4);
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_actionUUID hash];
  v4 = [(NSData *)self->_targetValue hash]^ v3;
  return v4 ^ [(HMPBCharacteristicReference *)self->_characteristicReference hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((actionUUID = self->_actionUUID, !(actionUUID | v4[1])) || -[NSData isEqual:](actionUUID, "isEqual:")) && ((targetValue = self->_targetValue, !(targetValue | v4[3])) || -[NSData isEqual:](targetValue, "isEqual:")))
  {
    characteristicReference = self->_characteristicReference;
    if (characteristicReference | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_actionUUID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_targetValue copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(HMPBCharacteristicReference *)self->_characteristicReference copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_actionUUID)
  {
    [v4 setActionUUID:?];
    v4 = v5;
  }

  if (self->_targetValue)
  {
    [v5 setTargetValue:?];
    v4 = v5;
  }

  if (self->_characteristicReference)
  {
    [v5 setCharacteristicReference:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_actionUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_targetValue)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_characteristicReference)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  actionUUID = self->_actionUUID;
  if (actionUUID)
  {
    [v3 setObject:actionUUID forKey:@"actionUUID"];
  }

  targetValue = self->_targetValue;
  if (targetValue)
  {
    [v4 setObject:targetValue forKey:@"targetValue"];
  }

  characteristicReference = self->_characteristicReference;
  if (characteristicReference)
  {
    v8 = [(HMPBCharacteristicReference *)characteristicReference dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"characteristicReference"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBCharacteristicWriteAction;
  v4 = [(HMPBCharacteristicWriteAction *)&v8 description];
  v5 = [(HMPBCharacteristicWriteAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end