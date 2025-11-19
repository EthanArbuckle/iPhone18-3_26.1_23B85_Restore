@interface HKCodablePluginSharableModelData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodablePluginSharableModelData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodablePluginSharableModelData;
  v4 = [(HKCodablePluginSharableModelData *)&v8 description];
  v5 = [(HKCodablePluginSharableModelData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  userData = self->_userData;
  if (userData)
  {
    [v3 setObject:userData forKey:@"userData"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_userData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_sourceTimeZoneIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_sourceLocaleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_userData)
  {
    [v4 setUserData:?];
    v4 = v5;
  }

  if (self->_sourceTimeZoneIdentifier)
  {
    [v5 setSourceTimeZoneIdentifier:?];
    v4 = v5;
  }

  if (self->_sourceLocaleIdentifier)
  {
    [v5 setSourceLocaleIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_userData copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_sourceTimeZoneIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_sourceLocaleIdentifier copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((userData = self->_userData, !(userData | v4[3])) || -[NSData isEqual:](userData, "isEqual:")) && ((sourceTimeZoneIdentifier = self->_sourceTimeZoneIdentifier, !(sourceTimeZoneIdentifier | v4[2])) || -[NSString isEqual:](sourceTimeZoneIdentifier, "isEqual:")))
  {
    sourceLocaleIdentifier = self->_sourceLocaleIdentifier;
    if (sourceLocaleIdentifier | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(HKCodablePluginSharableModelData *)self setUserData:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(HKCodablePluginSharableModelData *)self setSourceTimeZoneIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(HKCodablePluginSharableModelData *)self setSourceLocaleIdentifier:?];
    v4 = v5;
  }
}

@end