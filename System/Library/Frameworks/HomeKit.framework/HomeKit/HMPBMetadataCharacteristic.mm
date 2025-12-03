@interface HMPBMetadataCharacteristic
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation HMPBMetadataCharacteristic

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((uuidStr = self->_uuidStr, !(uuidStr | equalCopy[2])) || -[NSString isEqual:](uuidStr, "isEqual:")))
  {
    chrDescription = self->_chrDescription;
    if (chrDescription | equalCopy[1])
    {
      v7 = [(NSString *)chrDescription isEqual:?];
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
  v6 = [(NSString *)self->_uuidStr copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_chrDescription copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uuidStr)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_chrDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uuidStr = self->_uuidStr;
  if (uuidStr)
  {
    [dictionary setObject:uuidStr forKey:@"uuidStr"];
  }

  chrDescription = self->_chrDescription;
  if (chrDescription)
  {
    [v4 setObject:chrDescription forKey:@"chrDescription"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBMetadataCharacteristic;
  v4 = [(HMPBMetadataCharacteristic *)&v8 description];
  dictionaryRepresentation = [(HMPBMetadataCharacteristic *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end