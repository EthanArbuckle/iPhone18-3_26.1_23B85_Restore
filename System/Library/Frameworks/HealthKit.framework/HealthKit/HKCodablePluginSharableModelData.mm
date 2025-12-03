@interface HKCodablePluginSharableModelData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodablePluginSharableModelData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodablePluginSharableModelData;
  v4 = [(HKCodablePluginSharableModelData *)&v8 description];
  dictionaryRepresentation = [(HKCodablePluginSharableModelData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  userData = self->_userData;
  if (userData)
  {
    [dictionary setObject:userData forKey:@"userData"];
  }

  sourceTimeZoneIdentifier = self->_sourceTimeZoneIdentifier;
  if (sourceTimeZoneIdentifier)
  {
    [v4 setObject:sourceTimeZoneIdentifier forKey:@"sourceTimeZoneIdentifier"];
  }

  sourceLocaleIdentifier = self->_sourceLocaleIdentifier;
  if (sourceLocaleIdentifier)
  {
    [v4 setObject:sourceLocaleIdentifier forKey:@"sourceLocaleIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_userData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_sourceTimeZoneIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sourceLocaleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_userData)
  {
    [toCopy setUserData:?];
    toCopy = v5;
  }

  if (self->_sourceTimeZoneIdentifier)
  {
    [v5 setSourceTimeZoneIdentifier:?];
    toCopy = v5;
  }

  if (self->_sourceLocaleIdentifier)
  {
    [v5 setSourceLocaleIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_userData copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_sourceTimeZoneIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_sourceLocaleIdentifier copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((userData = self->_userData, !(userData | equalCopy[3])) || -[NSData isEqual:](userData, "isEqual:")) && ((sourceTimeZoneIdentifier = self->_sourceTimeZoneIdentifier, !(sourceTimeZoneIdentifier | equalCopy[2])) || -[NSString isEqual:](sourceTimeZoneIdentifier, "isEqual:")))
  {
    sourceLocaleIdentifier = self->_sourceLocaleIdentifier;
    if (sourceLocaleIdentifier | equalCopy[1])
    {
      v8 = [(NSString *)sourceLocaleIdentifier isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(NSData *)self->_userData hash];
  v4 = [(NSString *)self->_sourceTimeZoneIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_sourceLocaleIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(HKCodablePluginSharableModelData *)self setUserData:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(HKCodablePluginSharableModelData *)self setSourceTimeZoneIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(HKCodablePluginSharableModelData *)self setSourceLocaleIdentifier:?];
    fromCopy = v5;
  }
}

@end